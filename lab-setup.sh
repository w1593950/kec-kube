multipass launch -n host -c 1 -m 512M -d 5G 20.04 --cloud-init host1-init.yaml &
multipass launch -n control -c 1 -m 1G -d 10G 20.04 --cloud-init control-init.yaml &
multipass launch -n node2 -c 1 -m 512M -d 5G 20.04 --cloud-init node2-init.yaml & 
multipass launch -n node1 -c 1 -m 512M -d 5G 20.04 --cloud-init node1-init.yaml & 

multipass start --all & 

watch multipass list 
