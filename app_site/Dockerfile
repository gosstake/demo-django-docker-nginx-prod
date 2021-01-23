FROM python:3.8-alpine

ENV PATH="./site/scripts:${PATH}"

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache --virtual .tmp gcc libc-dev linux-headers
RUN pip install -r /requirements.txt
RUN apk del .tmp

RUN mkdir /site
COPY ./site /site
WORKDIR /site
COPY ./scripts /site/scripts
COPY ./entrypoint.sh /site/scripts/entrypoint.sh
RUN chmod +x /site/scripts/*


RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/static
RUN adduser -D user
RUN chown -R user:user /vol
RUN chmod -R 755 /vol/web
RUN chmod 777 /site/scripts/entrypoint.sh
USER user

ENTRYPOINT ["/site/scripts/entrypoint.sh"]
CMD ["entrypoint.sh"]
