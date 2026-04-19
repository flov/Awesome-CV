# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A personal LaTeX CV built on the [Awesome-CV](https://github.com/posquit0/Awesome-CV) template. The actual CV content lives in `examples/cv/` and the main entry point is `examples/cv.tex`.

## Building

**With Docker (no local TeX required):**
```bash
./build.sh cv          # builds examples/cv.pdf
./build.sh resume      # builds examples/resume.pdf
./build.sh coverletter # builds examples/coverletter.pdf
```

**With local TeX (xelatex must be installed):**
```bash
make           # builds all three PDFs
make cv.pdf    # build only CV
make clean     # remove generated PDFs
```

The output PDF is `examples/cv.pdf`. The compiled personal CV copy is `florian-vallen.cv.pdf`.

## Structure

- `examples/cv.tex` — main CV entry point; sets personal info (name, contact, links) and `\input`s section files
- `examples/cv/` — one `.tex` file per CV section (skills, experience, projects, education, research)
- `awesome-cv.cls` — the document class defining all layout, colors, and custom commands
- `examples/awesome-cv.cls` — copy of the class used by the examples directory

## Key LaTeX Commands

Defined in `awesome-cv.cls`:

- `\cvsection{Title}` — section header
- `\cventry{role}{org}{location}{url/date}{date}{items}` — experience/project entry
- `\cvskill{category}{skills}` — skill row inside `cvskills` environment
- `\begin{cventries}...\end{cventries}` — wraps `\cventry` blocks
- `\begin{cvskills}...\end{cvskills}` — wraps `\cvskill` rows
- `\begin{cvitems}...\end{cvitems}` — bullet list inside a `\cventry`

## Highlight Color

Set in `examples/cv.tex`:
```latex
\colorlet{awesome}{awesome-red}
```
Available presets: `awesome-emerald`, `awesome-skyblue`, `awesome-red`, `awesome-pink`, `awesome-orange`, `awesome-nephritis`, `awesome-concrete`, `awesome-darknight`.
