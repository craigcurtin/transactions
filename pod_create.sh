
# Just create interactive container. No start but named for future reference.
# Use your own image.
docker create -it --name my_ubuntu ubuntu:latest

# Now start it.
docker start my_ubunt

# Now attach bash session.
docker exec -it my_ubunt bash
