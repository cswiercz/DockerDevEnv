# DockerDevEnv

A docker environment for doing software developlemt. 

Includes all of the usual tools and software for developing C++ and Python code.
Built to solve the problem of hacking in different environments, especially
those that crop up when building C++ in an OSX environment. Based on [this
repository](https://github.com/julitopower/DockerCppDevEmacsClang) built by
[julitopower](https://github.com/julitopower).

# Usage

Build the image by executing,

```
$ docker build -t dockerdevenv:latest .
```

Run the image by executing,

```
$ docker run -it --rm -v ~:/opt/src dockerdevenv:latest
```

This mounts your home directory in the container's `/opt/src` directory. Inside
the container you now have access to all the usual development tools.
