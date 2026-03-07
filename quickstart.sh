#!/bin/bash
# OpenClaw Quick Start Script
# AiFusionX — aifusionx.io

echo "🤖 Starting OpenClaw Zero Dollar Employee Setup..."
echo ""

# Check Docker
if ! command -v docker &> /dev/null; then
    echo "❌ Docker not found. Install from https://docker.com"
    exit 1
fi

echo "✅ Docker found"

# Pull and run OpenClaw
echo "📦 Pulling OpenClaw..."
docker run -it --pull=always \
  -v openclaw-data:/data \
  ghcr.io/openclaw/openclaw:latest

echo ""
echo "✅ OpenClaw running!"
echo ""
echo "Next steps:"
echo "1. Get free Gemini API key: https://aistudio.google.com"
echo "2. Copy a SOUL.md template from souls/ folder"  
echo "3. Paste your Gumroad link into the SOUL"
echo "4. Start making money 🚀"
echo ""
echo "Full guide: https://clickingdee.gumroad.com/l/eibbyk"
