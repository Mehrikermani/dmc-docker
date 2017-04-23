FROM tensorflow/tensorflow:0.9.0-gpu
MAINTAINER Darvin Yi <darvinyi@stanford.edu>

# Prepare for the Digital Mammography DREAM Challenge
RUN pip install --upgrade pip
RUN pip install pydicom
RUN pip install -U scikit-learn
RUN pip install tflearn #git+https://github.com/tflearn/tflearn.git

WORKDIR /
COPY DREAM_DM_pilot_tf.py .
COPY train.sh .
COPY test.sh .
