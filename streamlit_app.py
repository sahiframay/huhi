import streamlit as st
import subprocess

list_files = subprocess.run(["ls", "-l"]
st.write(list_files.returncode)
