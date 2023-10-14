pragma solidity ^0.8.0;

import "libsnark-verification.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";

contract ZkIdentityVerification {
    using LibsnarkVerification for LibsnarkVerification.Proof;
    using SafeMath for uint256;

    address public verifier;
    address private admin;

    // Store hashes of proofs to prevent double submission
    mapping(bytes32 => bool) public submittedProofs;

    event IdentityVerified(address indexed user, bytes32 attributeHash);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Not authorized");
        _;
    }

    constructor(address _verifier) {
        verifier = _verifier;
        admin = msg.sender;
    }

    function setVerifier(address _verifier) external onlyAdmin {
        verifier = _verifier;
    }

    function submitIdentityProof(LibsnarkVerification.Proof memory proof, bytes32 attributeHash) public {
        bytes32 proofHash = keccak256(abi.encodePacked(proof));
        require(!submittedProofs[proofHash], "Proof already submitted");
        require(verifier.verifyProof(proof), "Invalid zk-SNARK proof");
        
        // Mark the proof as submitted
        submittedProofs[proofHash] = true;

        emit IdentityVerified(msg.sender, attributeHash);
    }
}
