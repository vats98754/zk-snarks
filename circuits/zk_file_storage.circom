
template ZkFileStorage() {
    signal private input fileHash;
    signal public input validHash;
    require(fileHash === validHash);
}

component main = ZkFileStorage();
