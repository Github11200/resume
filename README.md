# Resume

Edit `resume.typ` and `projects.typ`, then commit and push to `main`.
Run `bash build-resumes.sh` before committing resume changes. The build updates
the tracked `public/Jinay_Patel_Resume.pdf`, which the portfolio links to on
`main`. Commit that PDF with the source files so the website serves the new
version when the commit is pushed. GitHub Actions also publishes a release
when it can run; failed runs leave the last release in place.

The customized resume template is included in `template/` so local and GitHub
builds use the same layout and project-heading fields. It is based on
`basic-resume` 0.2.8 and retains its Unlicense in `template/LICENSE`.

## Permanent PDF link

Use this URL in the separate portfolio repository:

[Download the latest resume](https://raw.githubusercontent.com/Github11200/resume/main/public/Jinay_Patel_Resume.pdf)

The URL stays the same as new commits are pushed to `main`. GitHub may download
the PDF rather than display an inline preview.

## Build locally

Install Typst 0.15.1, then run:

```sh
bash build-resumes.sh
```

This produces `output/Jinay_Patel_Resume.pdf` and
`output/Jinay_Patel_Resume_Waterlooworks.pdf`, and refreshes the tracked
`public/Jinay_Patel_Resume.pdf`.
The release workflow publishes the main resume under the stable filename
`Jinay_Patel_Resume.pdf`.

The workflow can also be run manually from **Actions → Publish resume → Run
workflow** on `main` when GitHub Actions is available.

## Folder layout

- `resume.typ`, `projects.typ`: public resume content.
- `template/`: the shared resume layout and its license.
- `.github/workflows/`: builds and publishes only the main public resume.
- `output/`: generated local PDFs, ignored by Git.
- `public/`: the generated main PDF committed for the portfolio link.
- `local/`: laptop-only application files, ignored by Git.

Application-specific resumes, profiles, screening JSON, and sources belong in
`local/applications/`. Older role-specific variants are in `local/variants/`,
tailoring snapshots are in `local/tailoring/`, and supporting notes are in
`local/notes/`. Previous builds, previews, and tool caches are preserved in
`local/scratch/`.

Only the public top-level files listed in `.gitignore`, `template/`, `.github/`,
and `public/Jinay_Patel_Resume.pdf` are eligible for normal commits. Other PDF
and JSON files are ignored throughout the repository. Keep new job-application
material under `local/`;
do not force-add ignored files. The release workflow uploads one explicit
public PDF path and never scans application folders.

Moving or untracking files does not erase copies from older Git commits.
