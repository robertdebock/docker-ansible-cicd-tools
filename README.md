Docker Ansible Inventory Grapher
================================

This container has everything required to use [willthames ansible-inventory-grpaher](https://github.com/willthames/ansible-inventory-grapher).

The intent is to make it easier in pipelines to graph an inventory.

To create a `dot` file containing all relations:
```
docker run -v /path/to/your/inventory:/data robertdebock/docker-ansible-inventory-grapher ansible-inventory-grapher -i /data/hosts
```

To make in image out of the `dot` file:
```
docker run -v /path/to/your/inventory:/data robertdebock/docker-ansible-inventory-grapher dot -Tpng -o hosts.png hosts.dot
```
