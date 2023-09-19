#!/bin/bash

phoenix_program="PhoeNiXZ8ByJGLkxNfZRnkUfjvmuYqLR89jjFHGqdXY"

# Sol/USDC
sol_usdc_market="4DoNfFBfF7UokCC2FQzriy7yHK6DY6NVdYpuekQ5pRgg"
sol_usdc_base_vault="3HSYXeGc3LjEPCuzoNDjQN37F1ebsSiR4CqXVqQCdekZ"
sol_usdc_quote_vault="8g4Z9d6PqGkgH31tMW6FwxGhwYJrXpxZHQrkikpLJKrG"

# mSOL/SOL
msol_sol_market="FZRgpfpvicJ3p23DfmZuvUgcQZBHJsWScTf2N2jK8dy6"
msol_sol_base_vault="9Zdp9hUEfJ6wD4UbVrTKTbMhXtTzLqsvmAQrNzMCdNAF"
msol_sol_quote_vault="Cifqo1b2UUNpfbuA66kft5vweshNtqbaj14UYVKBpQVf"

# JitoSOL/SOL
jitosol_sol_market="2t9TBYyUyovhHQq434uAiBxW6DmJCg7w4xdDoSK6LRjP"
jitosol_sol_base_vault="51LAUnnqk8PTPribSTRb5rmF867dz5mEQbpxfk13Nu1C"
jitosol_sol_quote_vault="AzPnm9Vm4TZxYG2XEqspncfNzv9dxG9qKy2d4yqToVUi"

# URL for the Solana network you want to use
network_url="mainnet-beta"

# Run the solana-test-validator command with the specified options
solana-test-validator --bpf-program target/deploy/phoenix-keypair.json target/deploy/phoenix.so --clone "$phoenix_program" --clone "$sol_usdc_market" --clone "$sol_usdc_base_vault" --clone "$sol_usdc_quote_vault" --clone "$msol_sol_market" --clone "$msol_sol_base_vault" --clone "$msol_sol_quote_vault" --clone "$jitosol_sol_market" --clone "$jitosol_sol_base_vault" --clone "$jitosol_sol_quote_vault" --url "$network_url" --reset
