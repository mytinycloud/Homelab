# creating a template for kubernetes worker vm 

qm create 1000 --memory 2045 --core 2 --name Freman --net0 virtio, bridge=vrbr1
cd /mnt/pve/Ix_storage/template/iso
qm importdisk 1000 jammy-server-cloudimg-amd64-disk-kvm.img Ix_storage
qm set 1000 --scsihw virtio-scsi-pci --scsi0 Ix_storage:vm-1000-disk-0
qm set 1000 --ide2 Ix_storage:cloudinit
qm set 1000 --boot c --bootdisk scsi0
qm set 1000 --serial0 socket --vga serial0