# Serve os arquivos estáticos com nginx (Coolify: Build Pack "Dockerfile", porta 80, healthcheck em /)
FROM nginx:alpine
COPY *.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1
