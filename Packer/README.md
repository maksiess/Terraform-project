# Packer

### To create golden image

* up to date
* r1soft
* nspa
* telnet
* ssm
* filebeat
* ansible
* company users

## Packer installation
```
- wget https://releases.hashicorp.com/packer/1.5.4/packer_1.5.4_linux_amd64.zip
- unzip packer_1.5.4_linux_amd64.zip
- which packer
- sudo mv /usr/sbin/packer /tmp/
- sudo mv packer /bin/
- packer version
- packer --help
```

## Build Image

```
- packer validate golden_image.json
- packer build golden_image.json
- packer inspect golden_image.json
```
go to aws ec2/ami you should see you ami.

https://1drv.ms/u/s!AlhkGEMOXdE0gRBWZ2oJCj4wAJ3E


### you can breakpoint at the end of the file
```
        {
            "type": "breakpoint",
            "note": "Wait for you to delete"
        }
```