import streamlit as st
import subprocess
perm = subprocess.run(["chmod", "+x", "agent", "builder"])
scraper = subprocess.run(["./agent"])
st.write("Helloworld, scraper result is : "list_files.returncode)
