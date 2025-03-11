#!/bin/sh

#sed for mac users
sed -i '' "s/ENVIRONMENT/$1/g" backend.tf

#sed for linux users 
#sed -i "s/ENVIRONMENT/$1/g" backend.tf
terraform init
