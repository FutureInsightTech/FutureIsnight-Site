Write-Host("
---------------------------------------------------------------------------
    ---    Name: Abdul Rafay
    ---    Github: github.com/rafay99-epic
    ---    Project Name: Portfolio-Website
    ---    Project: https://github.com/rafay99-epic/Portfolio-Website
    ---    Website: https://rafay99.info
----------------------------------------------------------------------------");

# This will ask user to enter the commit message
function git_Message()
{
    Write-Host("
-------------------------------------
    Enter your commit Message:
-------------------------------------");
    $commitMessage = Read-Host
    git commit -m $commitMessage
}
# This will ask user to push to the remote repo
function git_push()
{
    $Push= Read-Host "
-------------------------------------------------
Do you want to push to the remote repo? (y/n)
-------------------------------------------------"
        if ($Push -eq "y") {
            Write-Host("
---------------------------------------------------------      
    Pushing to the remote repo called: $OutputVariable
--------------------------------------------------------");
            git push
        } else {
            Write-Host("
--------------------------------------------------------------------
    Coding won't be Push to GitHub called: $OutputVariable
--------------------------------------------------------------------");
        }
}

# This 
$OutputVariable = (git branch --show-current) | Out-String
if( $OutputVariable -eq "main" ) {
    Write-Host("
------------------------------------
    You are on the Master Branch
-----------------------------------");
    git status
    git pull

} else
{
    Write-Host("
-----------------------------------------------
    You are on the Branch: $OutputVariable
-----------------------------------------------");
    git status
    git add *

    # Ask Git Message   
    git_Message
    # Ask to Push
    git_push
}
