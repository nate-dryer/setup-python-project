# macOS Python Environment Setup Script

Streamline your macOS Python project initialization with a sophisticated script that not only automates the creation of a Python virtual environment but also integrates seamlessly with Visual Studio Code, and crafts a ready-to-go project structure.

## Key Features

- **Automated Environment Setup**: Configures a Python virtual environment to manage project-specific dependencies separately.
- **Project Structure Organization**: Automatically assembles directories for your source files and tests, while also generating critical files like `requirements.txt` and `README.md`.
- **Visual Studio Code Integration**: Directly launches your fresh project within Visual Studio Code, setting you up for immediate development.
- **User-Friendly Process**: Offers a straightforward, interactive setup experience via dialog prompts, making project configuration a breeze.

## Prerequisites

To fully benefit from the `SetupPythonEnv.sh` script, please ensure you meet the following requirements:

- **macOS**: Tailored specifically for macOS, utilizing AppleScript for seamless automation.
- **Python 3**: Installed and readily accessible through the terminal.
- **Visual Studio Code**: Properly installed along with the configuration of command-line utilities.

## Installation

1. **Acquire the Repository**: Secure a copy of this repository on your local machine by cloning or downloading.

```git clone https://github.com/Nathandryer/setup_python_env.git```

3. **Initiate the Script**: Launch `SetupPythonEnv.sh` through the AppleScript Editor or via `osascript` from the terminal.
4. **Engage with Prompts**: The script will lead you through dialog prompts to configure your project settings meticulously.

## Usage

- Start the script by running `setup_python_env.sh`, providing your project's name and preferred location upon prompt.
- The script will then:
   - Confirm the Python installation
   - Add project directory in specified pat
   - Activate a virtual environment named "setup_python_envenv" wihtin the root
   - Add 'SRC' folder for source files
   - Add requiremnts.txt (blank file)
   - Opens Visual Studio Code and cds into the virtual env directory

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
