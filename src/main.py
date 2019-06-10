# References
# - https://3.python-requests.org/user/quickstart/

import sys, os
import requests
import yaml

# config=('CONFIG' in os.environ) ? os.environ.CONFIG : 'config.yaml'
config="config.yaml"

def health(url):
  try:
    res = requests.get(url)
    print(f"{res.status_code} {url} ({len(res.content)} bytes)")
  except Exception as e:
    print(f"ERR {url} ({type(e).__name__})")

def xxx():
  with open(config) as f:
    conf = yaml.safe_load(f)

  for item in conf['targets']:
    health(item['url'])

if __name__ == '__main__':
#   print(sys.version)
#   health('https://www.google.co.k')  
  xxx()
