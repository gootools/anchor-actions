#!/bin/sh -l

pwd
ls
yarn install
solana-keygen new
anchor test
