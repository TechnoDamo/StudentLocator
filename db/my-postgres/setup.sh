#!/bin/bash

set -e  # exit on error

REPO_URL="https://github.com/yourname/my-postgres.git"
PROJECT_DIR="~/my-postgres"

echo "📦 Cloning Postgres setup repo..."
if [ -d "$PROJECT_DIR" ]; then
  echo "🔄 Updating existing repo..."
  cd "$PROJECT_DIR"
  git pull
else
  git clone "$REPO_URL"
  cd "$PROJECT_DIR"
fi


echo "🚀 Starting PostgreSQL container..."
docker-compose up -d

echo "✅ Done! Postgres should be running on port 5432."

