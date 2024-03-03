echo "### Building image"
docker image build -f dockerfile -t ascii_web .
echo "### Running image"
docker container run -p 8000:8000 --detach --name web ascii_web
echo "Server Started at http://localhost:8000/"
echo
echo "### Images list"
docker images
echo
echo "### Containers list"
docker container ls 
echo docker 
docker exec -it web /bin/bash