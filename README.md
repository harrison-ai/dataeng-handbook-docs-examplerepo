# Data Engineering Example Repo

This repo is to be used as an example only and has been generated as a means of testing
and communicating the standard structure of a repo in data engineering.

⚠️ **This is not a template repo.** ⚠

The files in this repo have been generated to 
highlight the directory structure, the contents of each file is less important.
There is no meaningful functionality in this repo whatsoever.

## Structure of the repo

The structure of this repo is as follows:

```
.
├── app
│   ├── Cargo.toml
│   ├── CHANGELOG.md
│   ├── CODEOWNERS
│   ├── README.md
|   ├── scripts
|   │   ├── build.sh
|   │   └── test.sh
│   └── src
│       └── main.rs
├── .buildkite
│   └── pipeline.yml
├── CHANGELOG.md
├── CODEOWNERS
├── .git
│   ├── branches
│   ├── config
│   ├── description
│   ├── FETCH_HEAD
│   ├── HEAD
│   ├── hooks
│   │   ├── applypatch-msg.sample
│   │   ├── commit-msg.sample
|   |   ........
│   ├── packed-refs
│   └── refs
│       ├── heads
│       │   └── main
│       ├── remotes
│       │   └── origin
│       │       └── HEAD
│       └── tags
├── .github
│   ├── .gitkeep
│   ├── ISSUE_TEMPLATE.md
│   ├── PULL_REQUEST_TEMPLATE.md
│   └── workflows
├── .gitignore
├── infra
|   ├── ansible
|   │   ├── roles
|   │   └── site.yml
│   ├── CHANGELOG.md
│   ├── CODEOWNERS
│   ├── docker-compose.yml
│   ├── envvars.yml
│   ├── .gitignore
│   ├── Makefile
│   ├── README.md
│   ├── scripts
│   │   └── tf-validate.sh
│   └── tf
│       ├── data.tf
│       ├── dev
│       │   ├── backend.tf
│       │   ├── data.tf -> ../data.tf
│       │   ├── locals.tf
│       │   ├── main.tf -> ../main.tf
│       │   └── provider.tf -> ../provider.tf
│       ├── main.tf
│       ├── prod
│       │   ├── backend.tf
│       │   ├── data.tf -> ../data.tf
│       │   ├── locals.tf
│       │   ├── main.tf -> ../main.tf
│       │   └── provider.tf -> ../provider.tf
│       └── provider.tf
├── LICENSE
└── README.md
```

The key part of this structure are that the infra and app directories are separate entities
that could with some modifications be separated into their own separate repo later.  They contain their own CHANGELOG, README, CODEOWNER files as well as CICD pipeline scripts in
the `scripts` directory.

If the application and infrastructure components need to be split out later, the `.github` 
directory will need to be copied to the new repo containing the contents of `./app` or `./infra`.  The constituent components of the CICD pipelines will need to be extracted and moved to the new repo.