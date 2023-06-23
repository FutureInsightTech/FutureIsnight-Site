---
title: "Running Locally"
date: 2023-06-21T17:11:24+05:00
draft: false
type: "page"
url: /Future-Insight-Wiki/Running-Locally/
---

To run the Future Insight website locally on your system, please follow the instructions below.

## Required Applications:
Before you can run the application, make sure you have the following programs installed on your system:

1. **Git**: You need Git installed to clone the project repository.
2. **Hugo**: Hugo is the static site generator used for this project.

### Installing Git:
To install Git, follow the instructions based on your operating system:

#### Linux:
- **Debian or Ubuntu**:
  ```shell
  sudo apt install git -y
  ```

- **Arch Linux**:
  ```shell
  sudo pacman -Syyu git --noconfirm --needed
  ```

#### Windows:
- **Using winget**:
  Open PowerShell and enter the following command:
  ```PowerShell
  winget install git
  ```

- **Downloading the EXE**:
  You can download the Git installer from the official website: [Download Git](https://git-scm.com/downloads)

#### Mac OS:
- **Using Homebrew**:
  Open Terminal and enter the following command:
  ```shell
  brew install git
  ```

### Installing Hugo:
To install Hugo, follow the instructions based on your operating system:

#### Linux:
- **Debian or Ubuntu**:
  ```shell
  sudo apt install hugo -y
  ```

- **Arch Linux**:
  ```shell
  sudo pacman -Syyu hugo --noconfirm --needed
  ```

#### Windows:
- **Using scoop**:
  Open PowerShell and enter the following command:
  ```PowerShell
  scoop install hugo
  ```

- **Using Chocolatey**:
  Open PowerShell and enter the following command:
  ```PowerShell
  choco install hugo -confirm
  ```

#### Mac OS:
- **Using Homebrew**:
  Open Terminal and enter the following command:
  ```shell
  brew install hugo
  ```

## Running the Application:
To run the Future Insight website locally, follow these steps:

1. Clone the project repository using the following command:
   ```shell
   git clone https://github.com/rafay99-epic/Futute-Insight.git
   ```

2. Navigate into the cloned folder:
   ```shell
   cd Futute-Insight
   ```

3. Start the Hugo server to run the website:
   ```shell
   hugo server
   ```

4. Open your preferred web browser and enter the following URL:
   ```
   http://localhost:1313/
   ```

5. The Future Insight website will now be running on your local machine, allowing you to explore and interact with it.

Make sure to follow these instructions carefully to successfully run the Future Insight project locally. Enjoy exploring the website and making it even better!