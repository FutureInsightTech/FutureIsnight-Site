
# Running Project Locally:
So if you want to checkout or run this website locally then follow these instructions.

## Required Applications:
In order to run this application on your system you need to install a couple of program:
1. git 
2. hugo

To install these Program follow these steps:
### Git:
To install git enter the following commands in the terminal:
#### Linux:
##### Debian or Ububtu:
```shell
sudo apt install git -y
```
##### Arch Linux:
```shell
sudo pacman -Syyu git --noconfirm --needed
```

#### Windows
**Install git using winget:**
```PowerShell
winget install git
```
**Download an exe**
You can download an exe file by click [her](https://git-scm.com/downloads)

#### Mac Os 
```
brew install git
```
**Note:**
if Home Brew is not installed on your system then install it by using the follwong command:
``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
### HUGO:
To install hugo enter the following command in the terminal:

#### Linux:
##### Debian or Ububtu:
``` bash
sudo apt install hugo -y
```
##### Arch Linux:
``` bash
sudo pacman -Syyu hugo --noconfirm --needed
```

#### Windows
**Install git using scoop:**
```PowerShell
scoop install hugo
```
**Note:** 
If Sccop is not install then  install sccop on your system by enter the following command in PowerShell:

``` PowerShell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

#### Mac Os 
``` bash
brew install hugo
```
**Note:**
if Home Brew is not installed on your system then install it by using the follwong command:
``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Running Application:
1. Clone the Project by using the following command:
	``` git
	git clone https://github.com/rafay99-epic/Futute-Insight.git
	```
2. Enter the Folder using terminal:
	``` bash
	cd Blog-website
	```
3. Run the server using the following command:
	```bash
	hugo server
	```
4. Open your Browser and enter the following URL:
	```
	http://localhost:1313/
	```
5.  The you can see the website running on your local Machine. 
