# Build
sudo docker build -t nginx_img_1 .

# Run
sudo docker run --name nginx_cont_1 -p 80:80 -i -t nginx_img_1
