# OTH-AW-Beamer

**Dieses Repository enthält $\LaTeX$-Vorlagen für das `beamer`-Paket im Corporate Design der OTH Amberg-Weiden**

Die primäre Zielgruppe dieses Repositories sind **Studierende der Fakultät EMI**.

Ansprechpartner bei Fragen, Anregungen und Problemen:
- s.spies@oth-aw.de
- t.bauer@oth-aw.de

Hinweis: Dieses Repository wird automatisiert aktualisiert.

## Dateien
* `OTHAWbeamer.cls` Klassendatei für Präsentationen mit `beamer` im OTH-Corporate-Design
* `othaw-colors.sty` Stildatei mit Farbdefinitionen im OTH-Corporate-Design
* `othaw-fonts.sty` Stildatei mit Definitionen zu Schriftarten für das OTH-Corporate-Design. Bitte beachten Sie auch die Hinweise hierzu in der Demo-Präsentation.
* `oth-aw-beamer.tex` Demo-Präsentation: Hier können Sie eigene Inhalte einfügen oder alternativ eine neue Datei verwenden.
* >[!IMPORTANT] Wichtiger Hinweis
  > Sie dürfen selbstverständlich neue Pakete hinzufügen, ggf. nicht benötigte Pakete entfernen. Es sollten jedoch die Vorgaben durch das Corporate Design eingehalten werden.
* `oth-aw-beamer.pdf` Die fertig kompilierte Demo-Präsentation, die gleichzeitig eine Dokumentation der Klasse ist.

## Kompilieren

>[!WARNING] Bitte beachten Sie
> Als Studierende ohne Zugriff auf die Hausschrift *MetaOT* müssen Sie die Klassenoption `nometaot` verwenden, um die Präsentation kompilieren zu können!

### `latexmk`-Buildsystem
- Befehl: `latexmk <filename.tex>`
- Engine grundsätzlich frei wählbar, jedoch kann Hausschrift *MetaOT* ausschließlich mit $\text{Lua}\LaTeX$ oder $\text{X}\exists\LaTeX$ verwendet werden
- Bei Verwendung von *MetaOT* also: `latexmk -lualatex <filename.tex>`


### Manuell
- Engine der Wahl verwenden, selbige Einschränkungen wie oben

### Visual Studio Code
- Erweiterung [LaTeX Workshop](vscode:extension/James-Yu.latex-workshop) verfügbar
- Alle obigen Kompilationsmethoden können konfiguriert werden
- Devcontainer [Hephaistos](https://git.oth-aw.de/latex-tools/hephaistos-vscode) verfügbar mit vorkonfiguriertem `LaTeX-Workshop`, `LTeX+`-Rechtschreibprüfung und brauchbarer `latexindent`-Konfiguration

## Weitere Informationen
Verwendung, Optionen und weitere Informationen auch im Hinblick auf Schriftarten direkt in der [Demo-Präsentation](oth-aw-beamer.pdf).
