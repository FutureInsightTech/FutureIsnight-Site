#!/bin/bash

echo "
=============================================================================
--- Project Name: Future Insight
--- GitHub Repo:  https://github.com/rafay99-epic/Future-Insight
--- Author Name:  Abdul Rafay
--- Script Description: This Script will create a new Blog Post and
                        will ask to run the local server.
=============================================================================
"

function run_hugo_server()
{
  echo -ne "
=======================
Running Hugo Server
=======================
"
  hugo server
}

function create_project()
{

  echo -ne "
======================================
Enter the name of the Project:

Please enter the extension as well.
For this Project the extension is .md
======================================
  "
  read  project_name

  hugo new project/$project_name

}


function create_post()
{
  echo -ne "
=======================
Please Enter the year: 
=======================
"
  read  year

  echo -ne "
==================================
Please Enter the Tag Name:

Choose:
1. machine-learning
2. essential-skills
3. Web-Development

Note: Do not add spaces 
and enter the correct spelling
====================================
"
read  tag

#if [[]];then

#if

  echo -ne "
======================================
Enter the name of the Blog:

Please enter the extension as well.
For this Project the extension is .md
======================================
  "
  read  post_name

  hugo new post/$year/$tag/$post_name
}
function run_git()
{
  chmod +x run.sh
  ./run.sh
}
function reduce_image_size()
{
  chmod +x reduce_image.sh 
  ./reduce_image.sh
}


function logic()
{

  echo -ne "
========================================
1. Do you want to create new Blog Post?

              OR
2. Do you want to create a New Project?

Enter yout choice (1/2):
========================================
"
read choice_post

  if [[ $choice_post == 1 ]];then
    create_post
  else
    create_project
  fi

  echo -ne "
====================================
Do you want to Run Hugo Server:
Enter yout choice (y/n):
====================================
  "
  read choice_run_server

  if [[ $choice_run_server == 'y' ]]; then
    run_hugo_server
  fi

  echo -ne "
==========================================
Do you want to Optimus Images:
Enter yout choice (y/n):
==========================================
  "
  read choice_optimus_image

  if [[ $choice_optimus_image == 'y' ]]; then
    reduce_image_size
  fi

  echo -ne "
==========================================
Do want to commit to GitHub:
Enter your choice (y/n):
==========================================
  "
  read choice_git

  if [[ $choice_git == 'y' ]]; then
    run_git
  fi

  bye
}

function bye()
{
  echo -ne "
===============================================
All Operation are completed. 
Have a Nice Day. 
Bye !!
===============================================
"
}
function main()
{
  logic
}
main


