########################################################################
#                                                                      #
#   Python template Docker image                                       #
#                                                                      #
########################################################################
FROM python


# Version
LABEL version="0.0.1"

# Description
LABEL description="Python base image"

# Autor
LABEL autor.nick="Q4.SaiBot" \
      autor.name="Evgeny"


# Install requirements packets
WORKDIR /pip

COPY   ./pip/requirements.txt \
        /pip/requirements.txt

RUN     pip install \
        --no-cache-dir \
        --upgrade \
        --requirement requirements.txt


# Main workdir
WORKDIR /data

COPY   ./data \
        /data

VOLUME [ "/data" ]


# Entrypoint
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]