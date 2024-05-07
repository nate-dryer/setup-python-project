# Prompt for Project Name
read -p "Enter the project name: " projectName
# Prompt for Export Location
read -p "Select the export location (default is current directory): " projectPath
projectPath=${projectPath:-$(pwd)}

# Define project setup variables
fullProjectPath="$projectPath/$projectName"
virtualEnvName="${projectName}Env"
srcFolderPath="$fullProjectPath/src"
testsFolderPath="$fullProjectPath/tests"
requirementsFilePath="$fullProjectPath/requirements.txt"
readmeFilePath="$fullProjectPath/README.md"
activateScriptPath="$fullProjectPath/activate_env.sh"

# Check if Python3 is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 is not installed on your system. To use this script, please install Python3. Visit https://www.python.org/downloads/ for installation instructions."
    exit
fi

# Create Project Directory and Subdirectories
mkdir -p "$srcFolderPath" "$testsFolderPath"
# Create main script, requirements.txt, README.md
touch "$srcFolderPath/$projectName.py" "$requirementsFilePath" "$readmeFilePath"
# Create virtual environment
python3 -m venv "$fullProjectPath/$virtualEnvName"
# Create an activation script for the virtual environment
echo '#!/bin/bash
source "'"$virtualEnvName"'/bin/activate"' > "$activateScriptPath"
chmod +x "$activateScriptPath"

# Open Project Directory in Visual Studio Code
if command -v code &> /dev/null
then
    code "$fullProjectPath"
else
    echo "Visual Studio Code is not installed or not in PATH. Please open the project manually."
fi
