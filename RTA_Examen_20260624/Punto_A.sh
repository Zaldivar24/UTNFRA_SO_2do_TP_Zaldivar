#!/bin/bash
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdc1
sudo pvcreate /dev/sdc2
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_tem /dev/sdc2
sudo lvcreate -l +100%FREE -n lv_workareas vg_datos
sudo lvreduce -L 1.48G /dev/mapper/vg_datos-lv_workareas
sudo lvcreate -L 8M -n lv_docker vg_datos
sudo lvcreate -L 512M -n lv_swap vg_tem
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkdir -p /work /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mkswap /dev/sdd1
sudo swapon /dev/sdd1
sudo bash -c "echo '/dev/mapper/vg_datos-lv_workareas /work ext4 defaults 0 0' >> /etc/fstab"
sudo bash -c "echo '/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 0' >> /etc/fstab"
sudo bash -c "echo '/dev/sdd1 none swap sw 0 0' >> /etc/fstab"
