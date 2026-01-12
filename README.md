# ChatLingo

Real-time chat translation AddOn for World of Warcraft 3.3.5/3.3.5a

Автоматичний переклад повідомлень у чатах World of Warcraft на льоту.

## ✨ Features

- ⚡ Real-time translation of all chat channels
- 🌍 Multiple translation services (Google Translate, MyMemory, LibreTranslate)
- 💾 Smart caching system - faster translations
- 🎯 Priority system (whispers/party/raid first, general chat only when active)
- 📝 Exclusion list for WoW terms and player names
- 🖥️ Simple GUI configuration
- 🆓 100% Free & Open Source

## 🚀 Quick Start

### Requirements
- World of Warcraft 3.3.5 / 3.3.5a
- Python 3.8+ 
- All dependencies included - no pip install needed!

### Installation

1. **Download** latest release
2. **Extract** archive
3. **Copy** `Interface` folder to your WoW directory:
```
   World of Warcraft\Interface\AddOns\ChatLingo\
```
4. **Run** `ChatLingoTranslator\start.bat` (Windows) or `start.sh` (Linux/Mac)
5. **Configure** WoW path and target language in GUI
6. **Start** monitoring and play!

## 🎮 Supported Servers

- ✅ Official WoW 3.3.5
- ✅ Warmane
- ✅ Any other 3.3.5/3.3.5a private server

## ⚙️ How It Works

**Hybrid Architecture:**
- **AddOn** (Lua) - captures chat messages, displays translations in-game
- **Translator** (Python) - monitors SavedVariables, translates via API, writes back
- **Communication** - through WoW SavedVariables files

## 📋 Chat Priority System

**Always translate (high priority):**
- Whispers
- Party chat
- Raid chat
- Guild chat

**Translate only active windows (low priority):**
- Say
- Yell
- Custom channels
- Zone/Trade

## 🔧 Configuration

Launch translator GUI to configure:
- Translation service (Google/MyMemory/LibreTranslate/Local DB)
- Target language (Ukrainian by default)
- Source language (Auto-detect)
- API keys (if needed)
- WoW installation path

## 📁 Project Structure
```
ChatLingo/
├── Interface/AddOns/ChatLingo/    # WoW AddOn
└── ChatLingoTranslator/            # Python translator
    ├── lib/                        # All dependencies (included!)
    ├── modules/                    # Core logic
    ├── gui/                        # CustomTkinter interface
    ├── database/                   # SQLite cache
    └── dictionaries/               # WoW terms & common phrases
```

## 🤝 Contributing

Contributions welcome! Please read [DEVELOPMENT.md](docs/DEVELOPMENT.md) for details.

## 📝 License

MIT License - see [LICENSE](LICENSE) file

## 🐛 Issues

Found a bug? [Open an issue](https://github.com/yourusername/ChatLingo/issues)

## ⭐ Support

If ChatLingo helps you:
- ⭐ Star this repo
- 🐛 Report bugs
- 💡 Suggest features

---

**Enjoy your multilingual WoW experience!**