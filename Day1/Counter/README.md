# Foundary 

## Set up Foundry, build & deploy a Counter contract, and interact with it on a local Anvil node.

### 1. Install Foundry
```shell
curl -L https://foundry.paradigm.xyz | bash
source ~/.bashrc
foundryup
```

### 2. Create a New Project
```shell
forge init Counter
cd Counter
```

### 3. Build & Test Contracts
```shell
forge build
forge test
forge test --fork-url https://reth-ethereum.ithaca.xyz/rpc
```

### 4. Start Local Node with Anvil
```shell
anvil
```
### 5. Deploy Contract Locally
```shell
export PRIVATE_KEY="0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80"

forge script script/Counter.s.sol \
  --rpc-url http://127.0.0.1:8545 \
  --broadcast \
  --private-key $PRIVATE_KEY
```
### 6. Interact with the Contract using Cast

```shell
# Read value
cast call <CONTRACT_ADDRESS> "count()(uint256)" \
  --rpc-url http://127.0.0.1:8545

# Increment
cast send <CONTRACT_ADDRESS> "increment()" \
  --private-key $PRIVATE_KEY \
  --rpc-url http://127.0.0.1:8545

# Decrement
cast send <CONTRACT_ADDRESS> "decrement()" \
  --private-key $PRIVATE_KEY \
  --rpc-url http://127.0.0.1:8545

# Reset
cast send <CONTRACT_ADDRESS> "reset()" \
  --private-key $PRIVATE_KEY \
  --rpc-url http://127.0.0.1:8545
```

## End of the project 

