\#!/bin/bash

set -e  # exit on error

# Docker installation function

install\_docker() {
echo "🐳 Installing Docker..."

```
if command -v docker &> /dev/null; then
    echo "✅ Docker is already installed"
else
    sudo apt-get update -qq
    sudo apt-get install -qq -y \
        ca-certificates \
        curl \
        gnupg \
        lsb-release
    
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    
    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    
    sudo apt-get update -qq
    sudo apt-get install -qq -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
    
    sudo usermod -aG docker $USER
    newgrp docker
    
    echo "✅ Docker installed successfully"
fi

# Check for docker compose (both variants)
if ! command -v docker-compose &> /dev/null && ! docker compose version &> /dev/null; then
    echo "📦 Installing docker-compose..."
    sudo apt-get install -qq -y docker-compose
fi
```

}

# PostgreSQL setup function

setup\_postgres() {
REPO\_URL="[https://github.com/TechnoDamo/StudentLocator.git](https://github.com/TechnoDamo/StudentLocator.git)"
TARGET\_DIR="\$HOME/my-postgres"
SOURCE\_DIR="db/my-postgres"

```
echo "📦 Setting up Postgres from repo..."

# Create a temporary directory
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"

# Clone just the specific folder
git init
git remote add origin "$REPO_URL"
git config core.sparseCheckout true
echo "$SOURCE_DIR" >> .git/info/sparse-checkout
git pull origin main

# Move the contents to the target directory
echo "🚀 Moving files to $TARGET_DIR..."
mkdir -p "$TARGET_DIR"
mv "$SOURCE_DIR"/* "$TARGET_DIR"
mv "$SOURCE_DIR"/.??* "$TARGET_DIR" 2>/dev/null || true  # Move hidden files

# Clean up
cd ~
rm -rf "$TEMP_DIR"

# Navigate to the target directory
cd "$TARGET_DIR"

# Create .env if needed
if [ ! -f ".env" ]; then
    echo "🛠️ Creating .env from template..."
    cat > .env <<EOL
```

# PostgreSQL environment variables

POSTGRES\_USER=postgres
POSTGRES\_PASSWORD=postgres
POSTGRES\_DB=student\_locator
EOL
echo "ℹ️ Please review/update the .env file with your credentials"
fi

```
echo "🚀 Starting PostgreSQL container..."
# Try both docker-compose variants
if command -v docker-compose &> /dev/null; then
    docker-compose up -d
elif docker compose version &> /dev/null; then
    docker compose up -d
else
    echo "❌ Error: docker-compose not found"
    exit 1
fi

echo "✅ Done! Postgres is running in $TARGET_DIR on port 5432"
```

}

# Main execution

install\_docker
setup\_postgres

echo "🎉 All done! Here's Docker info:"
docker --version
echo "Docker Compose info:"
docker-compose --version || docker compose version
thoroughly analyze
