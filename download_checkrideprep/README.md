# Download Checkride Prep

Download [Checkride Prep](https://www.checkrideprep.com/) lesson recordings straight to your computer.

tldr;
```shell
./dcheckride.sh <manifest_link> <output_path>
```

Example to copy & paste into Bash:
```shell
MANIFEST=https://vz-d367db7b-ed6.b-cdn.net/ea6f17f4-0314-48f7-920d-d8c59eb43d56/1920x1080/video.m3u8
OUT_FILE=~/Downloads/out.mp4
./dcheckride.sh $MANIFEST $OUT_FILE
```

## Requirements
 1. Bash with git.
 2. [FFmpeg](https://ffmpeg.org/). This is the configuration I am using (basic `brew install` on MacOS).
    ```shell
    ffmpeg version 5.0.1 Copyright (c) 2000-2022 the FFmpeg developers
      built with Apple clang version 13.1.6 (clang-1316.0.21.2.5)
      configuration: --prefix=/usr/local/Cellar/ffmpeg/5.0.1_3 --enable-shared --enable-pthreads --enable-version3 --cc=clang --host-cflags= --host-ldflags= --enable-ffplay --enable-gnutls --enable-gpl --enable-libaom --enable-libbluray --enable-libdav1d --enable-libmp3lame --enable-libopus --enable-librav1e --enable-librist --enable-librubberband --enable-libsnappy --enable-libsrt --enable-libtesseract --enable-libtheora --enable-libvidstab --enable-libvmaf --enable-libvorbis --enable-libvpx --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxml2 --enable-libxvid --enable-lzma --enable-libfontconfig --enable-libfreetype --enable-frei0r --enable-libass --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-libspeex --enable-libsoxr --enable-libzmq --enable-libzimg --disable-libjack --disable-indev=jack --enable-videotoolbox
      libavutil      57. 17.100 / 57. 17.100
      libavcodec     59. 18.100 / 59. 18.100
      libavformat    59. 16.100 / 59. 16.100
      libavdevice    59.  4.100 / 59.  4.100
      libavfilter     8. 24.100 /  8. 24.100
      libswscale      6.  4.100 /  6.  4.100
      libswresample   4.  3.100 /  4.  3.100
      libpostproc    56.  3.100 / 56.  3.100
    Hyper fast Audio and Video encoder
    ```
  3. Web browser

## Instructions
In Bash or a shell of your choice, run the following checks and ensure that the outputs match. `check1.sh` ensures the embedding file exists and is accessible with the supplied headers, and `check2.sh` ensures that the manifest file can be downloaded.
```shell
$ ./check1.sh              
Checking headers on embed link for class 1. There should be a link ending in .m3u8 outputted.
https://vz-d367db7b-ed6.b-cdn.net/ea6f17f4-0314-48f7-920d-d8c59eb43d56/playlist.m3u8
$ ./check2.sh https://vz-d367db7b-ed6.b-cdn.net/ea6f17f4-0314-48f7-920d-d8c59eb43d56/playlist.m3u8
#EXTM3U
#EXT-X-VERSION:3
#EXT-X-STREAM-INF:BANDWIDTH=600000,RESOLUTION=352x240
352x240/video.m3u8
#EXT-X-STREAM-INF:BANDWIDTH=800000,RESOLUTION=640x360
640x360/video.m3u8
#EXT-X-STREAM-INF:BANDWIDTH=1400000,RESOLUTION=842x480
842x480/video.m3u8
#EXT-X-STREAM-INF:BANDWIDTH=2800000,RESOLUTION=1280x720
1280x720/video.m3u8
#EXT-X-STREAM-INF:BANDWIDTH=5000000,RESOLUTION=1920x1080
1920x1080/video.m3u8
```

