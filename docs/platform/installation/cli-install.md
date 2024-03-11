---
title: "CLI - mmeshctl"
description: "The mmesh CLI, mmeshctl, is an open-source tool to manage your mmesh virtual private topology from the command line. Available for Linux, Windows and macOS."
tags:
  - installation
  - configuration
  - cli
---

# CLI - mmeshctl Installation

The mmesh CLI, `mmeshctl`, is an open-source tool that allows you to manage your mmesh from the command line.

`mmeshctl` is available for a variety of Linux platforms, macOS and Windows.

Check out its [GitHub repository](https://github.com/mmesh/m-cli) for more details and information on support, contributing, etc.

## Minimum Requirements

`mmeshctl` has the same [minimum requirements](https://github.com/golang/go/wiki/MinimumRequirements#minimum-requirements) as Go:

- Linux kernel version 2.6.23 or later
- Windows 7 or later
- FreeBSD 11.2 or later
- MacOS 10.11 El Capitan or later

## Binary Downloads

Linux, macOS and Windows binary downloads are available from the [Releases](https://github.com/mmesh/m-cli/releases) page at the [mmesh-cli GitHub Repository](https://github.com/mmesh/m-cli).

You can download the pre-compiled binaries and install them with the appropriate tools.

## Linux Installation

/// tab | Binary
    select: True

1. Download the latest release.

    ```shell
    curl -LO "https://dl.mmesh.io/binaries/stable/latest/linux/amd64/mmeshctl"
    ```

2. Validate the binary (optional).

    Download the mmeshctl checksum file:

    ```shell
    curl -LO "https://dl.mmesh.io/binaries/stable/latest/linux/amd64/mmeshctl_checksum.sha256"
    ```

    Validate the mmeshctl binary against the checksum file:

    ```shell
    sha256sum --check < mmeshctl_checksum.sha256
    ```

    If valid, the output must be:

    ```shell
    mmeshctl: OK
    ```

    If the check fails, sha256 exits with nonzero status and prints output similar to:

    ```shell
    mmeshctl: FAILED
    sha256sum: WARNING: 1 computed checksum did NOT match
    ```

3. Install `mmeshctl`.

    ```shell
    sudo install -o root -g root -m 0755 mmeshctl /usr/local/bin/mmeshctl
    ```

    !!! Note

        If you do not have root access on the target system, you can still install mmeshctl to the `~/.local/bin` directory:
        ```shell
        chmod +x mmeshctl
        mkdir -p ~/.local/bin
        mv ./mmeshctl ~/.local/bin/mmeshctl
        # and then append (or prepend) ~/.local/bin to $PATH
        ```

4. Test to ensure the version of mmeshctl is the same as downloaded:

    ```shell
    mmeshctl version show
    ```

///

/// tab | Package Repository

mmesh provides a package repository that contains both DEB and RPM downloads.

//// tab | Ubuntu or Debian
     select: True

1. Run the following to setup a new APT sources.list entry and install `mmesh-cli`:

    ```shell
    echo 'deb [trusted=yes] https://repo.mmesh.io/apt/ /' | sudo tee /etc/apt/sources.list.d/mmesh.list
    sudo apt update
    sudo apt install mmesh-cli
    ```

2. Test to ensure the version you installed is up-to-date:

    ```shell
    mmeshctl version show
    ```

////

//// tab | RHEL or CentOS

1. Run the following to create a repo file and install `mmesh-cli`:

    ```shell
    cat <<EOF | sudo tee /etc/yum.repos.d/mmesh.repo
    [mmesh]
    name=mmesh Repository - Stable
    baseurl=https://repo.mmesh.io/yum
    enabled=1
    gpgcheck=0
    EOF
    sudo yum install mmesh-cli
    ```

2. Test to ensure the version you installed is up-to-date:

    ```shell
    mmeshctl version show
    ```
////

///

/// tab | Homebrew

If you are on Linux and using [Homebrew](https://docs.brew.sh/Homebrew-on-Linux) package manager, you can install the mmesh CLI with Homebrew.

1. Run the installation command:

    ```shell
    brew install mmesh/tap/mmesh-cli
    ```

2. Test to ensure the version you installed is up-to-date:

    ```shell
    mmeshctl version show
    ```
///

## MacOS Installation

/// tab | Binary

1. Download the latest release.

    /// tab | Intel
        select: True

    ```shell
    curl -LO "https://dl.mmesh.io/binaries/stable/latest/darwin/amd64/mmeshctl"
    ```
    ///

    /// tab | Apple Silicon

    ```shell
    curl -LO "https://dl.mmesh.io/binaries/stable/latest/darwin/arm64/mmeshctl"
    ```
    ///

2. Validate the binary (optional).

    Download the mmeshctl checksum file:

    /// tab | Intel
        select: True

    ```shell
    curl -LO "https://dl.mmesh.io/binaries/stable/latest/   darwin/amd64/mmeshctl_checksum.sha256"
    ```
    ///

    /// tab | Apple Silicon

    ```shell
    curl -LO "https://dl.mmesh.io/binaries/stable/latest/darwin/arm64/mmeshctl_checksum.sha256"
    ```
    ///

    Validate the mmeshctl binary against the checksum file:

    ```shell
    shasum --algorithm 256 --check mmeshctl_checksum.sha256
    ```

    If valid, the output must be:

    ```shell
    meshctl: OK
    ```

    If the check fails, sha256 exits with nonzero status and prints output similar to:

    ```shell
    mmeshctl: FAILED
    sha256sum: WARNING: 1 computed checksum did NOT match
    ```

3. Make the mmeshctl binary executable.

    ```shell
    chmod +x mmeshctl
    ```

4. Move the mmeshctl binary to a file location on your system `PATH`.

    ```shell
    sudo mkdir -p /usr/local/bin
    sudo mv mmeshctl /usr/local/bin/mmeshctl
    sudo chown root: /usr/local/bin/mmeshctl
    ```

    !!! Note
        Make sure `/usr/local/bin` is in your `PATH` environment variable.

5. Test to ensure the version of mmeshctl is the same as downloaded:

    ```shell
    mmeshctl version show
    ```
///

/// tab | Homebrew

If you are on macOS and using [Homebrew](https://brew.sh/) package manager, you can install the mmesh CLI with Homebrew.

1. Run the installation command:

    ```shell
    brew install mmesh/tap/mmesh-cli
    ```

2. Test to ensure the version you installed is up-to-date:

    ```shell
    mmeshctl version show
    ```
///

## Windows Installation

/// tab | Binary

1. Open the Command Prompt as Administrator and create a folder for mmesh.

    ```shell
    mkdir 'C:\Program Files\mmesh'
    ```

2. Download the latest release into the mmesh folder.

    ```shell
    cd 'C:\Program Files\mmesh'
    curl -Uri "https://dl.mmesh.io/binaries/stable/latest/windows/amd64/mmeshctl.exe" -Outfile mmeshctl.exe
    ```

3. Validate the binary (optional).

    Download the mmeshctl.exe checksum file:

    ```shell
    curl -Uri "https://dl.mmesh.io/binaries/stable/latest/windows/amd64/mmeshctl.exe_checksum.sha256" -Outfile mmeshctl.exe_checksum.sha256
    ```

    Validate the mmeshctl.exe binary against the checksum file:

    - Using Command Prompt to manually compare CertUtil's output to the checksum file downloaded:

        ```shell
        CertUtil -hashfile mmeshctl.exe SHA256
        type mmeshctl.exe_checksum.sha256
        ```

    - Using PowerShell to automate the verification using the -eq operator to get a `True` or `False` result:

        ```powershell
        $($(CertUtil -hashfile mmeshctl.exe SHA256)[1] -replace " ", "") -eq $(type mmeshctl.exe_checksum.sha256).split(" ")[0]
        ```

4. Append or prepend the folder `C:\Program Files\mmesh` to your `PATH` environment variable.

    ```powershell
    $ENV:PATH="$ENV:PATH;C:\Program Files\mmesh"
    ```

5. Test to ensure the version of mmeshctl is the same as downloaded:

    ```powershell
    mmeshctl version show
    ```
///

## Running with Docker

You can also run `mmeshctl` as a Docker container. See examples below.

Registries:

- `mmeshdev/mmeshctl`
- `ghcr.io/mmesh/mmeshctl`

Example usage:

```shell
docker run --rm -ti -v $HOME/.mmesh:/root/.mmesh:ro mmeshdev/mmeshctl help
```

## Artifacts Verification

/// tab | Binaries
    select: True

All artifacts are checksummed and the checksum file is signed with [cosign](https://github.com/sigstore/cosign).

1. Download the files you want and the `checksums.txt`, `checksum.txt.pem` and `checksums.txt.sig` files from the [Releases](https://github.com/mmesh/m-cli/releases) page:

2. Verify the signature:

    ```shell
    cosign verify-blob \
        --cert checksums.txt.pem \
        --signature checksums.txt.sig \
        checksums.txt
    ```

3. If the signature is valid, you can then verify the SHA256 sums match with the downloaded binary:

    ```shell
    sha256sum --ignore-missing -c checksums.txt
    ```
///

/// tab | Docker Images

Our Docker images are signed with [cosign](https://github.com/sigstore/cosign).

Verify the signatures:

```shell
COSIGN_EXPERIMENTAL=1 cosign verify mmeshdev/mmeshctl
```
///

## Usage

You can run the following command to see the `mmeshctl` usage:

```shell
mmeshctl help
```

See more detail information about the `mmeshctl` command [here](../reference/mmeshctl/index.md).

!!! Information

    When you will run `mmeshctl login`, the account temporal credentials will be located by default at the `$HOME/.mmesh/apikey`. 

    This file `$HOME/.mmesh/apikey` will be removed when you execute `mmeshctl logout`

## Uninstall

/// tab | Linux
    select: True

To remove `mmeshctl` from the system, use the following commands:

//// tab | Binary
     select: True

```shell
sudo rm /usr/local/bin/mmeshctl
sudo rm -f $HOME/.mmesh
```
////

//// tab | Package Repository

///// tab | Ubuntu or Debian
      select: True

```shell
sudo apt-get -y remove mmesh-cli
sudo rm -f $HOME/.mmesh
```
/////

///// tab | RHEL or CentOS

```shell
sudo yum -y remove mmesh-cli
sudo rm -f $HOME/.mmesh
```
/////

////

///

/// tab | macOS

To remove `mmeshctl` from the system, use the following commands:

```shell
sudo rm /usr/local/bin/mmeshctl
sudo rm -f $HOME/.mmesh
```

///

/// tab | Windows

To remove `mmeshctl` from the system, open the Windows PowerShell as Administrator and use the following commands:

```powershell
rm 'C:\Program Files\mmesh' -r -force
```