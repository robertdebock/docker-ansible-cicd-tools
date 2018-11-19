Docker Ansible Inventory Grapher
================================

This container has everything required to run Ansible stuff in a pipeline.
- [willthames ansible-inventory-grapher](https://github.com/willthames/ansible-inventory-grapher).
- [ara](https://ara.readthedocs.io)

The intent is to make it easier in pipelines to do stuff with Ansible.

## Inventory graphing

To create a `dot` file containing all relations:
```
docker run -v /path/to/your/inventory:/data robertdebock/docker-ansible-inventory-grapher ansible-inventory-grapher -i /data/hosts all
```

To make in image out of the `dot` file:
```
docker run -v /path/to/your/inventory:/data robertdebock/docker-ansible-inventory-grapher dot -Tpng -o hosts.png hosts.dot
```

## ARA reports

Prepend your Ansible execution by:
```
eval $(python -m ara.setup.env)
mkdir ara_report
# your ansible execution here, like: ansible -m ping all
ara generate html ara_report
```
