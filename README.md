# Automation Code Challenge
Coding challenge using robot framework with Selenium library for python3.

## Requirements
- Python 3.10
- Pip
- Google chrome or Firefox

## Setup
### Python Dependencies
All the python libraries can be installed by running the following in the root directory:
```
pip install -r requirements.txt
```

### Configuring Options
The `variables.yaml` file can be modified to test different usernames, passwords, regions, languages, and browsers.

**NOTE:**
Only Google Chrome and Firefox are supported as I was unable to locate the webdrivers for Edge, Opera, and other browsers

### Downloading Drivers
Because Selenium controls a web browser, it needs specific drivers to be downloaded. A basic script is included to download Firefox and Chrome drivers.
After `variables.yaml` has been configured, run `python driverInstall.py` and the appropriate driver should be downloaded and extracted into the root folder of the project.

**NOTE:** This script has only been tested with Windows 10 64-bit. If it does not work on your platform, the appropriate drivers for Chrome can be downloaded [here](https://chromedriver.storage.googleapis.com/index.html?path=101.0.4951.41/) while drivers for Firefox can be downloaded [here](https://github.com/mozilla/geckodriver/releases/tag/v0.30.0).

## Running
Open a terminal/command line in the root directory and run
```
robot tests
```
A browser window should open up shortly and proceed all the way until the verification code page. After 2 seconds, the window will close and a `report.html` will be created in the project directory which shows the status of all the tests.
