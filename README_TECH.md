# 🔧 Technical README — Pink Cat App

> Internal reference for development, debugging, and AI-assisted work.  
> → [Presentation README](./README.md)

---

## 🤖 AI Instructions

- Wait for the author to specify what needs to be done before proceeding.
- Ask for the relevant files before making any modifications.
- The program logic (`pinkcatapp.py`) is intentionally simple — the complexity lives in the installer script (`pinkcatapp.iss`).
- Any change to the installer flow must preserve the educational sequence of screens (see section 2).

---

## 1. Stack

| Component | Technology | Purpose |
|---|---|---|
| App | Python 3.x + Tkinter + Pillow | GUI and random cat image display |
| Executable | PyInstaller | Packages Python app into a Windows `.exe` |
| Installer | Inno Setup | Creates the educational installer with all screens |

---

## 2. Installer Screen Sequence

The order is intentional and must be preserved:

1. **Welcome** — introduction
2. **Credits & Attributions** — CC license education
3. **Terms & Conditions** — hidden warning message at the end about the next screen
4. **Annoying Ad** — realistic ad example
5. **Junkware Trap** — pre-checked "SuperOptimizer Pro" checkbox (fake, installs nothing)
6. **Folder Selection** — standard install path
7. **Installation** — progress bar
8. **Finish** — launch option

---

## 3. Development History — Why Not AutoHotkey

The first version was built in AutoHotkey and discarded due to antivirus false positives:

| Version | Detections (out of 70) | Confidence |
|---|---|---|
| AutoHotkey | 13 | 81.4% |
| Python + PyInstaller (installer) | 1 | 98.6% ✅ |
| Python + PyInstaller (executable) | 3 | 95.7% ✅ |

**77% improvement in false positives.**

AutoHotkey is frequently used by malware authors, so heuristic antivirus engines treat AHK-compiled executables with suspicion regardless of content. PyInstaller with Python produces a much cleaner result.

Known remaining detections on the Python version are false positives inherent to how PyInstaller bundles the Python runtime — not caused by the application code.

---

## 4. Building

### Executable

```bash
pip install pillow pyinstaller
pyinstaller --onefile --windowed --icon=rsc/rosa.ico pinkcatapp.py
```

### Installer

Open `pinkcatapp.iss` in [Inno Setup](https://jrsoftware.org/isinfo.php) and compile.

Output files go to `Output/`:
- `PinkCat App.exe` — standalone executable
- `PinkCatApp_Setup.exe` — full installer

---

## 5. Pending Tasks

- [ ] None currently tracked
