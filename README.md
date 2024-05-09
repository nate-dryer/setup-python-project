# macOS Python Environment Setup Script

Streamline your macOS Python project initialization with a sophisticated script that not only automates the creation of a Python virtual environment but also integrates seamlessly with Visual Studio Code, and crafts a ready-to-go project structure.

## Key Features

- **Automated Environment Setup**: Configures a Python virtual environment to manage project-specific dependencies separately.
- **Project Structure Organization**: Automatically assembles directories for your source files and tests, while also generating critical files like `requirements.txt` and `README.md`.
- **Visual Studio Code Integration**: Directly launches your fresh project within Visual Studio Code, setting you up for immediate development.
- **User-Friendly Process**: Offers a straightforward, interactive setup experience via dialog prompts, making project configuration a breeze.
- **Script Flexibility**: Now available in both shell script (`setup_python_env.sh`) and Python script (`setup_python_env.py`) versions, catering to different user preferences.

## Prerequisites

To fully benefit from the scripts `setup_python_env.sh` and `setup_python_env.py`, please ensure you meet the following requirements:

- **macOS**: Tailored specifically for macOS, utilizing AppleScript for seamless automation in the shell script version.
- **Python**: Installed and readily accessible through the terminal.
- **Visual Studio Code**: Properly installed along with the configuration of command-line utilities.

## Installation

1. **Acquire the Repository**: Secure a copy of this repository on your local machine by cloning or downloading.

```git clone https://github.com/Nathandryer/setup_python_env.git```

2. **Initiate the Script**: Launch `setup_python_env.sh` through the AppleScript Editor or via `osascript` from the terminal for the shell script version. For the Python version, run `python setup_python_env.py` from the terminal.
3. **Engage with Prompts**: The script will lead you through dialog prompts to configure your project settings meticulously.

## Usage

- To use the shell script, start it by running `setup_python_env.sh`, providing your project's name and preferred location upon prompt.
- To use the Python script, run `python setup_python_env.py` and follow the prompts to specify your project's name and location.
- Both scripts will:
   - Confirm the Python installation
   - Create the project directory in the specified path
   - Activate a virtual environment within the project directory
   - Add 'src' and 'tests' folders for source files and tests
   - Create a `requirements.txt` file (blank file)
   - Open the project in Visual Studio Code

## Contributing

Your contributions to the Text Preprocessing Utility are highly valued!

1. Fork the repository.
2. Branch out for your feature or fix.
3. Propel a pull request with an elaborate description of your amendments.

## Contact  

- **Nathan Dryer**
- GitHub: [nathandryer](https://github.com/nathandryer)
- Website: [www.nathandryer.com](https://www.nathandryer.com)  

## License

This endeavor is protected under the MIT License - for detailed information, see the LICENSE file.
