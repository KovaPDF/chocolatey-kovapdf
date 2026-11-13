# KovaPDF for Windows: Chocolatey package

This repository holds the [Chocolatey](https://chocolatey.org) package for **KovaPDF for Windows**, the desktop app for editing, converting, compressing, merging, splitting, signing and filling in PDF files on Windows 10 and 11 (64 bit). Many of its tools work offline.

The package contains only the install scripts. It downloads the official installer from KovaPDF's own server and checks its SHA256 before running it. The app itself is not in this repository and is not open source.

## Install

The package is on the Chocolatey Community Repository at https://community.chocolatey.org/packages/kovapdf. Each new version is reviewed by Chocolatey's moderators before it shows in normal search; until a version is approved, `choco install` may not find it.

Once the version is approved:

```powershell
choco install kovapdf
```

Notes:

- It installs for the current user (the account that runs `choco`), not for every user of the PC.
- The app updates itself, so it can be newer than this package for a short while after a release.
- The installer is not code signed yet, so Windows SmartScreen may warn the first time it runs.

You can also get the same app from the [Microsoft Store](https://apps.microsoft.com/detail/9NMMMDPF0271) or from https://www.kovapdf.com/desktop-app.

## Licences

- **The app** is used under the KovaPDF [Terms](https://www.kovapdf.com/legal/terms). That is the licence the package metadata points to.
- **The package scripts** in this repository carry no separate licence file today.
- The KovaPDF name and logo belong to KovaPDF.

## Problems and security

- A problem with the app or the package: https://www.kovapdf.com/contact
- A security problem: support@kovapdf.com (see https://www.kovapdf.com/.well-known/security.txt). Please do not open a public issue for it.

Privacy: https://www.kovapdf.com/legal/privacy
