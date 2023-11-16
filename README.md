# pbsync

Simple CLI wrapper around iOS `UIPasteboard` APIs to copy paste stuff to and from jailbroken device.

Run `make` to build, `make install` to install on device (assuming you have your device configured and reachable as `iphone` in `~/.ssh/config`) or install DEB-package manually.

```sh
$ echo "Hello, World\!" | read -r line; ssh iphone "pbsync '$line'"
pbsync[24544:589044] saved to pasteboard: Hello, World!
```

```sh
$ ssh iphone pbsync
pbsync[24644:591242] retrieved from pasteboard: Hello, World!
```
