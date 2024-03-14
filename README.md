# AlessandrOs &nbsp; [![build-alessandro-os](https://github.com/alessandrofrenna/AlessandrOS/actions/workflows/build.yml/badge.svg)](https://github.com/alessandrofrenna/AlessandrOS/actions/workflows/build.yml)

My custom OStree layer on top of Fedora Silverblue.

Made with [blue-build/template](https://github.com/blue-build/template)

## Installation

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/alessandrofrenna/alessandro-os:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/alessandrofrenna/alessandro-os:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/alessandrofrenna/alessandro-os
```
