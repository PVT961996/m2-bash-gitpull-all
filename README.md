# m2-bash-gitpull-all
- Bash script use to pull lastest version of modules, themes in Magento 2
## Table of Contents

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 orderedList:0 -->
- [Requirement](#requirement)
- [Install](#install)
- [Usage](#usage)

<!-- /TOC -->

##Requirement
- Only use for modules and themes installed by add to `app/code`, `app/design`
- All modules and themes use `git` to manage source code
## Install

- Step 1: Open `m2-bash-gitpull-all.sh` file by any Text Editor(Sublime, Notepad, ...) 
- Step 2: Change `{your_magento_project_path}` in line 2 to your Magento project path

```bash
magento_project_path="{your_magento_project_path}"
```
- Step 3: Save file and close

## Usage
### Ubuntu
```bash
cd {m2-bash-gitpull-all_project_path}
./m2-bash-gitpull-all.sh
```

### Windows &  MacOSX

```bash
cd {m2-bash-gitpull-all_project_path}
sh m2-bash-gitpull-all.sh
```
