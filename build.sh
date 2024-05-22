docker build -t nama_image:tag .
docker run -d -p 9090:9090 --name prometheus nama_image:tag