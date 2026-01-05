# oth-aw-beamer

**Dieses Repository enthält $\LaTeX$-Vorlagen für das beamer-Paket im Corporate Design der OTH Amberg-Weiden**

## Kompilieren

### `latexmk`-Buildsystem
- Befehl: `latexmk <filename.tex>`
- Engine grundsätzlich frei wählbar, jedoch kann Hausschrift *MetaOT* ausschließlich mit $\text{Lua}\LaTeX$ oder $\text{X}\exists\LaTeX$ verwendet werden

### Manuell
- Engine der Wahl verwenden, selbige Einschränkungen wie oben

### Visual Studio Code
- Erweiterung [LaTeX Workshop](vscode:extension/James-Yu.latex-workshop) verfügbar
- Alle obigen Kompilationsmethoden können konfiguriert werden
- Devcontainer [Hephaistos](https://git.oth-aw.de/latex-tools/hephaistos-vscode) verfügbar mit vorkonfiguriertem `LaTeX-Workshop`, `LTeX+`-Rechtschreibprüfung und brauchbarer `latexindent`-Konfiguration

## Weitere Informationen
Verwendung, Optionen und weitere Informationen auch im Hinblick auf Schriftarten direkt in der [Demo-Präsentation](oth-aw-beamer.pdf).
