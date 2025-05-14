#!/bin/bash

set -e  # exit on error

REPO_URL="https://github.com/TechnoDamo/StudentLocator.git"
PROJECT_DIR="$HOME/my-postgres"

echo "📦 Cloning Postgres setup repo..."

# Clone the entire repository
if [ -d "$PROJECT_DIR" ]; then
  echo "🔄 Updating existing repo..."
  cd "$PROJECT_DIR"
  git pull
else
  git clone "$REPO_URL" "$PROJECT_DIR"
  cd "$PROJECT_DIR"
fi

# Use sparse-checkout to pull only the db/my-postgres folder
echo "🚀 Setting up sparse-checkout for db/my-postgres folder..."
git sparse-checkout init --cone
git sparse-checkout set db/my-postgres

# Navigate to the correct directory
cd db/my-postgres

# Ensure .env exists (you may want to edit this for sensitive values)
if [ ! -f ".env" ]; then
  echo "🛠️  Creating .env from template..."
  touch .env
  echo "Please edit the .env file with your DB credentials before continuing."
  cat .env
  read -p "Press ENTER after editing the .env file..." _
fi

echo "🚀 Starting PostgreSQL container..."
docker-compose up -d

echo "✅ Done! Postgres should be running on port 5432."
