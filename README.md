# 🐱 Pink Cat App — Installer Example

![Pink Cat App Icon](rsc/rosa.ico)

## What is this?

Pink Cat App is an educational tool designed to teach students best practices when installing software on Windows. The program itself is intentionally trivial (it shows a random cat image with a congratulation message) — the educational value is entirely in the **installation process**.

---

## Educational Goal

Students learn to:

- ✅ **Read terms and conditions** fully before accepting
- ✅ **Identify bundled junkware** hidden in installers
- ✅ **Recognize deceptive advertising** during installations
- ✅ **Respect Creative Commons licenses** and copyright
- ✅ **Install and uninstall programs correctly** on Windows

---

## Installer Screens

The installer walks students through several intentionally instructive screens:

1. **Welcome** — introduction to the program
2. **Credits & Attributions** — teaches the importance of respecting CC licenses
3. **Terms & Conditions** — contains a hidden message at the end warning about the next trap
4. **Annoying Ad** — example of the advertising that appears in many real installers
5. **Junkware Trap** — pre-checked checkbox to install "SuperOptimizer Pro" (fake)
6. **Folder Selection** — where the program will be installed
7. **Installation** — progress bar
8. **Finish** — option to launch the program

---

## Classroom Use

### Recommended flow:

1. **Before installation** — explain what an installer is and why caution matters
2. **During installation** — let students discover the traps on their own
3. **After installation** — debrief:
   - Who read the terms fully?
   - Who fell for the "SuperOptimizer Pro" checkbox?
   - Practice uninstalling the program correctly

### Discussion points:

- Why is clicking "Next" without reading dangerous?
- How do you spot junkware in real installers?
- What are Creative Commons licenses?
- How do you uninstall programs correctly?

---

## File Structure

```
PinkCat App (Install Example)/
├── pinkcatapp.py               # Main Python source
├── pinkcatapp.iss              # Inno Setup installer script
├── gatos/                      # Cat images shown by the app
│   └── 0.jpg … 9.jpg
├── rsc/
│   ├── rosa.ico                # Program icon
│   ├── URL.txt                 # Icon source link
│   ├── fake.bmp                # Fake software image
│   └── ad.bmp                  # Ad screen image
└── Output/
    ├── PinkCat App.exe         # Final executable
    └── PinkCatApp_Setup.exe    # Installer
```

---

## Download

Releases available in the GitHub releases section.

> **Note:** The installer is in Spanish only — it is designed for use in Spanish-speaking classrooms.

---

## Credits & Licenses

- **Icon:** [Flaticon — Rosa](https://www.flaticon.es/icono-gratis/rosa_774122) · Creative Commons · Flaticon
- **Language:** Python 3.x
- **Libraries:** Tkinter (built-in), Pillow
- **Tools:** PyInstaller, Inno Setup

---

## ⚠️ Security Note

This program is **completely safe** and was created for educational purposes. Any antivirus detections are **false positives** caused by how PyInstaller packages Python executables. The source code is fully available for verification.

For the full development history and why AutoHotkey was abandoned in favor of Python, see the [Technical README](./README_TECH.md).
