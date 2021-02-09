#!/bin/bash

curl -o setup_2^20.key https://universal-setup.ams3.digitaloceanspaces.com/setup_2%5E20.key
yarn
cargo build -p plonkit

yarn compile
yarn witness
yarn convert
