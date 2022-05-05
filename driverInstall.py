import sys
import wget
import yaml
import shutil
import os

platform=sys.platform

if platform == "win32":
  platform = "win"

if platform == "darwin":
  platform = "mac"

arch = 64 if sys.maxsize > 2**32 else 32

with open('variables.yaml') as config:
  browser = yaml.safe_load(config).get('BROWSER').lower()

chrome_base_url = 'https://chromedriver.storage.googleapis.com/101.0.4951.41/chromedriver_'
firefox_base_url = 'https://github.com/mozilla/geckodriver/releases/download/v0.30.0/geckodriver-v0.30.0-'

filename = ""

if browser == "chrome" or browser == "google chrome":
  if platform == "win":
    filename = wget.download(chrome_base_url + 'win32.zip')
  elif platform == "mac":
    filename = wget.download(chrome_base_url + 'mac64.zip')
  elif platform == "linux":
    filename = wget.download(chrome_base_url + 'linux64.zip')
elif browser == "firefox":
  if platform == "win":
    filename = wget.download(firefox_base_url + platform + str(arch) + '.zip')
  elif platform == "mac":
    filename = wget.download(firefox_base_url + 'macos.tar.gz')
  elif platform == "linux":
    filename = wget.download(firefox_base_url + 'linux' + str(arch) + '.tar.gz')
else:
  print("Unknown browser: ", browser)

print("\nUnpacking file: ", filename)
shutil.unpack_archive(filename)
os.remove(filename)