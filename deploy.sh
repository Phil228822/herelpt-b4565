#!/bin/bash
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh" 2>/dev/null

echo "🚀 Deploying to Cloudflare Pages..."
cd "$(dirname "$0")"
if npx wrangler pages deploy . --project-name herelpt --branch main --commit-dirty=true; then
  echo "✅ Done! Live at https://herelpt.pages.dev"
else
  echo "❌ Deploy FAILED — nothing was published. See the error above."
  exit 1
fi
