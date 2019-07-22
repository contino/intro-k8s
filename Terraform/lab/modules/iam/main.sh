#!/bin/bash

users = ""

for i in `cat users`;do
    name=$(echo "${i%%@*}")


    echo "
    resource \"google_project_iam_member\" \"iam_setup_${name}\" {
              project = \"\${var.project}\"
              role = \"projects/\${var.project}/roles/\${google_project_iam_custom_role.k8s-wokshop-custom-role.role_id}\"
              member = \"user:${i}\"
         }
    " >> main.tf
done;
