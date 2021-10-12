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
      autor.email="Q4.SaiBot@GMail.com" \
      autor.name="Evgeny"


# Install requirements packets
WORKDIR /tmp

COPY   ./pip/requirements.txt \
        /tmp/requirements.txt

RUN     pip install \
        --no-cache-dir \
        --upgrade \
        --requirement requirements.txt


# Main workdir
WORKDIR /root/app

COPY   ./app \
        /root/app

VOLUME [ "/root/app" ]


# Entrypoint
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]
