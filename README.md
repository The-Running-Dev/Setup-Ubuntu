# Setup Ubuntu

## Run Locally

Login as User, not root

```bash
/mnt/d/Dev/Projects/Setup-Ubuntu/install.sh
```

## Run from Repository

```bash
sh -c "$(curl -fsSLk https://raw.githubusercontent.com/The-Running-Dev/Setup-Ubuntu/master/install.remote.sh)"
```

## Install Certificats

If you are behind a SSL intercepting proxy, install the certificates locally first.

```bash
/mnt/d/Dev/Projects/Setup-Ubuntu/install.certificates.sh
```