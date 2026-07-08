.PHONY: all help dev deploy deploy-release stage-downloads build-desktop build-mobile clean install

# Variables
NPM := npm
NODE := node
PLATFORM := $(shell node -e "console.log(process.platform)")

# Default target: build desktop app for current platform
all: build-desktop ## Build all artifacts for current platform

help: ## Show help for commands
	@echo Available commands:
	@echo.
	@echo Development:
	@echo   make dev              - Run application in development mode (Next.js)
	@echo   make electron-dev     - Run Electron application in development mode
	@echo.
	@echo Build:
	@echo   make build            - Build Next.js application for production
	@echo   make build-desktop    - Build desktop application (Electron)
	@echo   make build-desktop-win - Build desktop application for Windows
	@echo   make build-desktop-linux - Build desktop application for Linux
	@echo   make build-desktop-mac - Build desktop application for macOS
	@echo.
	@echo Mobile (Capacitor):
	@echo   make build-mobile       - Build web assets and sync Capacitor
	@echo   make build-mobile-android - Open Android Studio project
	@echo   make build-mobile-ios   - Open Xcode project (macOS only)
	@echo.
	@echo Deploy:
	@echo   make deploy           - Deploy prebuilt static site to Vercel (local)
	@echo   make deploy-release   - Info: full release+deploy via GitHub Actions (push v* tag)
	@echo   make stage-downloads  - Copy release artifacts to public/downloads (VERSION=x.y.z)
	@echo.
	@echo Clean:
	@echo   make clean            - Clean all build artifacts
	@echo   make clean-dist       - Clean only dist/
	@echo   make clean-release    - Clean only release/
	@echo.
	@echo Utilities:
	@echo   make install          - Install dependencies
	@echo   make lint             - Run linter

# Install dependencies
install: ## Install dependencies
	@echo "Installing dependencies..."
	$(NPM) install

# Development
dev: ## Run in development mode (Next.js)
	@echo "Starting development mode..."
	$(NPM) run dev

electron-dev: ## Run Electron application in development mode
	@echo "Starting Electron in development mode..."
	$(NPM) run electron:dev

# Build
build: ## Build Next.js application for production
	@echo "Building Next.js application..."
	$(NPM) run build

build-desktop: ## Build desktop application for current platform
	@node -e "const {execSync}=require('child_process');const p=process.platform;const cmd=p==='win32'?'win-app':p==='linux'?'linux-app':p==='darwin'?'mac-app':null;if(!cmd){console.error('Unsupported platform:',p);process.exit(1)}execSync('make ' + cmd,{stdio:'inherit',shell:true})"

desktop-app: build-desktop ## Alias for build-desktop

build-desktop-win: win-app ## Alias for win-app

win-app: ## Build desktop application for Windows
	@echo "Building for Windows..."
	@powershell -ExecutionPolicy Bypass -File build-electron.ps1

build-desktop-linux: linux-app ## Alias for linux-app

linux-app: ## Build desktop application for Linux
	@echo "Building for Linux..."
	@echo "Warning: electron-builder configuration for Linux is required"
	$(NPM) run electron:build
	$(NPM) run electron:linux

build-desktop-mac: mac-app ## Alias for mac-app

mac-app: ## Build desktop application for macOS
	@echo "Building for macOS..."
	@echo "Warning: electron-builder configuration for macOS is required"
	$(NPM) run electron:build
	$(NPM) run electron:mac

# Mobile (Capacitor)
build-mobile: ## Build Next.js and sync Capacitor android/ios
	@echo "Building mobile web assets and syncing Capacitor..."
	$(NPM) run mobile:build

build-mobile-android: build-mobile ## Sync and open Android Studio
	@echo "Opening Android Studio..."
	$(NPM) run mobile:android

build-mobile-ios: build-mobile ## Sync and open Xcode (requires macOS)
	@echo "Opening Xcode..."
	$(NPM) run mobile:ios

apk-debug: ## Build debug APK (requires Android Studio JBR / JAVA_HOME)
	@echo "Building debug APK..."
	$(NPM) run mobile:apk:debug

apk-release: ## Build release APK
	@echo "Building release APK..."
	$(NPM) run mobile:apk:release

# Deploy
stage-downloads: ## Copy release artifacts to public/downloads (VERSION=x.y.z)
	@node -e "if(!'$(VERSION)'.trim()){console.error('Error: VERSION is required, e.g. make stage-downloads VERSION=1.0.8');process.exit(1)}"
	node scripts/stage-release-downloads.js --version $(VERSION) --src release --out public/downloads

deploy: build ## Deploy prebuilt static site to Vercel (local)
	npx vercel pull --yes --environment=production
	npx cross-env NEXT_PUBLIC_DOWNLOADS_ENABLED=true NEXT_PUBLIC_GITHUB_REPO=oooargon/line-cut-optimizer npm run build:vercel
	npx vercel build --prod
	npx vercel deploy --prebuilt --prod

deploy-release: ## Full release+deploy runs on GitHub Actions (push v* tag)
	@echo "Push a version tag to trigger .github/workflows/vercel-deploy.yml:"
	@echo "  git tag v\$$(node -p \"require('./package.json').version\")"
	@echo "  git push origin v\$$(node -p \"require('./package.json').version\")"

# Clean
clean: clean-dist clean-release ## Clean all build artifacts
	@echo "Cleaning all build artifacts..."
	@powershell -Command "if (Test-Path .next) { Remove-Item -Recurse -Force .next }" 2>nul || rm -rf .next 2>/dev/null || true
	@powershell -Command "if (Test-Path out) { Remove-Item -Recurse -Force out }" 2>nul || rm -rf out 2>/dev/null || true
	@powershell -Command "if (Test-Path node_modules\.cache) { Remove-Item -Recurse -Force node_modules\.cache }" 2>nul || rm -rf node_modules/.cache 2>/dev/null || true

clean-dist: ## Clean dist/
	@echo "Cleaning dist/..."
	@powershell -Command "if (Test-Path dist) { Remove-Item -Recurse -Force dist }" 2>nul || rm -rf dist 2>/dev/null || true

clean-release: ## Clean release/
	@echo "Cleaning release/..."
	@powershell -Command "if (Test-Path release) { Remove-Item -Recurse -Force release }" 2>nul || rm -rf release 2>/dev/null || true

# Utilities
lint: ## Run linter
	@echo "Running linter..."
	$(NPM) run lint
