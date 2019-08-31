#!/bin/bash
set -e

echo "coreservices-sftp package script running."

REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"  # project folder
echo "REPO_DIR=${REPO_DIR}"
STAGING_DIR="${REPO_DIR}/_staging"
echo "STAGING_DIR=${STAGING_DIR}" # Debug.

# Setup, cleanup.
cd $REPO_DIR
mkdir -p $STAGING_DIR # Eventual deployspec package contents.
rm -rf $STAGING_DIR/*

# Copy this branch's deployspec and CFN templates into staging folder.
cp -pr $REPO_DIR/*.yaml $STAGING_DIR/

echo "coreservices-sftp package step complete, run.sh can be executed now."
