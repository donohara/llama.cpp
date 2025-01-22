MODEL_DIR="/Users/donohara/.lmstudio/models/RichardErkhov/distilbert_-_distilgpt2-gguf"
MODEL_NAME="distilgpt2.Q4_0.gguf"
PROJECT_DIR="/Users/donohara/Data/50_HU/_github/llama.cpp"

#LLAMA_CPP="$PROJECT_DIR/build-mac-optimized-debug/bin/llama-cli"
LLAMA_CPP="$PROJECT_DIR/build-mac-optimized-debug/bin/llama-server"

#CMD="$LLAMA_CPP --model $MODEL_DIR/$MODEL_NAME --prompt \"Hello, world!\" --n-predict 100 --ctx_size 256 --threads 1"
CMD="$LLAMA_CPP --model $MODEL_DIR/$MODEL_NAME --n-predict 100 --ctx_size 2048 --threads 8 --verbose-prompt"

echo $CMD
eval $CMD