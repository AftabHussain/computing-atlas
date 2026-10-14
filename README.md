# The Computing Atlas

**A technical library of computer science, software engineering, and artificial intelligence.**

The Computing Atlas is a multi-volume collection of textbook-style technical explanations. It is written to support learning, technical reasoning, and long-term reference. Each topic is developed through motivation, definitions, examples, and (where useful) diagrams, code, and formal details.

This is a **content repository**, separate from Kahua, the planned knowledge-management system. Volumes are deliberately independent; shared LaTeX formatting provides consistent presentation.

## Read the books

| Volume | Title | Status | PDF |
|:--:|---|---|---|
| 01 | Computer Science Foundations | Planned | — |
| **02** | **Programming and Software Engineering** | **2 chapters available** | **[Read PDF](docs/pdfs/02-programming-software-engineering.pdf)** |
| 03 | Computer and Distributed Systems | Planned | — |
| 04 | Databases and Data Engineering | Planned | — |
| 05 | Machine Learning Foundations | Planned | — |
| 06 | Deep Learning and Applied AI | Planned | — |
| 07 | Machine Learning Research and Evaluation | Planned | — |
| 08 | AI Safety and Tradeoffs | Planned | — |

**Web reader:** After publishing the repository through GitHub Pages, open `https://YOUR_USERNAME.github.io/computing-atlas/` to browse the library and read the available books in the browser. See [Publishing](#publishing-on-github-pages) below.

### Currently available chapters (Volume 02)

1. **Object-Oriented Design** — *Interfaces and Protocols in Python*: interface contracts, structural typing, dependency injection, type checking, polymorphism, and dependency inversion.
2. **Concurrency and Asynchronous Programming** — *Coroutines and the `asyncio` Event Loop*: coroutine functions and objects, tasks, scheduling, `await`, and concurrency.

These are the only substantive chapters in this initial release. All other volumes are structures reserved for future writing. See [ROADMAP.md](ROADMAP.md) for the intended subject coverage.

## Repository structure

```text
computing-atlas/
├── README.md
├── ROADMAP.md
├── Makefile
├── shared/                        # Typesetting and reusable LaTeX macros
│   ├── preamble.tex
│   └── macros.tex
├── books/
│   ├── 01-cs-foundations/
│   ├── 02-programming-software-engineering/
│   │   ├── main.tex
│   │   └── chapters/
│   │       ├── object-oriented-design.tex
│   │       └── concurrency-async-programming.tex
│   ├── 03-computer-distributed-systems/
│   ├── 04-databases-data-engineering/
│   ├── 05-ml-foundations/
│   ├── 06-deep-learning-applied-ai/
│   ├── 07-ml-research-evaluation/
│   └── 08-ai-safety-tradeoffs/
├── docs/
│   ├── index.html                   # Browser-based volume catalog
│   ├── read.html                    # Distraction-free PDF viewer page
│   ├── assets/
│   └── pdfs/                       # Published compiled PDF(s)
├── scripts/build-book.sh
└── .github/workflows/publish.yml  # Build and GitHub Pages publishing
```

Every volume has its own `main.tex`; each compiles independently. All volumes reuse `shared/preamble.tex` and `shared/macros.tex`. When a new chapter is written, save it in the appropriate volume's `chapters/` directory and add an `\input{chapters/...}` line to that volume's `main.tex`.

## Build locally

Requirements: TeX Live including `pdflatex`, `latexmk`, `tikz`, `listings`, and commonly distributed LaTeX packages; GNU Make and Bash.

On Ubuntu/Debian, a typical setup is:

```bash
sudo apt-get update
sudo apt-get install -y make latexmk texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-pictures
```

Build the populated volume:

```bash
make pdf
```

Output: `docs/pdfs/02-programming-software-engineering.pdf` (also retained under `build/`). The PDF has a clickable contents page, PDF bookmarks, and internal references. Build any one volume with:

```bash
bash scripts/build-book.sh 05-ml-foundations
```

This will currently produce a title-and-contents skeleton for planned volumes. To compile *every* volume, including the empty ones, use `make all`. Avoid publishing those empty PDFs as completed books.

To preview the web library on your computer:

```bash
python3 -m http.server 8000 --directory docs
```

Then open `http://localhost:8000`. The catalog and reader do not require a frontend build step.


## Editorial principles

- **Teach the design problem before the construct.** Explain why a concept is useful, then introduce the relevant mechanisms.
- **Keep code and figures connected to the discussion.** Avoid standalone snippets without context.
- **Distinguish definitions, behavior, design principles, and limitations.** Avoid blurring related concepts.
- **Prefer general explanations to project-specific logs.** Application examples may motivate chapters, but the text should stand on its own.
- **Preserve straightforward, academic prose.** Clear serif typography, restrained formatting, conventional numbering, and no decorative visual effects.
- **Make updates reviewable.** Keep one topic per source file, use normal pull requests, and verify compiled PDFs before merging.

## Scope and licensing

The technical content is a work in progress. The initial chapters have been reconstructed into editable LaTeX from author-provided PDF previews. Their explanations and examples have been preserved, with layout adapted to the shared book format.

**No reuse license is included yet.** Before accepting external contributions or encouraging redistribution, select and add an appropriate license for the text and code.

## License

Copyright © 2026 Aftab Hussain.

The Computing Atlas's original educational content,
figures, diagrams, and book source files are licensed
under Creative Commons Attribution-NonCommercial
4.0 International (CC BY-NC 4.0).

See [LICENSE-CONTENT.txt](LICENSE-CONTENT.txt).

Commercial reuse requires separate permission.
