#!/bin/bash
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
cat >> inventory/hosts << 'INVENTORY'

[UTN]
localhost ansible_connection=local
INVENTORY
cat > roles/2do_parcial/tasks/main.yml << 'TASKS'
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
TASKS
mkdir -p roles/2do_parcial/templates
cat > roles/2do_parcial/templates/datos_alumno.j2 << 'ALUMNO'
Nombre: Nahidia
Apellido: Zaldivar
Division: 116
ALUMNO
cat > roles/2do_parcial/templates/datos_equipo.j2 << 'EQUIPO'
IP: {{ ansible_default_ipv4.address }}
Distribución: {{ ansible_facts.distribution }}
Cantidad de Cores: {{ ansible_facts.processor_cores }}
EQUIPO
ansible-playbook -i inventory/hosts playbook.yml -l UTN
