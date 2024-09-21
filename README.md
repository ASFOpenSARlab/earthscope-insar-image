# GEOS639 Docker Image

## Quickstart

We recommend using a Linux distribuion -- either native Linux or Windows Subsystem for
Linux (WSL) on Windows.

- [WSL 2 Installation Instructions]( https://docs.microsoft.com/en-us/windows/wsl/install-win10)

This image is provided through Docker. Ensure that you have Docker installed for your
operating system:
- [Linux instructions](https://docs.docker.com/engine/install/ubuntu/) 
    - Select your Linux flavor from the left sidebar menu.
- [Windows Instructions using WSL 2](https://docs.docker.com/desktop/windows/install/)
    - Be sure to follow the WSL2 backend-specific instructions.
- [Mac Instructions](https://docs.docker.com/desktop/mac/install/)

This image is also available on the GitHub Container Registry. Pull it onto your
computer with
```bash
docker pull ghcr.io/asfopensarlab/earthscope-insar-image:main
```

you can then run the image with
```bash
docker run -it --init --rm -p 8888:8888 -v $HOME/virtual_home:/home/jovyan ghcr.io/asfopensarlab/earthscope-insar-image:main
```

Click the `127.0.0.1:8888` link that appears, and you should be able to access the image.

### Volume Permissions

If your user account is not the first account on your machine, or more specifically does
not have UID=1000, the `virtual_home` directory will not belong to your account. If you
encounter permission errors, you can take ownership of the directory with
```bash
sudo chown -R <YOUR_USERNAME> virtual_home
```

If you do this, you may encounter permission errors when starting the container
(`/home/jovyan is not writable`). In this case, reset the permissions to their original
state with
```bash
sudo chown -R 1000:100 virtual_home
```

## Building From Source

After cloning the repository, building and running the image should be as simple as
running `make` in your terminal!
