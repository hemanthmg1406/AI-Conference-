# oth-aw-beamer

**Dieses Repository enthält $\LaTeX$-Vorlagen für das beamer-Paket im Corporate Design der OTH Amberg-Weiden**

## Kompilieren

### `make`-Buildsystem (Unix)
- Eingabe von `make` im Terminal reicht
- SVGs werden mittels [`inkscape`](https://inkscape.org) (muss dafür installiert sein) automatisch konvertiert
- Engine: $\text{Lua}\LaTeX$
- Abhängigkeiten: Make, Inkscape, Python, LuaLaTeX, ...

### `latexmk`-Buildsystem
- Befehl: `latexmk <filename.tex>`
- Engine grundsätzlich frei wählbar, jedoch kann Hausschrift *MetaOT* ausschließlich mit $\text{Lua}\LaTeX$ oder $\text{X}\exists\LaTeX$ verwendet werden

### Manuell
- Engine der Wahl verwenden, selbige Einschränkungen wie oben

### Visual Studio Code
- Erweiterung [LaTeX Workshop](vscode:extension/James-Yu.latex-workshop) verfügbar
- Alle obigen Kompilationsmethoden können konfiguriert werden

## Weitere Informationen
Verwendung, Optionen und weitere Informationen auch im Hinblick auf Schriftarten direkt in der [Demo-Präsentation](oth-aw-beamer.pdf).
