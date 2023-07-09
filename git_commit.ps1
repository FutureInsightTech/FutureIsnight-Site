Write-Host "
                        ███████╗██╗   ██╗████████╗██╗   ██╗██████╗ ███████╗    ██╗███╗   ██╗███████╗██╗ ██████╗ ██╗  ██╗████████╗
                        ██╔════╝██║   ██║╚══██╔══╝██║   ██║██╔══██╗██╔════╝    ██║████╗  ██║██╔════╝██║██╔════╝ ██║  ██║╚══██╔══╝
                        █████╗  ██║   ██║   ██║   ██║   ██║██████╔╝█████╗      ██║██╔██╗ ██║███████╗██║██║  ███╗███████║   ██║   
                        ██╔══╝  ██║   ██║   ██║   ██║   ██║██╔══██╗██╔══╝      ██║██║╚██╗██║╚════██║██║██║   ██║██╔══██║   ██║   
                        ██║     ╚██████╔╝   ██║   ╚██████╔╝██║  ██║███████╗    ██║██║ ╚████║███████║██║╚██████╔╝██║  ██║   ██║   
                        ╚═╝      ╚═════╝    ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝    ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝                                                                                                      
                                                "Unlocking the Future, One Insight at a Time"                                                                                      
"
# Section: System Check
Write-Host "=== System Check ==="
Write-Host "Checking system status..."

# Check if git is installed
if (!(Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Git is not installed. Please install Git to use this script."
    exit 1
}

Write-Host "✅ Git is installed."

Write-Host

# Section: Commit Message
Write-Host "=== Commit Message ==="
$message = Read-Host "✏️ Enter your commit message"

Write-Host

# Section: Git Add
Write-Host "=== Git Add ==="
git add .

Write-Host

# Section: Git Commit
Write-Host "=== Git Commit ==="
git commit -m $message

Write-Host

# Section: Check Commit Success
Write-Host "=== Check Commit Success ==="
if ($LASTEXITCODE -eq 0) {
    Write-Host "Commit successful! 🎉"
}
else {
    Write-Host "Commit failed. Please check your changes and try again. ❌"
    exit 1
}

Write-Host

# Section: Push Commit
Write-Host "=== Push Commit ==="
$currentBranch = git rev-parse --abbrev-ref HEAD

$remoteBranch = git ls-remote --exit-code --heads origin $currentBranch
if ($remoteBranch) {
    # Remote branch exists
    Write-Host "🔗 Remote branch detected. Pushing commit..."
    git push
    Write-Host "Commit pushed successfully! 🚀"
}
else {
    # Local branch exists
    Write-Host "🌿 Local branch detected. Publishing branch..."
    git branch --set-upstream-to=origin/$currentBranch $currentBranch
    git push -u origin $currentBranch
    Write-Host "Branch published and commit pushed successfully! 🚀"
}

Write-Host
