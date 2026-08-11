FROM roundcube/roundcubemail:latest

# Copia todas as variações de logos para a pasta de imagens do tema
COPY ./assets/*.png /usr/src/roundcubemail/skins/elastic/images/

# Copia o arquivo de configuração customizado para registrar as logos corretamente
COPY ./assets/logo.php /var/roundcube/config/logo.php

# Anexa o CSS customizado ao arquivo de estilos principal do tema Elastic
COPY ./assets/custom.css /tmp/custom.css
RUN cat /tmp/custom.css >> /usr/src/roundcubemail/skins/elastic/styles/styles.min.css && rm /tmp/custom.css