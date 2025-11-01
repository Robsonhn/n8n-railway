FROM n8nio/n8n:latest

ENV GENERIC_TIMEZONE="America/Sao_Paulo"
ENV TZ="America/Sao_Paulo"

# Permitir acesso HTTP externo
ENV N8N_PROTOCOL=http
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

# Persistência de dados
VOLUME /home/node/.n8n

EXPOSE 5678

CMD ["n8n", "start"]
