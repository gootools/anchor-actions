#!/bin/sh -l

yarn install --production=false --frozen-lockfile
solana-keygen new --no-bip39-passphrase --silent
anchor test
