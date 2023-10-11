
include "../circuits/zk_voting.circom";

component main = ZkVoting();

main.userCredentialHash <== 12345678;
main.isEligible <== 1;
main.voteOption <== 1;
main.validCredentialHash1 <== 12345678;
main.validCredentialHash2 <== 87654321;
