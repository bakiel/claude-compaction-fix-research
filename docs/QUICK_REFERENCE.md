# 🎯 QUICK REFERENCE CARD
## Claude Code Compaction Fix - Emergency Commands

**IF CLAUDE CODE SHOWS IMMEDIATE 0% COMPACTION:**

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

## 🚀 IMMEDIATE TEST PROTOCOL
```bash
# Navigate to any project directory
cd ~/Downloads/your-project
claude
# OBSERVE: Context left until auto-compact: ___%
```

## 📋 CONTEXT LEVEL DIAGNOSTICS

### ✅ If 30-90% context: NORMAL BEHAVIOR - Solution worked!
### ⚠️ If 10-29% context: Partial fix - check other shell configs
### ❌ If 0% context: Deep corruption - try nuclear cleanup
### 🔧 If still broken: Use automated fix script

## 🛠️ AUTOMATED FIX SCRIPT
```bash
# Run the automated diagnostic and repair script
chmod +x scripts/fix-compaction.sh
./scripts/fix-compaction.sh
```

## 🚨 NUCLEAR CLEANUP (LAST RESORT)
```bash
# Only if basic fix doesn't work
mv ~/.zshrc ~/.zshrc.completely_broken
echo 'export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin' > ~/.zshrc
source ~/.zshrc
claude  # Test again
```

## 🏆 SUCCESS INDICATORS
- Context shows actual percentages (30%, 60%, 90%)
- No immediate compaction on simple inputs  
- Normal project analysis behavior
- Manual `/compact` works at logical breakpoints

## 🔗 ADVANCED TROUBLESHOOTING
- Check `INVESTIGATION.md` for systematic debugging methodology
- Read `docs/VICTORY_USER_ACCOUNT_CORRUPTION_IDENTIFIED.md` for complete analysis
- Review repository issues for additional patterns

---

**FOR ALL CLAUDE CODE USERS WORLDWIDE!** 🌍⚔️