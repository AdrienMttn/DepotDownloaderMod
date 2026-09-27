#!/bin/bash
# set -e

# Restore dependencies
cd ../DepotDownloader
dotnet restore
# Build in Release mode
dotnet build -c Release

# Publish (self-contained or framework-dependent)
dotnet publish -c Release -o publish/


# Create release archive
cd publish
zip -r ../DepotDownloaderMod.zip .
cd ..
