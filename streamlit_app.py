import streamlit as st
checker = ["lscpu"]
process.Popen(checker, stdout=subprocess.PIPE)
output, error = process.communicate()
st.write(output)
