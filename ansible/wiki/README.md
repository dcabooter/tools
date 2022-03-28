# Wiki.js RHEL/CentOS README
## Requirements

Set the following vars in `host_vars` or `group_vars` and modify them to your needs. The database password and private key file should be encrypted with `ansible-vault` first.

* Example commands:
```
# ansible-vault encrypt_string 'test123' --name wiki_db_password
# cat /path/to/wiki.key | ansible-vault encrypt_string --stdin-name wiki_tls_key
```

* Example config:
```
server_alias: <insert server alias>
wiki_db_password: <insert ansible vault output>
wiki_tls_crt: |
          <insert TLS certificate content>
wiki_tls_key: <insert ansible vault output>
```
