# Ruby on Docker

## Install

Install docker and dvm

```bash
# Install Docker Mac binary
$ brew tap homebrew/binary
$ brew install docker

# Install dvm
$ brew tap fnichol/dvm
$ brew install dvm
```

```
$ dvm up
$ eval "$(dvm env)"
$ echo << 'EOF' >> ~/.bashrc
if [ -f "$(which dvm)" ]; then
  eval "$(dvm env)"
fi
EOF
```

### Try it !

```
$ docker build -t mainyaa/ruby .
$ docker run -i -t mainyaa/ruby /bin/bash
```


