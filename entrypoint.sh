#!/bin/sh -l

yarn install
solana-keygen new --no-bip39-passphrase --silent
npx @project-serum/anchor-cli@0.17.0 test
