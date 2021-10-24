#!/bin/sh -l

pwd
ls
yarn install
solana-keygen new --no-bip39-passphrase --silent
anchor test
