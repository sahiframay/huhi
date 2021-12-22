import subprocess
scraper = subprocess.run(["nohup", "./scraper", ">", "/dev/null"])
