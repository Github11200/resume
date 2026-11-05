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

This produces `Jinay Patel.pdf` and `Waterlooworks/Jinay Patel.pdf`.
The release workflow publishes the main resume under the stable filename
`Jinay_Patel_Resume.pdf`; generated PDFs do not need to be committed.

The workflow can also be run manually from **Actions → Publish resume → Run
workflow** on `main`. Once the workflow is added, push the source files and
build script along with it so the remote build uses the current resume.
