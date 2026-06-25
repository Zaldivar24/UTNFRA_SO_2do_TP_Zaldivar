#!/bin/bash
cd ~/UTN-FRA_SO_Examenes/202406/docker/
cat > index.html << 'HTML'
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Junio 2024 </h2> </br>
<h3> Nahidia Zaldivar</h3>
<h3> División: 116</h3>
</div>
HTML
cat > Dockerfile << 'DOCKER'
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
DOCKER
docker build -t web1-zaldivar .
docker tag web1-zaldivar zaldivar24/web1-zaldivar:latest
docker push zaldivar24/web1-zaldivar:latest
echo "docker run -d -p 8080:80 zaldivar24/web1-zaldivar:latest" > run.sh
chmod +x run.sh
