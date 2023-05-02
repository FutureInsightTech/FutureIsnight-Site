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

#  Compoents
function run_hugo_server()
{
  echo -ne "
=======================
Running Hugo Server
=======================
"
  hugo server --disableFastRender
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
======================================
Enter the name of the Blog:

Please enter the extension as well.
For this Project the extension is .md
======================================
  "
  read  post_name

echo "
==================================
Please Enter the Tag Name:

Choose:
1. machine-learning
2. essential-skills
3. Web-Development

Choose Options: (1/2/3)
====================================
"
read tag

case $tag in
  1)
    tag_name="machine-learning"
    ;;
  2)
    tag_name="essential-skills"
    ;;
  3)
    tag_name="Web-Development"
    ;;
  *)
    echo "Invalid option"
    exit 1
    ;;
esac

hugo new "post/$year/$tag_name/$post_name"

}

# The Logic of the application
function logic()
{

  echo -ne "
========================================
1. Do you want to create new Blog Post?

Enter yout choice (1/None):
========================================
"
read choice_post

  if [[ $choice_post == 1 ]];then
    create_post
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

  bye
}

# Bye function
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
# Main Function
function main()
{
  logic
}
main


