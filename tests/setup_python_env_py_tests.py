import unittest
import os
from setup_python_env import main

class TestSetupPythonEnv(unittest.TestCase):
    def test_successful_setup(self):
        """Test case for successful setup"""
        # Assuming the function main() is modified to accept arguments for testing
        project_name = "test_project"
        project_location = "/tmp"
        main(project_name, project_location)
        self.assertTrue(os.path.exists(os.path.join(project_location, project_name)))

    def test_venv_creation(self):
        """Test case for virtual environment creation"""
        project_name = "test_project_venv"
        project_location = "/tmp"
        main(project_name, project_location)
        self.assertTrue(os.path.exists(os.path.join(project_location, project_name, 'venv')))

    def test_error_handling(self):
        """Test case for error handling when Visual Studio Code cannot be opened"""
        project_name = "test_project_error"
        project_location = "/nonexistentpath"
        with self.assertRaises(Exception):
            main(project_name, project_location)

if __name__ == '__main__':
    unittest.main()
