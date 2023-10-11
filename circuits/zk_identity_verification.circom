
template ZkIdentityVerification() {
    signal private input ageHash;
    signal private input nationalityHash;
    signal public input validAgeHash;
    signal public input validNationalityHash;
    require(ageHash === validAgeHash && nationalityHash === validNationalityHash);
}

component main = ZkIdentityVerification();
