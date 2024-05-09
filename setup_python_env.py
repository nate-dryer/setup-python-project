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
    venv.create(os.path.join(full_project_path, 'venv'), with_pip=True)

    # Open the project directory in Visual Studio Code
    subprocess.run(['code', full_project_path])

if __name__ == "__main__":
    main()
