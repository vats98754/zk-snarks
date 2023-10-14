include "zk_voting.circom";

component main = ZkVoting();

// Dummy test for a valid user
main.userCredentialHash <== 12345678;  // Some hashed value
main.isEligible <== 1;
main.voteOption <== 1;
main.validCredentialHash1 <== 12345678;  // Matching hash
main.validCredentialHash2 <== 87654321;  // Non-matching hash
