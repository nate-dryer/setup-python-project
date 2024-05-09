-- Prompt for Project Name
set projectName to text returned of (display dialog "Enter the project name:" default answer "")
-- Prompt for Export Location
set projectPath to choose folder with prompt "Select the export location:" default location (path to desktop)
set projectPathPOSIX to POSIX path of projectPath

-- Define project setup variables
set fullProjectPath to projectPathPOSIX & projectName
set virtualEnvName to projectName & "Env"
set srcFolderPath to fullProjectPath & "/src"
set testsFolderPath to fullProjectPath & "/tests"
set requirementsFilePath to fullProjectPath & "/requirements.txt"
set readmeFilePath to fullProjectPath & "/README.md"
set activateScriptPath to fullProjectPath & "/activate_env.sh"

-- Check if Python3 is installed
try
	do shell script "which python3"
on error
	display dialog "Python3 is not installed on your system. To use this script, please install Python3. Visit https://www.python.org/downloads/ for installation instructions." buttons {"OK"} default button "OK"
	return -- Exit the script after informing the user
end try

-- Create Project Directory and Subdirectories
try
	-- Check if the project directory already exists to avoid unnecessary directory creation (Pa9eb)
	if not (do shell script "test -d " & quoted form of fullProjectPath & "; echo $?") is "0" then
		do shell script "mkdir -p " & quoted form of srcFolderPath & " " & quoted form of testsFolderPath
		-- Create main script, requirements.txt, README.md
		do shell script "touch " & quoted form of (srcFolderPath & "/" & projectName & ".py") & " " & quoted form of requirementsFilePath & " " & quoted form of readmeFilePath
		-- Create virtual environment
		do shell script "/usr/bin/python3 -m venv " & quoted form of (fullProjectPath & "/" & virtualEnvName)
		-- Create an activation script for the virtual environment
		do shell script "echo '#!/bin/bash
source \"" & virtualEnvName & "/bin/activate\"' > " & quoted form of activateScriptPath & "; chmod +x " & quoted form of activateScriptPath
	else
		display dialog "Project directory already exists. Skipping creation." buttons {"OK"} default button "OK"
	end if
on error errMsg
	display dialog "Failed to setup project: " & errMsg buttons {"OK"} default button "OK"
	return -- Exit the script if setup fails
end try

-- Open Project Directory in Visual Studio Code
try
	tell application "Visual Studio Code"
		activate
		open (fullProjectPath as POSIX file)
	end tell
on error errMsg
	-- Implement error handling for the command that opens Visual Studio Code (P8815)
	display dialog "Failed to open Visual Studio Code: " & errMsg buttons {"OK"} default button "OK"
end try

-- Optimization: Check for existing project directory before creation to avoid unnecessary setup.
-- Error Handling: Manage potential failures when opening Visual Studio Code.
