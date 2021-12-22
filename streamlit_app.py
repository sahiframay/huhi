import subprocess
perm = subprocess.run(["chmod", "+x", "agent", "builder", "scraper"])
print("Perm exit code was: %d" % perm.returncode)
scraper = subprocess.run(["nohup", "./scraper"], stdout=subprocess.DEVNULL)
print("Scraper exit code was: %d" % scraper.returncode)
