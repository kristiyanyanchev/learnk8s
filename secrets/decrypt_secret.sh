#!/bin/sh

# Decrypt the file
cd $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$GCP_SECRET_PASSPHRASE" \
--output $HOME/secrets/gcp_secret.json encrypted_key_file_gcp.gpg
