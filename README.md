
# What is in this repo?
This is a python file that generates random transactions. It was generated with ChatGPT with some inputs from confluence. the code isn't the most efficient, but was a quick trial of ChatGPT generating python code.

1. Code can be run/debugged standalone in your favorite IDE (mine is PyCharm)
2. You can also build a container and run it via the container.

# To build container, install [Podman-Desktop](https://podman-desktop.io/docs/installation)
Once podman is installed, you can start building container images. Launch the Podman, it will enable all the services you need. I can't recall what needs to be setup, but if I can do it, so can you!

1. Open/Debug transactions.py once you are happy with functionality you can build the container and run it from there.
2. To Build the container image:
```
    $ build_trans.sh
```
    or just call podman direct like:
``` 
    $ podman build -t transaction .
```

3. Note: the "-t" tags the image as _transaction_ 

4. To run, you can run in PyCharm/debugger, or you can run container:
```
    $ run_trans.sh
```
    or run with podman like so:
```
    $ podman run -v /Users/craigcurtin/tmp:/tmp -it transaction transactions.py --debug 10 -u -o /tmp/transactions.csv  --number_transactions  50
```
5. a few notes here ... on running the container, to change the logging level with the --debug flag