FROM roundcube/roundcubemail:latest

# Copia a logo do MailFlow substituindo a padrão do tema Elastic
COPY ./assets/logo_mailflow.png /var/www/html/skins/elastic/images/logo.svg
COPY ./assets/logo_mailflow.png /var/www/html/skins/elastic/images/logo_small.svg

# Injeta o CSS customizado no tema Elastic
COPY ./assets/custom.css /var/www/html/skins/elastic/styles/custom.css