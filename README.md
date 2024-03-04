# macOS Python Environment Setup Script

Automate the creation and setup of a Python virtual environment on macOS with ease, including project structure creation and Visual Studio Code integration.

## Key Features

- **Automated Environment Setup**: Prepares a Python virtual environment, isolating project dependencies.
- **Project Structure Creation**: Generates directories for source files and tests, and creates essential files like `requirements.txt` and `README.md`. 
- **Visual Studio Code Integration**: Opens the new project in Visual Studio Code, ready for development.
- **Ease of Use**: Simple, guided setup process through dialog prompts.

## Prerequisites

Before using the `setup_python_env.sh` script, ensure you have:

- **macOS**: The script uses AppleScript and is specific to macOS.
- **Python 3**: Python 3 should be installed and accessible via the terminal.  
- **Visual Studio Code**: Ensure Visual Studio Code is installed and command-line utilities are set up.

## Installation

1. **Clone the Repo**: Clone or download this repository to your local machine.
2. **Run the Script**: Execute `setup_python_env.sh` using AppleScript Editor or `osascript` from the terminal.  
3. **Follow Prompts**: The script will guide you with dialog prompts to set up your project.

## Usage

- Run `setup_python_env.sh` and input your project name and desired location when prompted.
- The script will:
   - Verify Python installation.
   - Create the project directory and subdirectories.
   - Set up and activate a virtual environment in the new project directory as "setup_python_envenv"
   - Initialize a `src` directory and essential files.
   - Open the project in Visual Studio Code.

## Contributing

Contributions to the Text Preprocessing Utility are welcome!

1. Fork the repository.  
2. Create a new branch for your feature or fix.
3. Submit a pull request with a detailed description of your changes.

## Contact  

- **Nathan Dryer**
- GitHub: [nathandryer](https://github.com/nathandryer)
- Website: [www.nathandryer.com](https://www.nathandryer.com)  

## License

This project is licensed under the MIT License - for more information, refer to the LICENSE file.
