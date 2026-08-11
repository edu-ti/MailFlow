FROM roundcube/roundcubemail:latest

# Substitui as logos na pasta fonte original do Roundcube (que será sincronizada no entrypoint)
COPY ./assets/LOGO-FB.png /usr/src/roundcubemail/skins/elastic/images/logo.svg
COPY ./assets/LOGO-FB.png /usr/src/roundcubemail/skins/elastic/images/logo_small.svg

# Anexa o CSS customizado ao arquivo de estilos principal do tema Elastic
COPY ./assets/custom.css /tmp/custom.css
RUN cat /tmp/custom.css >> /usr/src/roundcubemail/skins/elastic/styles/styles.min.css && rm /tmp/custom.css