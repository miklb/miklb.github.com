#!/bin/bash
set -x # Show the output of the following commands (useful for debugging)
openssl aes-256-cbc -K $encrypted_9b2ccca9e2e5_key -iv $encrypted_9b2ccca9e2e5_iv in deploy-key.enc -out deploy-key -d
rm deploy-key.enc # Don't need it anymore
chmod 600 deploy-key
mv deploy-key ~/.ssh/id_rsa
