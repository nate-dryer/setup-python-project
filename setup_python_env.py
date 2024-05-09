import os
import subprocess
import venv

def main():
    project_name = input("Enter the project name: ")
    project_location = input("Enter the project location (full path): ")
    full_project_path = os.path.join(project_location, project_name)
    src_path = os.path.join(full_project_path, 'src')
    tests_path = os.path.join(full_project_path, 'tests')
    requirements_path = os.path.join(full_project_path, 'requirements.txt')
    readme_path = os.path.join(full_project_path, 'README.md')

    # Create project directory and subdirectories
    os.makedirs(src_path, exist_ok=True)
    os.makedirs(tests_path, exist_ok=True)

    # Create project files
    open(requirements_path, 'a').close()
    with open(readme_path, 'w') as f:
        f.write(f'# {project_name}\n\nThis is a newly created project.')

    # Set up a Python virtual environment within the project directory
    # Check if the virtual environment already exists to optimize setup
    venv_path = os.path.join(full_project_path, 'venv')
    if not os.path.exists(venv_path):
        venv.create(venv_path, with_pip=True)
    else:
        print("Virtual environment already exists. Skipping creation.")

    # Open the project directory in Visual Studio Code
    # Added error handling for subprocess call
    try:
        subprocess.run(['code', full_project_path], check=True)
    except subprocess.CalledProcessError as e:
        print(f"Failed to open Visual Studio Code: {e}")

# Include comments to explain optimization techniques and error handling
# Optimization: Check for existing virtual environment before creation to avoid unnecessary setup.
# Error Handling: Manage potential subprocess failures when opening Visual Studio Code.

if __name__ == "__main__":
    main()
