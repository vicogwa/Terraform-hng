[app_servers]
${server_ip} ansible_user=${ssh_user} ansible_ssh_private_key_file=${ssh_key_path} ansible_ssh_common_args='-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

[app_servers:vars]
domain_name=${domain_name}
jwt_secret=${jwt_secret}
acme_email=${acme_email}
github_repo=${github_repo}
github_branch=${github_branch}