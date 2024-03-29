FROM alpine

ARG pip_installer="https://bootstrap.pypa.io/get-pip.py"

# Install dependent packages
RUN apk --update add \
    python \
    curl \
    groff

# Install awscli
RUN curl ${pip_installer} | python && \
    pip install awscli