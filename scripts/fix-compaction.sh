#!/bin/bash

# Claude Code Compaction Fix - Automated Solution Script
# Based on systematic investigation and root cause analysis

echo "🔧 Claude Code Compaction Fix - Automated Solution"
echo "================================================="
echo ""

# Function to check for shell parse errors
check_shell_config() {
    echo "🔍 Checking shell configuration for parse errors..."
    
    # Check .zshrc for parse errors
    if zsh -n ~/.zshrc 2>/dev/null; then
        echo "✅ .zshrc syntax is valid"
        return 0
    else
        echo "❌ .zshrc has parse errors - this is likely the cause!"
        echo ""
        echo "Parse error details:"
        zsh -n ~/.zshrc
        return 1
    fi
}

# Function to backup shell config
backup_shell_config() {
    echo "💾 Backing up shell configuration..."
    cp ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S)
    echo "✅ Backup created: ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S)"
}

# Function to fix common .zshrc issues
fix_shell_config() {
    echo "🔧 Opening .zshrc for manual editing..."
    echo "Look for parse errors around brackets, quotes, or incomplete statements"
    echo "Common issues:"
    echo "  - Missing closing brackets: } ] )"
    echo "  - Unclosed quotes: \" '"
    echo "  - Incomplete function definitions"
    echo ""
    echo "Press Enter when ready to edit..."
    read -r
    
    # Open in nano (or use vim/code if preferred)
    nano ~/.zshrc
}

# Function to test the fix
test_claude_code() {
    echo "🧪 Testing Claude Code after fix..."
    echo ""
    echo "Please run: claude"
    echo ""
    echo "Success indicators:"
    echo "✅ Context shows actual percentages (30%, 60%, 90%)"
    echo "✅ No immediate 0% compaction"
    echo "✅ Normal project analysis behavior"
    echo ""
    echo "If still broken, try nuclear option below..."
}

# Function for nuclear shell reset
nuclear_shell_reset() {
    echo "💥 Nuclear Option: Complete Shell Reset"
    echo "======================================"
    echo ""
    echo "⚠️  WARNING: This will reset your entire shell configuration!"
    echo "Only use if manual fix didn't work."
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
    
    # Step 1: Check current shell config
    if check_shell_config; then
        echo ""
        echo "🤔 Shell config appears valid. Other potential issues:"
        echo "1. Environment variable conflicts"
        echo "2. Claude Code cache corruption"
        echo "3. Different shell configuration issue"
        echo ""
        echo "Try manual investigation or nuclear reset option."
    else
        echo ""
        echo "🎯 Found the issue! Shell parse errors detected."
        echo ""
        
        # Step 2: Backup current config
        backup_shell_config
        
        # Step 3: Fix the config
        echo ""
        fix_shell_config
        
        # Step 4: Test shell config again
        echo ""
        echo "🔍 Re-checking shell configuration..."
        if check_shell_config; then
            echo "✅ Shell configuration fixed!"
            echo ""
            
            # Step 5: Restart shell environment
            echo "🔄 Restarting shell environment..."
            source ~/.zshrc
            echo "✅ Shell environment reloaded"
            echo ""
            
            # Step 6: Test Claude Code
            test_claude_code
        else
            echo "❌ Shell configuration still has errors."
            echo "Consider nuclear reset option or manual debugging."
            echo ""
            nuclear_shell_reset
        fi
    fi
}

# Run the main function
main

echo ""
echo "🏆 Script complete!"
echo ""
echo "If successful, Claude Code should now show normal context percentages!"
echo "If still broken, check the investigation documentation for advanced troubleshooting."