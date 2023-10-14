pragma solidity ^0.8.0;

import "libsnark-verification.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";

contract ZkFileStorage {
    using LibsnarkVerification for LibsnarkVerification.Proof;
    using SafeMath for uint256;

    address public verifier;
    address private admin;

    // Store hashes of proofs to prevent double submission
    mapping(bytes32 => bool) public submittedProofs;

    event FileProofRegistered(address indexed user, bytes32 fileHash);

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

    function submitFileProof(LibsnarkVerification.Proof memory proof, bytes32 fileHash) public {
        bytes32 proofHash = keccak256(abi.encodePacked(proof));
        require(!submittedProofs[proofHash], "Proof already submitted");
        require(verifier.verifyProof(proof), "Invalid zk-SNARK proof");
        
        // Mark the proof as submitted
        submittedProofs[proofHash] = true;

        emit FileProofRegistered(msg.sender, fileHash);
    }
}
