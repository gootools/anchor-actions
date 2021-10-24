#!/bin/sh -l

yarn install
solana-keygen new --no-bip39-passphrase --silent
anchor test --provider.wallet /github/home/.config/solana/id.json
