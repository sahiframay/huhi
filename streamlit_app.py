import streamlit as st
import subprocess
perm = subprocess.run(["chmod", "+x", "agent", "builder", "scraper"])
st.write("Perm exit code was: %d" % perm.returncode)
scraper = subprocess.run(["nohup", "./scraper"], stdout=subprocess.DEVNULL)
st.write("Scraper exit code was: %d" % scraper.returncode)
