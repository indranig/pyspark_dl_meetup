<div align='center'>
    <img height='175px' src='http://deeplearni.ng/static/img/dl_header_logo.png'/>
</div>

-----------------

# Setup

### Get GitLab Access

Email va@deeplearni.ng for GitLab access if you have not done so at a previous session. 

### Setup Images
 
We are assuming you have acquired the image and installed Docker. If you have done this at the last meetup you do not need to repeat it.

1. Download or clone this GitLab project (if you have been to a previous session, download the latest or run `git pull` to update)
2. In terminal, change directory to where the image is located
3. Run `docker load < meetup-zeppelin.img`
4. Run ```docker tag deeplearner0:5000/meetup-session3-zeppelin meetup-zeppelin```

Running `docker images` should show that `meetup-zeppelin` is available

### Run Container

#### macOS and Linux

(These are alternatively available in the `docker_run.sh` file located in the GitLab practical-learnings repository)

Set up environment variables to where you downloaded the session3 notebook and data-set directories

```
NOTEBOOK_PATH="/home/path/to/session3/notebook"
DATASET_PATH="/home/path/to/session3/data-set"
```
Copy and run the following command

```
docker run -it -p 8080:8080 -p 4040:4040 -p 6006:6006 -v $NOTEBOOK_PATH:/zeppelin-0.7.1-bin-all/notebook -v $DATASET_PATH:/data-sets --rm meetup-zeppelin
```