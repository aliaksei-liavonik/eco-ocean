#!/bin/bash

# Check for Homebrew installation
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Please install Homebrew first."
    exit 1
fi

# Tap the required Homebrew repository
if ! brew tap | grep -q leancodepl/poe2arb; then
    echo "Tapping leancodepl/poe2arb..."
    brew tap leancodepl/poe2arb
fi

# Install poe2arb if not installed
if ! command -v poe2arb &> /dev/null; then
    echo "poe2arb not found. Installing poe2arb with Homebrew..."
    brew install poe2arb
fi

# Check for POEDITOR_TOKEN environment variable
if [ -z "$ECO_OCEAN_POEDITOR_TOKEN" ]; then
    echo "ECO_OCEAN_POEDITOR_TOKEN environment variable is not set. Please set ECO_OCEAN_POEDITOR_TOKEN first."
    exit 1
fi

# Run poe2arb to fetch translations
echo "Running poe2arb to fetch translations..."
poe2arb poe -p 674737 -t "$ECO_OCEAN_POEDITOR_TOKEN"  -o lib/src

# Generate l10n dart files
echo "Generating l10n dart files..."
flutter gen-l10n
