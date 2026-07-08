#!/usr/bin/bash
# What is the total output value of this partially signed transaction in satoshis
raw_transaction=cHNidP8BAHsCAAAAAhuVpgVRdOxkuC7wW2rvw4800OVxl+QCgezYKHtCYN7GAQAAAAD/////HPTH9wFgyf4iQ2xw4DIDP8t9IjCePWDjhqgs8fXvSIcAAAAAAP////8BigIAAAAAAAAWABTHctb5VULhHvEejvx8emmDCtOKBQAAAAAAAAAA

bitcoin-cli -regtest decodepsbt "$raw_transaction" | jq '.tx.vout | map(.value * 100000000) | add'
