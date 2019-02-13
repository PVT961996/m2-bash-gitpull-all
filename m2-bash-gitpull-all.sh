#!/bin/bash
magento_project_path="{your_magento_project_path}"
project_app_code="$magento_project_path/app/code"
project_app_design_adminhtml="$magento_project_path/app/design/adminhtml"
project_app_design_frontend="$magento_project_path/app/design/frontend"

source_code_folder=($project_app_code $project_app_design_adminhtml $project_app_design_frontend)
for source in "${source_code_folder[@]}"
do
  for vendor in "$source"/*
  do
    for project_path in "$vendor"/*
    do
      if [[ -d "$project_path" ]]; then
        cd $project_path
        if [ -d ".git" ]; then
          if git diff-index --quiet HEAD --; then
            git pull origin master
          else
            echo "[Ignore] $project_path can not pull, because has some local new code uncomit"
          fi
        fi
      fi
    done  
  done
done
