whoami
pwd
ls -la
hostnamect1
hostnamectl
ls /home/vagrant/carpeta_compartida/
exit
whoami
pwd
ssh-keygen
whoami
ls -la
ssh-keygen
cat ~/.ssh/id_rsa.pub
cd ~/repogit/TP_AySO
pwd
cd ~
mkdir repogit
cd repogit
git clone git@github.com:Zaldivar24/TP_AySO.git
cd TP_AySO
pwd
cat /etc/passwd
man grep
grep UBUNTU /etc/passwd
grep ubuntu /etc/passwd
grep -i Ubuntu /etc/passwd
sudo grep -i ubuntu /etc/shadow
sudo grep -i ubuntu /etc/shadow | awk -F':' '{print $2}' > datos_usuario.txt
whoami
echo "Usuario=$(whoami)" >> datos_usuario.txt
cat datos_usuario.txt
pwd
git add .
git config --global user.email "nahi.zaldivar@gmail.com"
git config --global user.name "Zaldivar24"
git commit -m "ADD: agregado 1er ejercicio sobre datos_usuarios.txt"
git status
grep "model name" /proc/cpuinfo | head -n1 > info_pc.txt
cat info_pc.txt
git add .
git commit -m "feat: Añadiendo información de CPU"
git status
grep -v nologin /etc/passwd | head -n10 | sort -k7 > lista_ordenada.txt
cat lista_ordenada.txt
git add .
git commit -m "ADD: Listado de usuarios ordenada"
git status
cat >> README.md << "EOF"
Alumno: Nahidia Zaldivar Alcantara
División: 116
Turno: Mañana
EOF

cat README.md
git checkout README.md
cat >> README.md << "EOF"
Alumno: Nahidia Zaldivar Alcantara
División: 116
Turno: Mañana
EOF

cat README.md
git checkout README.md
cat >> README.md << "EOF"

Alumno: Nahidia Zaldivar Alcantara
Division: 116
Turno: Mañana
EOF

cat README.md}
cat README.md 
git add .
git commit -m "docs: Agregada la información del alumno al README"
git status
mkdir -p ~/TP1/{arquitectura/{Clase1,Clase2,Clase3,Clase4,Clase5},so/{Clase1,Clase2,Clase3,Clase4,Clase5,Clase6}}
cat > script_dir.sh << 'EOF'
#!bin/bash
mkdir -p ~/TP1/{arquitectura/{Clase1,Clase2,Clase3,Clase4,Clase5},so/{Clase1,Clase2,Clase3,Clase4,Clase5,Clase6}}
EOF

rm script_dir.sh
cat > script_dir.sh << 'EOF'
#!/bin/bash
mkdir -p ~/TP1/{arquitectura/{Clase1,Clase2,Clase3,Clase4,Clase5},so/{Clase1,Clase2,Clase3,Clase4,Clase5,Clase6}}
EOF

chmod +x script_dir.sh
./script_dir.sh
tree ~/TP1
sudo apt update
sudo apt install tree -y
tree ~/TP1
git add .
git commit -m "ADD: Añadiendo script"
git status
history -a
cp ~/.bash_history "Historial_comandos_NahidiaZaldivar.txt"
git add .
sudo apt update
sudo apt install wget gpg -y
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7D15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible -y
ansible --version
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7D15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
sudo apt update
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt update
sudo apt install ansible -y
ansible --version
git --version
sudo fdisk -l | grep "Disk /dev/sd"
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdc1
sudo pvcreate /dev/sdc2
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_tem /dev/sdc2
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -l +100%FREE -n lv_workareas vg_datos
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvremove /dev/mapper/vg_datos-lv_workareas
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -l 100%FREE -n lv_workareas vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 512M -n lv_swap vg_tem
sudo lvremove /dev/mapper/vg_tem-lv_swap
sudo lvremove /dev/mapper/vg_datos-lv_workareas -y
sudo lvcreate -l +100%FREE -n lv_workareas vg_datos
sudo lvreduce -L 1.49G /dev/mapper/vg_datos-lv_workareas
sudo lvcreate -L 8M -n lv_docker vg_datos
sudo mkswap /dev/sdd1
sudo swapon /dev/sdd1
sudo lvs
sudo free -h
sudo lvreduce -L 1.48G /dev/mapper/vg_datos-lv_workareas
sudo lvcreate -L 8M -n lv_docker vg_datos
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkdir -p /work
sudo mkdir -p /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
df -h | grep -E "work|docker"
sudo bash -c "echo '/dev/mapper/vg_datos-lv_workareas /work ext4 defaults 0 0' >> /etc/fstab"
sudo bash -c "echo '/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 0' >> /etc/fstab"
sudo bash -c "echo '/dev/sdd1 none swap sw 0 0' >> /etc/fstab"
cat /etc/fstab | grep -E "work|docker|swap"
sudo mount -a
history -a
vagrant halt
exit
df -h | grep -E "work|docker"
sudo lvs | grep lv_docker
free -h | grep Swap
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd ~
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo mkdir -p /usr/local/bin/zaldivar
sudo cat > /usr/local/bin/zaldivar/AltaUser-Groups.sh << 'EOF'
#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Uso: $0 <usuario_clave> <archivo_lista>"
    exit 1
fi

USUARIO_CLAVE=$1
ARCHIVO_LISTA=$2

if [ ! -f "$ARCHIVO_LISTA" ]; then
    echo "Error: Archivo $ARCHIVO_LISTA no encontrado"
    exit 1
fi

CLAVE=$(sudo grep "^$USUARIO_CLAVE:" /etc/shadow | awk -F':' '{print $2}')

if [ -z "$CLAVE" ]; then
    echo "Error: Usuario $USUARIO_CLAVE no encontrado en /etc/shadow"
    exit 1
fi

while IFS=',' read -r usuario grupo home; do
    [ -z "$usuario" ] && continue
    [[ "$usuario" == \#* ]] && continue

    if ! getent group "$grupo" > /dev/null 2>&1; then
        sudo groupadd "$grupo"
        echo "Grupo $grupo creado"
    else
        echo "Grupo $grupo ya existe"
    fi

    if ! id "$usuario" > /dev/null 2>&1; then
        sudo useradd -m -s /bin/bash -g "$grupo" -p "$CLAVE" "$usuario"
        echo "Usuario $usuario creado en grupo $grupo"
    else
        echo "Usuario $usuario ya existe"
    fi

done < "$ARCHIVO_LISTA"

echo "Proceso completado."
EOF

sudo rm /usr/local/bin/zaldivar/AltaUser-Groups.sh
sudo cat > /usr/local/bin/zaldivar/AltaUser-Groups.sh << 'EOF'
#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 <usuario_clave> <archivo_lista>"
    exit 1
fi

USUARIO_CLAVE=$1
ARCHIVO_LISTA=$2

if [ ! -f "$ARCHIVO_LISTA" ]; then
    echo "Error: Archivo $ARCHIVO_LISTA no encontrado"
    exit 1
fi

CLAVE=$(sudo grep "^$USUARIO_CLAVE:" /etc/shadow | awk -F':' '{print $2}')

if [ -z "$CLAVE" ]; then
    echo "Error: Usuario $USUARIO_CLAVE no encontrado en /etc/shadow"
    exit 1
fi

while IFS=',' read -r usuario grupo home; do
    [ -z "$usuario" ] && continue
    [[ "$usuario" == \#* ]] && continue

    if ! getent group "$grupo" > /dev/null 2>&1; then
        sudo groupadd "$grupo"
        echo "Grupo $grupo creado"
    else
        echo "Grupo $grupo ya existe"
    fi

    if ! id "$usuario" > /dev/null 2>&1; then
        sudo useradd -m -s /bin/bash -g "$grupo" -p "$CLAVE" "$usuario"
        echo "Usuario $usuario creado en grupo $grupo"
    else
        echo "Usuario $usuario ya existe"
    fi

done < "$ARCHIVO_LISTA"

echo "Proceso completado."
EOF

sudo mkdir -p /usr/local/bin/zaldivar
sudo cat > /usr/local/bin/zaldivar/AltaUser-Groups.sh << 'EOF'
#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 <usuario_clave> <archivo_lista>"
    exit 1
fi

USUARIO_CLAVE=$1
ARCHIVO_LISTA=$2

if [ ! -f "$ARCHIVO_LISTA" ]; then
    echo "Error: Archivo $ARCHIVO_LISTA no encontrado"
    exit 1
fi

CLAVE=$(sudo grep "^$USUARIO_CLAVE:" /etc/shadow | awk -F':' '{print $2}')

if [ -z "$CLAVE" ]; then
    echo "Error: Usuario $USUARIO_CLAVE no encontrado en /etc/shadow"
    exit 1
fi

while IFS=',' read -r usuario grupo home; do
    [ -z "$usuario" ] && continue
    [[ "$usuario" == \#* ]] && continue

    if ! getent group "$grupo" > /dev/null 2>&1; then
        sudo groupadd "$grupo"
        echo "Grupo $grupo creado"
    else
        echo "Grupo $grupo ya existe"
    fi

    if ! id "$usuario" > /dev/null 2>&1; then
        sudo useradd -m -s /bin/bash -g "$grupo" -p "$CLAVE" "$usuario"
        echo "Usuario $usuario creado en grupo $grupo"
    else
        echo "Usuario $usuario ya existe"
    fi

done < "$ARCHIVO_LISTA"

echo "Proceso completado."
EOF

sudo chmod 777 /usr/local/bin/zaldivar/AltaUser-Groups.sh
sudo rm -rf /usr/local/bin/zaldivar
sudo mkdir -p /usr/local/bin/zaldivar
sudo chmod 777 /usr/local/bin/zaldivar/AltaUser-Groups.sh
sudo mkdir -p /usr/local/bin/zaldivar
sudo cat > /usr/local/bin/zaldivar/AltaUser-Groups.sh << 'EOF'
#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 <usuario_clave> <archivo_lista>"
    exit 1
fi

USUARIO_CLAVE=$1
ARCHIVO_LISTA=$2

if [ ! -f "$ARCHIVO_LISTA" ]; then
    echo "Error: Archivo $ARCHIVO_LISTA no encontrado"
    exit 1
fi

CLAVE=$(sudo grep "^$USUARIO_CLAVE:" /etc/shadow | awk -F':' '{print $2}')

if [ -z "$CLAVE" ]; then
    echo "Error: Usuario $USUARIO_CLAVE no encontrado en /etc/shadow"
    exit 1
fi

while IFS=',' read -r usuario grupo home; do
    [ -z "$usuario" ] && continue
    [[ "$usuario" == \#* ]] && continue

    if ! getent group "$grupo" > /dev/null 2>&1; then
        sudo groupadd "$grupo"
        echo "Grupo $grupo creado"
    else
        echo "Grupo $grupo ya existe"
    fi

    if ! id "$usuario" > /dev/null 2>&1; then
        sudo useradd -m -s /bin/bash -g "$grupo" -p "$CLAVE" "$usuario"
        echo "Usuario $usuario creado en grupo $grupo"
    else
        echo "Usuario $usuario ya existe"
    fi

done < "$ARCHIVO_LISTA"

echo "Proceso completado."
EOF

ls -la /usr/local/bin/zaldivar/
sudo chmod 777 /usr/local/bin/zaldivar/
cat > /usr/local/bin/zaldivar/AltaUser-Groups.sh << 'EOF'
#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 <usuario_clave> <archivo_lista>"
    exit 1
fi

USUARIO_CLAVE=$1
ARCHIVO_LISTA=$2

if [ ! -f "$ARCHIVO_LISTA" ]; then
    echo "Error: Archivo $ARCHIVO_LISTA no encontrado"
    exit 1
fi

CLAVE=$(sudo grep "^$USUARIO_CLAVE:" /etc/shadow | awk -F':' '{print $2}')

if [ -z "$CLAVE" ]; then
    echo "Error: Usuario $USUARIO_CLAVE no encontrado en /etc/shadow"
    exit 1
fi

while IFS=',' read -r usuario grupo home; do
    [ -z "$usuario" ] && continue
    [[ "$usuario" == \#* ]] && continue

    if ! getent group "$grupo" > /dev/null 2>&1; then
        sudo groupadd "$grupo"
        echo "Grupo $grupo creado"
    else
        echo "Grupo $grupo ya existe"
    fi

    if ! id "$usuario" > /dev/null 2>&1; then
        sudo useradd -m -s /bin/bash -g "$grupo" -p "$CLAVE" "$usuario"
        echo "Usuario $usuario creado en grupo $grupo"
    else
        echo "Usuario $usuario ya existe"
    fi

done < "$ARCHIVO_LISTA"

echo "Proceso completado."
EOF

sudo chmod 777 /usr/local/bin/zaldivar/AltaUser-Groups.sh
ls -la /usr/local/bin/zaldivar/
sudo /usr/local/bin/zaldivar/AltaUser-Groups.sh vagrant ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
FECHA=$(date +%Y%m%d)
mkdir -p ~/RTA_Examen_$FECHA
sudo cp /usr/local/bin/zaldivar/AltaUser-Groups.sh ~/RTA_Examen_$FECHA/Punto_B.sh
ls -la ~/RTA_Examen_$FECHA/
head -5 ~/RTA_Examen_$FECHA/Punto_B.sh
tail -5 /etc/passwd
sudo apt update
sudo apt install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo usermod -aG docker vagrant
docker --version
cd ~/UTN-FRA_SO_Examenes/202406/docker/
ls -la
cat index.html
cat > index.html << 'EOF'
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Junio 2024 </h2> </br>
<h3> Nahidia Zaldivar</h3>
<h3> División: 116</h3>
</div>
EOF

cat index.html
cat > Dockerfile << 'EOF'
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EOF

docker build -t web1-zaldivar .
cd ~/UTN-FRA_SO_Examenes/202406/docker/
docker build -t web1-zaldivar .
docker tag web1-zaldivar zaldivar24/web1-zaldivar:latest
docker login
docker push zaldivar24/web1-zaldivar:latest
echo "docker run -d -p 8080:80 zaldivar24/web1-zaldivar:latest" > run.sh
chmod +x run.sh
ls -la
docker run -d -p 8080:80 zaldivar24/web1-zaldivar:latest
curl localhost:8080
docker ps
curl localhost:8080
docker ps
curl localhost:8080
docker stop intelligent_meninsky
docker ps
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ls -la
ls -la roles/
ls -la roles/2do_parcial/
cat roles/2do_parcial/tasks/main.yml
cat > roles/2do_parcial/tasks/main.yml << 'EOF'
---
- name: Crear estructura de directorios
  file:
    path: "/tmp/2do_parcial/{{ item }}"
    state: directory
    mode: '0755'
  loop:
    - alumno
    - equipo

- name: Crear datos_alumno.txt usando template
  template:
    src: datos_alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0644'

- name: Crear datos_equipo.txt usando template
  template:
    src: datos_equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0644'

- name: Configurar sudoers para 2PSupervisores
  lineinfile:
    path: /etc/sudoers.d/2PSupervisores
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    create: yes
    mode: '0440'
    validate: 'visudo -cf %s'
EOF

cat roles/2do_parcial/tasks/main.yml
cat > roles/2do_parcial/templates/datos_alumno.j2 << 'EOF'
Nombre: Nahidia
Apellido: Zaldivar
Division: 116
EOF

mkdir -p roles/2do_parcial/templates
cat > roles/2do_parcial/templates/datos_alumno.j2 << 'EOF'
Nombre: Nahidia
Apellido: Zaldivar
Division: 116
EOF

cat > roles/2do_parcial/templates/datos_equipo.j2 << 'EOF'
IP: {{ ansible_default_ipv4.address }}
Distribución: {{ ansible_facts.distribution }}
Cantidad de Cores: {{ ansible_facts.processor_cores }}
EOF

ls -la roles/2do_parcial/templates/
ansible-playbook -i inventory/hosts playbook.yml -l UTN
cat inventory/hosts
cat >> inventory/hosts << 'EOF'

[UTN]
localhost ansible_connection=local
EOF

cat inventory/hosts
ansible-playbook -i inventory/hosts playbook.yml -l UTN
cat > roles/2do_parcial/tasks/main.yml << 'EOF'
---
- name: Crear estructura de directorios
  file:
    path: "/tmp/2do_parcial/{{ item }}"
    state: directory
    mode: '0755'
  loop:
    - alumno
    - equipo

- name: Crear datos_alumno.txt usando template
  template:
    src: datos_alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0644'

- name: Crear datos_equipo.txt usando template
  template:
    src: datos_equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0644'

- name: Configurar sudoers para 2PSupervisores
  become: yes
  lineinfile:
    path: /etc/sudoers.d/2PSupervisores
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    create: yes
    mode: '0440'
    validate: 'visudo -cf %s'
EOF

ansible-playbook -i inventory/hosts playbook.yml -l UTN
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo cat /etc/sudoers.d/2PSupervisores
cd ~/UTNFRA_SO_2do_TP_ZaldivarAlcantara
cd ~
git clone git@github.com:Zaldivar24/UTNFRA_SO_2do_TP_ZaldivarAlcantara.git
cd ~
git clone git@github.com:Zaldivar24/UTNFRA_SO_2do_TP_Zaldivar.git
cd UTNFRA_SO_2do_TP_Zaldivar
ls -la
cp -r ~/UTN-FRA_SO_Examenes/202406/ ~/UTNFRA_SO_2do_TP_Zaldivar/
FECHA=$(date +%Y%m%d)
cp -r ~/RTA_Examen_$FECHA/ ~/UTNFRA_SO_2do_TP_Zaldivar/
FECHA=$(date +%Y%m%d)
cp -r ~/RTA_Examen_$FECHA/ ~/UTNFRA_SO_2do_TP_Zaldivar/
ls -la ~/ | grep RTA_Examen
cp -r ~/RTA_Examen_20260624/ ~/UTNFRA_SO_2do_TP_Zaldivar/
history -a
