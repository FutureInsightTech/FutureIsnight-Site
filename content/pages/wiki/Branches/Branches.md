---
title: "Future Insight Github Branches"
date: 2023-06-21T17:11:24+05:00
draft: false
type: "page"
url: /future-insight-wiki/bracnhes/
---

## Branches
This project consists of three main branches:

1. Main Branch (Production)
2. Blog Branch
3. Development Branch

### Main Branch

The main branch, also known as the production branch, represents the live version of the project. Finalized blogs or tested features are merged into this branch. It is continuously hosted on the server.

### Blog Branch

The blog branch is dedicated to writing and finalizing blogs. Once a blog is completed, it is merged into the main branch. Although this branch is live locally, it is not hosted on the server.

### Development Branch

The development branch is where new features are implemented and tested. Once these features are finalized, they are merged into the main branch. This branch is not live and is not hosted on the server.

## Purpose of Branches

The purpose of these branches is to ensure that the production is always up and running smoothly. It allows writers to work on blogs without affecting the live version, and developers to add new features to the production environment.

## Branch Rules

1. The main branch is always live and hosted on the server.
2. Before adding any code, a pull request must be created.
3. The pull request should be reviewed by the team.
4. The pull request must be approved by the team.
5. Documentation of all changes is required. Failure to provide documentation will result in the rejection of the pull request.

## Version Branches

Over time, additional features have been added to the website, resulting in the creation of version branches. Each branch corresponds to a specific version of the website and includes new features. The following version branches have been created:

- [Version 01](/future-insight-wiki/Version01/)
- [Version 02](/future-insight-wiki/Version02/)
- [Version 03](/future-insight-wiki/Version03/)
- [Version 04](/future-insight-wiki/Version04/)
- [Version 05](/future-insight-wiki/Version05/)
- [Version 06](/future-insight-wiki/Version06/)

These branches are not live and are not hosted on the server. They serve as finalized feature branches that are eventually merged into the main branch. You can review the changes made in each branch on the [Wiki](/Future-Insight-Wiki/).

## Build Branch

The build branch is crucial to the production line workflow. Once a pull request is approved and code is merged, a GitHub action is triggered. This action runs a script on an Ubuntu server, which builds the website and saves the built version in a branch called the **build** branch. The purpose of this branch is to store the latest build of the website.

## Build Branch Rules

1. The build branch is always live and hosted on the server.
2. No code is directly added to this branch.
3. No pull requests are made to this branch.
4. Only the built version of the website is added to this branch.

