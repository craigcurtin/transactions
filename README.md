
# What is in this repo?
This is a python file that generates random transactions. It was generated with ChatGPT with some inputs from confluence. the code isn't the most efficient, but was a quick trial of ChatGPT generating python code.

1. Code can be run/debugged standalone in your favorite Python IDE (mine is PyCharm)
2. You can also build a container and run it via the container.

# To build container, install [Podman-Desktop](https://podman-desktop.io/docs/installation)
Once podman is installed, you can start building container images. Launch Podman on your desktop. Podman should enable all the services you need. I can't recall what needs to be setup, but if I can do it, so can you! Once you have the Podman UX up and running, click the "build" button and navigate to the Dockerfile, select the Dockerfile and you should see the steps that Podman takes to build the image.

1. Open/Debug transactions.py once you are happy with functionality, build the container.
2. Build the container and tag the image _transaction_:
```
$ build_trans.sh
```
    
or just call podman direct like:

``` 
$ podman build -tag transaction .    # note the "." specifies this directory
```

Note: the "-tag" works as expected and tags the image as _transaction_. Using a tag will eliminate the random image number that gets assigned by default. 

3. To run the container:
```
$ run_trans.sh
```
or run with podman like so:

```
$ podman run -v /Users/craigcurtin/tmp:/tmp -it transaction transactions.py --debug 10 -u -o /tmp/transactions.csv  --number_transactions  50
```
4. A few notes here on running the container, and passing in application arguments: 
   - _-v local-fs:container-fs_ specifies volume mapping (local-filesystem:container-filesystem)
   - _-it transaction_ specifies interactive and the tag
   - _transaction.py_ overrides the container entry point
   - _--debug 10_ logging level with the --debug flag you need to know the values of Logging.DEBUG(10) and Logging.INFO(20)
   - _-u_ specifies make output file unique, inserts linux epoc to file name (nice for sorting multiple runs)
   - _-o_ is where to write output, if you add the s3fs import, you can write direct to S2 buckets
   - _--number 50_ is the number of transactions to generate
5. in the podman command, anything after the entrypoint gets passed to the container, and overwrites the flags (they are not complementary, so you need to supply all flags you require)