
template PrivateTransaction() {
    signal private input sender;
    signal private input receiver;
    signal private input amount;
    signal public input transactionHash;

    // ... implementation of the circuit ...
}
component main = PrivateTransaction();
