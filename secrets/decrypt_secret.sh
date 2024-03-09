#!/bin/sh

# Decrypt the file
mkdir $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$GCP_SECRET_PASSPHRASE" \
--output $HOME/secrets/gcp_secret.json ./secrets/encrypted_key_file_gcp.gpg
