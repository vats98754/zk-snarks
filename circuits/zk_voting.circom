
template ZkVoting() {
    signal private input userCredentialHash;
    signal private input isEligible;
    signal private input voteOption;
    signal public input validCredentialHash1;
    signal public input validCredentialHash2;

    signal validVote;
    validVote <== (userCredentialHash === validCredentialHash1 || userCredentialHash === validCredentialHash2) && isEligible;
    require(voteOption === 1 || voteOption === 2);
}

component main = ZkVoting();
