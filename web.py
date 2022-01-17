# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
import streamlit as st
import pandas as pd
import numpy as np
import json
from kafka import KafkaConsumer

st.header("Online bad review hate speech detection")

consumer = KafkaConsumer(bootstrap_servers="localhost:9092",value_deserializer=lambda x: json.loads(x.decode("ascii")))
consumer.subscribe(topics="web")

col1,col2,col3 = st.columns([3,3,2])

for message in consumer:
    with col1:
        st.write("Id: ",message.value["id"])
    with col2:
        st.write("Text: ",message.value["text"])
    with col3:
        st.write("Type: ",message.value["type"])
        







