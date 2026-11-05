# Resume

Edit `resume.typ` and `projects.typ`, then commit and push to `main`.
GitHub Actions compiles the resume with Typst 0.15.1 and publishes
`Jinay_Patel_Resume.pdf` in a new GitHub Release marked **Latest**.
Previous releases remain available, and failed builds leave the last published
resume in place. Publishing uses GitHub's built-in token; no additional secret
or Google Drive upload is needed.

The customized resume template is included in `template/` so local and GitHub
builds use the same layout and project-heading fields. It is based on
`basic-resume` 0.2.8 and retains its Unlicense in `template/LICENSE`.

## Permanent PDF link

Use this URL in the separate portfolio repository:

[Download the latest resume](https://github.com/Github11200/resume/releases/latest/download/Jinay_Patel_Resume.pdf)

The URL stays the same as new releases are published. It becomes available
after the first successful workflow run. This is a direct download link;
GitHub may download the PDF rather than display an inline preview.

## Build locally

Install Typst 0.15.1, then run:

```sh
bash build-resumes.sh
```

This produces `output/Jinay_Patel_Resume.pdf` and
`output/Jinay_Patel_Resume_Waterlooworks.pdf`.
The release workflow publishes the main resume under the stable filename
`Jinay_Patel_Resume.pdf`; generated PDFs do not need to be committed.

The workflow can also be run manually from **Actions → Publish resume → Run
workflow** on `main`. Once the workflow is added, push the source files and
build script along with it so the remote build uses the current resume.

## Folder layout

- `resume.typ`, `projects.typ`: public resume content.
- `template/`: the shared resume layout and its license.
- `.github/workflows/`: builds and publishes only the main public resume.
- `output/`: generated public PDFs, ignored by Git.
- `local/`: laptop-only application files, ignored by Git.

Application-specific resumes, profiles, screening JSON, and sources belong in
`local/applications/`. Older role-specific variants are in `local/variants/`,
tailoring snapshots are in `local/tailoring/`, and supporting notes are in
`local/notes/`. Previous builds, previews, and tool caches are preserved in
`local/scratch/`.

Only the public top-level files listed in `.gitignore`, `template/`, and
`.github/` are eligible for normal commits. PDF and JSON files are also ignored
throughout the repository. Keep new job-application material under `local/`;
do not force-add ignored files. The release workflow uploads one explicit
public PDF path and never scans application folders.

Moving or untracking files does not erase copies from older Git commits.
