docker build -t davetcoleman/logging_web_app .
COMMON_DIR=/home/dave/logging_web_app/src/

# Run web app
docker run -p 80:80 -d -v ${COMMON_DIR}:/var/www/ davetcoleman/logging_web_app
#docker run -p 80:80 -d -v /home/dave/logging_web_app/src/:/var/www/ davetcoleman/logging_web_app

# Get latest
docker pull davetcoleman/curie-jade

# Run
docker run -it -v ${COMMON_DIR}:/var/www/ davetcoleman/curie-jade

# source ~/ws_moveit/devel/setup.bash
# roslaunch curie_demos hilgendorf_demo.launch >> /var/www/log.txt
