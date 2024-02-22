@echo off

REM Check python is available
where /Q python -V
if not errorlevel 0 (
  echo Please install python3, see https://www.python.org/downloads/
  pause
  exit 0
)

REM Check pip is available
where /Q pip -V
if not errorlevel 0 (
  echo Please install pip3
  pause
  exit 0
)

REM Check pip is available
where /Q pipenv --version
if not errorlevel 0 (
  echo Please install pipenv, e.g. pip install pipenv
  pause
  exit 0
)

REM Show installed version
echo Installed Versions:
python -V
pip -V
pipenv --version


REM Check for existing virtual python environment
if not exist Pipfile (
  echo Create virtual environment
  pipenv install pyqt6-tools
)

REM Start virtual environment and run start script in background
start "" pipenv run env.bat

exit 0