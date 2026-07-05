#!/usr/bin/bash
# Create a native segwit address and get the public key from the address.
WALLET="builderswallet"
SEGWIT_ADDR=$(bitcoin-cli -regtest -rpcwallet="$WALLET" getnewaddress "" bech32)
bitcoin-cli -regtest -rpcwallet="$WALLET" getaddressinfo "$SEGWIT_ADDR" | jq -r '.pubkey'

