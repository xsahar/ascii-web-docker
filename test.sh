echo "### Building image"
docker image build -f Dockerfile -t ascii_web .
echo "### Running image"
docker container run -p 8000:8000 --detach --name my_web ascii_web
echo "Server started at http://localhost:8000/"
echo
echo "### Images list"
docker images
echo
echo "### Containers list"
docker container ls
echo
docker exec -it my_web /bin/bash