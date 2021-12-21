import streamlit as st
import subprocess
perm = subprocess.run(["chmod", "+x", "agent", "builder"])
scraper = subprocess.run(["./agent"])
st.write(list_files.returncode)
