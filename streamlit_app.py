import streamlit as st
checker = ["lscpu"]
process.Popen(checker, stdout=subprocess.PIPE)
output, error = checker.communicate()
st.write(output)
