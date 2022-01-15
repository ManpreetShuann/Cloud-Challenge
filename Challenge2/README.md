# Challenge 2

## Problem Statement

We need to write code that will query the meta data of an instance within GCP and provide a json formatted output. The choice of language and implementation is up to you.
**Bonus Points**:
The code allows for a particular data key to be retrieved individually

---

## Approach

we are gonna use GCP's compute engine as our instance and a shell script which will either have an argument for the particular key we want to extract the value for or not.

Depending on that argument if the argument is passed we will retrieve only the given key value or else we will extract whole metadata of the instance.

**GCP** like most of the other cloud provider has an API which we can call to extract the custom metadata.

First we will use below API to extract keys

> curl -s "http://metadata.google.internal/computeMetadata/v1/instance/attributes/" -H "Metadata-Flavor: Google"

Then we will make further calls to get value based on the keys we extracted

> curl -s "http://metadata.google.internal/computeMetadata/v1/instance/attributes/${custom_key} -H "Metadata-Flavor: Google"

---

## Assumptions

- We have a GCP instance created with all the right config and permissions
- We are able to SSH and connect with the VM

---

## Steps to run

- SSH on to the VM
- Clone my git repo
- Run the shell script with or without argument as required

```
git clone https://github.com/ManpreetShuann/Cloud-Challenge.git
cd Challenge2
sh challenge2.sh
sh challenge2.sh <your_key>
```
