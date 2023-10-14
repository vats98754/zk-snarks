pragma solidity ^0.8.0;

import "libsnark-verification.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";

contract ZkVoting {
    using LibsnarkVerification for LibsnarkVerification.Proof;
    using SafeMath for uint256;

    address public verifier;
    address private admin;

    // Store vote counts for options
    mapping(uint256 => uint256) public voteCounts;

    // Store hashes of proofs to prevent double voting
    mapping(bytes32 => bool) public submittedProofs;

    event VoteRegistered(uint256 indexed voteOption);

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

    function submitVote(LibsnarkVerification.Proof memory proof, uint256 voteOption) public {
        bytes32 proofHash = keccak256(abi.encodePacked(proof));
        require(!submittedProofs[proofHash], "Proof already submitted");
        require(verifier.verifyProof(proof), "Invalid zk-SNARK proof");
        
        // Increment the vote count for the selected option
        voteCounts[voteOption] = voteCounts[voteOption].add(1);

        // Mark the proof as submitted
        submittedProofs[proofHash] = true;

        emit VoteRegistered(voteOption);
    }
}
