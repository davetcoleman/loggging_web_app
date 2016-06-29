docker build -t davetcoleman/logging_web_app .
COMMON_DIR=~/logging_web_app/src/

# Run web app
docker run -p 80:80 -d -v ${COMMON_DIR}:/var/www/ davetcoleman/logging_web_app

# Get latest
docker pull davetcoleman/curie-jade

# Run
docker run -it -v ${COMMON_DIR}:/var/www/ davetcoleman/curie-jade
