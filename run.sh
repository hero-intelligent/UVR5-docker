xhost local:docker
           
docker run -it --rm \
-e XDG_RUNTIME_DIR=/tmp \
-e WAYLAND_DISPLAY=$WAYLAND_DISPLAY \
-v $XDG_RUNTIME_DIR/$WAYLAND_DISPLAY:/tmp/$WAYLAND_DISPLAY  \
--user=$(id -u):$(id -g) \
-e XAUTHORITY=$XAUTHORITY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /etc/localtime:/etc/localtime \
-e DISPLAY=unix$DISPLAY \
-e GDK_SCALE \
-e GDK_DPI_SCALE \
--network=host \
--name uvr \
-v ./sources:/home/uvr/UVR/sources
-v ./results:/home/uvr/UVR/results
uvr python3 UVR.py


