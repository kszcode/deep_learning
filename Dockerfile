FROM tensorflow/tensorflow:nightly-devel-py3

# RUN add-apt-repository -r ppa:fossfreedom/byzanz
# RUN apt-get -y update && apt-get install -y fortunes
# RUN apt-get -y update && apt-get install -y fortunes
# RUN add-apt-repository "deb http://cz.archive.ubuntu.com/ubuntu trusty main"

# RUN apt-get install -y libcv-dev
# RUN apt-get install -y python-opencv
# RUN apt-get install -y libopencv-dev
# RUN apt-get install -y libcv2.3
# RUN apt-get install -y opencv-doc

RUN apt-get -y update
RUN apt-get install -y libopencv-dev python-opencv

RUN pip --no-cache-dir install \
        imutils \
        keras \
        && \
    python -m ipykernel.kernelspec