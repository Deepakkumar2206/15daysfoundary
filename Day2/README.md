# Day 2 - Greeting Contract and Deployment Process

## Project Setup

### Initialise Foundry project

```shell
$ forge init
```

### Start local Ethereum node using Anvil
```shell
$ anvil
```
#### This runs a local Ethereum RPC node on http://127.0.0.1:8545 for testing and deployment.

### Compile the smart contract 
```shell
$ forge build
```
### Deploying the Contract
```shell
$ forge create Greeting --interactive --broadcast
```

### Interacting with the Contract using cast
#### Read data (getInfo())
```shell
$ cast call 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "getInfo()" --rpc-url http://127.0.0.1:8545
```

#### Write data (setInfo(string,string))
```shell
$ cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "setInfo(string,string)" "Deepak" "Blockchain dev" \
  --private-key <YOUR_PRIVATE_KEY> --rpc-url http://127.0.0.1:8545
```

#### Clearing data (clearInfo())
```shell
$ cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "clearInfo()" \
  --private-key <YOUR_PRIVATE_KEY> --rpc-url http://127.0.0.1:8545
```

##### Verify it is cleared: 
```shell
$ cast call 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "getInfo()(string,string)" --rpc-url http://127.0.0.1:8545
```

## This completes Day 2 of the project
