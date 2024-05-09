#!/bin/bash

# Test script for setup_python_env.sh

# Test setup
TEST_DIR="/tmp/setup_python_env_tests"
mkdir -p "$TEST_DIR"
cd "$TEST_DIR"

# Test 1: Check script execution without errors
echo "Running Test 1: Script Execution"
./setup_python_env.sh "TestProject" "$TEST_DIR"
if [ $? -eq 0 ]; then
  echo "Test 1 Passed: Script executed successfully."
else
  echo "Test 1 Failed: Script execution encountered errors."
fi

# Test 2: Verify project directory creation
echo "Running Test 2: Project Directory Creation"
if [ -d "TestProject" ]; then
  echo "Test 2 Passed: Project directory created successfully."
else
  echo "Test 2 Failed: Project directory not found."
fi

# Test 3: Check for virtual environment creation
echo "Running Test 3: Virtual Environment Creation"
if [ -d "TestProject/TestProjectEnv" ]; then
  echo "Test 3 Passed: Virtual environment created successfully."
else
  echo "Test 3 Failed: Virtual environment not found."
fi

# Test 4: Verify src and tests directories creation
echo "Running Test 4: src and tests Directories Creation"
if [ -d "TestProject/src" ] && [ -d "TestProject/tests" ]; then
  echo "Test 4 Passed: src and tests directories created successfully."
else
  echo "Test 4 Failed: src and/or tests directories not found."
fi

# Cleanup
rm -rf "$TEST_DIR"
