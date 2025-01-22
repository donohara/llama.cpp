#!/bin/bash

# Constants
BASE_DIR="/Users/donohara/Data/50_HU/llama_models"
MODEL_NAME="distilgpt2" # Replace with the desired model name
#OUTPUT_DIR="$HOME/llama_models/$MODEL_NAME"
OUTPUT_DIR="$BASE_DIR/$MODEL_NAME"

# Base URL for Hugging Face
BASE_URL="https://huggingface.co/$MODEL_NAME/resolve/main"

# Files to Download
FILES=(
    "pytorch_model.bin"
    "config.json"
    "tokenizer.json"
    "vocab.json"
    "merges.txt"
)

# Create Output Directory
mkdir -p "$OUTPUT_DIR"

# Download Files
echo "Downloading model files for $MODEL_NAME to $OUTPUT_DIR..."
for FILE in "${FILES[@]}"; do
    echo "Downloading $FILE..."
    wget -q --report-speed=bits --show-progress "$BASE_URL/$FILE" -O "$OUTPUT_DIR/$FILE"
    if [[ $? -ne 0 ]]; then
        echo "Failed to download $FILE. Please check the URL or your internet connection."
        exit 1
    fi
done

echo "All files downloaded successfully to $OUTPUT_DIR."
