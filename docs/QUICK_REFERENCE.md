# 🎯 QUICK REFERENCE CARD
## Claude Code Compaction Fix - Emergency Commands

**IF CLAUDE CODE SHOWS IMMEDIATE 0% COMPACTION:**

## 🚀 **SOLUTION 1: Shell Configuration Fix**
```bash
# 1. Quick diagnostic - Check for shell parse errors
zsh -n ~/.zshrc

# 2. If errors found, backup and fix
cp ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d_%H%M%S)
nano ~/.zshrc  # Fix parse errors

# 3. Restart shell environment
source ~/.zshrc

# 4. Test Claude Code
claude
# Should now show normal context percentages!
```

## 🔧 **SOLUTION 2: Cache Cleanup (Cross-Platform)**
```bash
# Linux/WSL2
rm -rf ~/.cache/claude-cli-nodejs

# macOS
rm -rf ~/Library/Caches/claude-cli-nodejs

# Windows (PowerShell)
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\claude-cli-nodejs"

# Test Claude Code
claude
# Should now show normal context percentages!
```

---

## 📋 **DIAGNOSTIC WORKFLOW**

### **Step 1: Try Cache Cleanup First (Fastest)**
```bash
# Choose your platform command above
# Test immediately after deletion
```

### **Step 2: If Still Broken, Check Shell Config**
```bash
# Check for parse errors
zsh -n ~/.zshrc   # macOS/Linux with zsh
bash -n ~/.bashrc # Linux with bash

# Fix any errors found
nano ~/.zshrc     # Edit configuration file
source ~/.zshrc   # Reload environment
```

### **Step 3: Context Level Assessment**
```bash
# Navigate to any project directory
cd ~/Downloads/your-project
claude
# OBSERVE: Context left until auto-compact: ___%
```

---

## 📊 **CONTEXT LEVEL DIAGNOSTICS**

### ✅ **If 30-90% context: SUCCESS** - Solution worked!
### ⚠️ **If 10-29% context: PARTIAL** - Try other platform steps
### ❌ **If 0% context: DEEP ISSUE** - Use nuclear cleanup below
### 🔧 **If still broken: RUN AUTOMATED SCRIPT**

---

## 🛠️ **AUTOMATED FIX SCRIPT**
```bash
# Run the automated diagnostic and repair script
chmod +x scripts/fix-compaction.sh
./scripts/fix-compaction.sh
```

---

## 🚨 **NUCLEAR CLEANUP (LAST RESORT)**
```bash
# Only if both cache and shell fixes don't work
mv ~/.zshrc ~/.zshrc.completely_broken
echo 'export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin' > ~/.zshrc
source ~/.zshrc
claude  # Test again
```

---

## 🏆 **SUCCESS INDICATORS**
- ✅ Context shows actual percentages (30%, 60%, 90%)
- ✅ No immediate compaction on simple inputs  
- ✅ Normal project analysis behavior
- ✅ Manual `/compact` works at logical breakpoints

---

## 🌍 **PLATFORM-SPECIFIC NOTES**

### **macOS:**
- Shell config issues more common
- Cache location: `~/Library/Caches/claude-cli-nodejs`

### **Linux/WSL2:**
- Cache issues more common  
- Cache location: `~/.cache/claude-cli-nodejs`

### **Windows:**
- Check PowerShell profile if shell issues suspected
- Cache location: `%LOCALAPPDATA%\claude-cli-nodejs`

---

## 🔗 **NEED MORE HELP?**
- **Complete Solutions:** [README.md](../README.md)
- **Investigation Process:** [INVESTIGATION.md](../INVESTIGATION.md)
- **Research Documentation:** [docs/](./README.md)

---

**COMMUNITY POWERED SOLUTIONS!** 🌍⚔️  
*Thanks to [@xianjun-zhang](https://github.com/xianjun-zhang) for cache corruption discovery*