#!/bin/bash

# Claude Code Compaction Fix - Automated Solution Script
# Based on systematic investigation and community discoveries

echo "🔧 Claude Code Compaction Fix - Automated Solution"
echo "================================================="
echo ""
echo "This script will try multiple proven solutions:"
echo "1. Cache cleanup (fastest fix)"
echo "2. Shell configuration repair" 
echo "3. Nuclear reset options"
echo ""

# Function to detect operating system
detect_os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "linux"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "macos"
    elif [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]]; then
        echo "windows"
    else
        echo "unknown"
    fi
}

# Function to cleanup cache based on OS
cleanup_cache() {
    local os=$(detect_os)
    echo "🗑️  Attempting cache cleanup for $os..."
    
    case $os in
        "linux")
            if [ -d ~/.cache/claude-cli-nodejs ]; then
                echo "Found Linux cache directory"
                rm -rf ~/.cache/claude-cli-nodejs
                echo "✅ Removed ~/.cache/claude-cli-nodejs"
                return 0
            else
                echo "❌ No Linux cache directory found"
                return 1
            fi
            ;;
        "macos")
            if [ -d ~/Library/Caches/claude-cli-nodejs ]; then
                echo "Found macOS cache directory"
                rm -rf ~/Library/Caches/claude-cli-nodejs
                echo "✅ Removed ~/Library/Caches/claude-cli-nodejs"
                return 0
            else
                echo "❌ No macOS cache directory found"
                return 1
            fi
            ;;
        "windows")
            echo "⚠️  Windows detected - manual cache cleanup required"
            echo "Please delete: %LOCALAPPDATA%\\claude-cli-nodejs"
            echo "Or run in PowerShell: Remove-Item -Recurse -Force \"\$env:LOCALAPPDATA\\claude-cli-nodejs\""
            return 2
            ;;
        *)
            echo "❌ Unknown operating system"
            return 1
            ;;
    esac
}

# Function to test Claude Code
test_claude_code() {
    echo "🧪 Testing Claude Code..."
    echo ""
    echo "Please run: claude"
    echo ""
    echo "Success indicators:"
    echo "✅ Context shows actual percentages (30%, 60%, 90%)"
    echo "✅ No immediate 0% compaction"
    echo "✅ Normal project analysis behavior"
    echo ""
    echo "If context still shows 0%, continue to next fix..."
}

# Function to check for shell parse errors
check_shell_config() {
    echo "🔍 Checking shell configuration for parse errors..."
    
    # Check .zshrc for parse errors
    if command -v zsh >/dev/null && [ -f ~/.zshrc ]; then
        if zsh -n ~/.zshrc 2>/dev/null; then
            echo "✅ .zshrc syntax is valid"
        else
            echo "❌ .zshrc has parse errors - this needs fixing!"
            echo ""
            echo "Parse error details:"
            zsh -n ~/.zshrc
            return 1
        fi
    fi
    
    # Check .bashrc for parse errors
    if command -v bash >/dev/null && [ -f ~/.bashrc ]; then
        if bash -n ~/.bashrc 2>/dev/null; then
            echo "✅ .bashrc syntax is valid"
        else
            echo "❌ .bashrc has parse errors - this needs fixing!"
            echo ""
            echo "Parse error details:"
            bash -n ~/.bashrc
            return 1
        fi
    fi
    
    return 0
}

# Function to backup shell config
backup_shell_config() {
    echo "💾 Backing up shell configuration..."
    if [ -f ~/.zshrc ]; then
        cp ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S)
        echo "✅ Backup created: ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S)"
    fi
    if [ -f ~/.bashrc ]; then
        cp ~/.bashrc ~/.bashrc.backup.$(date +%Y%m%d_%H%M%S)
        echo "✅ Backup created: ~/.bashrc.backup.$(date +%Y%m%d_%H%M%S)"
    fi
}

# Function to fix common shell issues
fix_shell_config() {
    echo "🔧 Opening shell configuration for manual editing..."
    echo "Look for parse errors around brackets, quotes, or incomplete statements"
    echo "Common issues:"
    echo "  - Missing closing brackets: } ] )"
    echo "  - Unclosed quotes: \" '"
    echo "  - Incomplete function definitions"
    echo ""
    
    if [ -f ~/.zshrc ]; then
        echo "Editing ~/.zshrc..."
        echo "Press Enter when ready to edit..."
        read -r
        nano ~/.zshrc
    elif [ -f ~/.bashrc ]; then
        echo "Editing ~/.bashrc..."
        echo "Press Enter when ready to edit..."
        read -r
        nano ~/.bashrc
    else
        echo "❌ No shell configuration file found"
        return 1
    fi
}

# Function for nuclear shell reset
nuclear_shell_reset() {
    echo "💥 Nuclear Option: Complete Shell Reset"
    echo "======================================"
    echo ""
    echo "⚠️  WARNING: This will reset your entire shell configuration!"
    echo "Only use if previous fixes didn't work."
    echo ""
    echo "Commands to run manually:"
    echo "mv ~/.zshrc ~/.zshrc.completely_broken"
    echo "# Create minimal .zshrc:"
    echo "echo 'export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin' > ~/.zshrc"
    echo "source ~/.zshrc"
    echo "# Test Claude Code"
}

# Main execution
main() {
    echo "Starting automated Claude Code compaction fix..."
    echo ""
    
    # Step 1: Try cache cleanup first (fastest fix)
    echo "🚀 STEP 1: Cache Cleanup (Community Discovery)"
    echo "Discovered by: @xianjun-zhang"
    echo ""
    
    cache_result=$(cleanup_cache)
    cache_exit_code=$?
    
    if [ $cache_exit_code -eq 0 ]; then
        echo ""
        echo "✅ Cache cleanup completed successfully!"
        echo ""
        test_claude_code
        echo ""
        echo "If Claude Code now works normally, you're done! 🎉"
        echo "If still showing 0% context, continue to shell configuration check..."
        echo ""
        echo "Continue to shell config check? (y/n): "
        read -r continue_shell
        if [[ ! $continue_shell =~ ^[Yy]$ ]]; then
            echo "Cache cleanup complete. Test Claude Code and return if issues persist."
            exit 0
        fi
    elif [ $cache_exit_code -eq 2 ]; then
        echo ""
        echo "⚠️  Manual cache cleanup required for Windows"
        echo "Please complete cache cleanup before continuing..."
        echo ""
    else
        echo ""
        echo "⚠️  No cache directory found - proceeding to shell configuration check"
        echo ""
    fi
    
    # Step 2: Check shell configuration
    echo "🚀 STEP 2: Shell Configuration Check (Original Discovery)"
    echo ""
    
    if check_shell_config; then
        echo ""
        echo "🤔 Shell config appears valid. Possible issues:"
        echo "1. Cache cleanup may have resolved the issue"
        echo "2. Environment variable conflicts"
        echo "3. Different configuration file issues"
        echo ""
        echo "Try testing Claude Code now, or continue to nuclear options..."
        echo ""
        test_claude_code
    else
        echo ""
        echo "🎯 Found shell configuration issues!"
        echo ""
        
        # Backup current config
        backup_shell_config
        
        # Fix the config
        echo ""
        fix_shell_config
        
        # Test shell config again
        echo ""
        echo "🔍 Re-checking shell configuration..."
        if check_shell_config; then
            echo "✅ Shell configuration fixed!"
            echo ""
            
            # Restart shell environment
            echo "🔄 Restarting shell environment..."
            if [ -f ~/.zshrc ]; then
                source ~/.zshrc
            elif [ -f ~/.bashrc ]; then
                source ~/.bashrc
            fi
            echo "✅ Shell environment reloaded"
            echo ""
            
            # Test Claude Code
            test_claude_code
        else
            echo "❌ Shell configuration still has errors."
            echo "Consider nuclear reset option or manual debugging."
            echo ""
            nuclear_shell_reset
        fi
    fi
    
    echo ""
    echo "🔗 Additional Help:"
    echo "- Community solutions: docs/COMMUNITY_DISCOVERIES.md"
    echo "- Quick reference: docs/QUICK_REFERENCE.md"
    echo "- Full documentation: README.md"
}

# Run the main function
main

echo ""
echo "🏆 Script complete!"
echo ""
echo "If successful, Claude Code should now show normal context percentages!"
echo "If still broken, check the investigation documentation for advanced troubleshooting."
echo ""
echo "🙏 Thanks to the community for discovering multiple solutions:"
echo "- Shell configuration fix (original investigation)"
echo "- Cache cleanup solution (@xianjun-zhang)"