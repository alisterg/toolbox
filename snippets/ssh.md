# SSH

## Generate keypair

`ssh-keygen`

## Set a different key per host with

```
Host alias_name # alias_name is the one you use to connect
  HostName 192.168.0.1
  User ubuntu
  IdentityFile ~/.ssh/bitbucket_id_rsa
```

## Copy files

Use `scp` to copy files:

`scp -i keyfile.pem /source/file user@host:/destination/file`
