# chomsky

![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
```
root@GROOT01:/home/mike/chomsky# bash toptalking.sh
 Running as user "root" and group "root". This could be dangerous.
 NFS Conversations
 172.16.1.121 172.16.1.1
 172.16.1.4 172.16.1.121
 172.16.1.4 172.16.1.121
172.16.1.2 172.16.1.121
172.16.1.1 172.16.1.121
Source IP Addresses
172.16.1.121
172.16.1.4
172.16.1.4
172.16.1.2
172.16.1.1
Source IP Addresses
172.16.1.1
172.16.1.121
172.16.1.121
172.16.1.121
172.16.1.121
All IP Addresses
172.16.1.1
172.16.1.121
172.16.1.2
172.16.1.4
Running as user "root" and group "root". This could be dangerous.
tshark: An error occurred while printing packets: Broken pipe.
Dot file created, launching svg render
classifier-training-001-resnet-50.pcap.conversations.dot
Created  classifier-training-001-resnet-50.pcap.conversations.dot.svg
classifier-training-001-resnet-50.pcap.dot
Created  classifier-training-001-resnet-50.pcap.dot.svg
root@GROOT01:/home/mike/chomsky#
```
# Make an animated gif from a conversation for a position and duration of a pcap.
```
root@GROOT01:/home/mike/chomsky# bash toptalk_animated.sh
Running as user "root" and group "root". This could be dangerous.
NFS Conversations
172.16.1.121 172.16.1.1
172.16.1.4 172.16.1.121
172.16.1.4 172.16.1.121
172.16.1.2 172.16.1.121
172.16.1.1 172.16.1.121
Source IP Addresses
172.16.1.121
172.16.1.4
172.16.1.4
172.16.1.2
172.16.1.1
Source IP Addresses
172.16.1.1
172.16.1.121
172.16.1.121
172.16.1.121
172.16.1.121
All IP Addresses
172.16.1.1
172.16.1.121
172.16.1.2
172.16.1.4
Running as user "root" and group "root". This could be dangerous.
tshark: An error occurred while printing packets: Broken pipe.
1,
Done, 1
Number of arguments: 2 arguments.
Argument List: ['toptalk_single_render.py', 'classifier-training-001-resnet-50.pcap.1.conversations.dot']
classifier-training-001-resnet-50.pcap.1.conversations.dot
Created  classifier-training-001-resnet-50.pcap.1.conversations.dot.svg
2, 172.16.1.1 -> 172.16.1.121[label=" 24074 V3 GETATTR Reply(Callin:24073) Directory mode: 0755 uid: 0 gid: 0 "];
Done, 2
Number of arguments: 2 arguments.
Argument List: ['toptalk_single_render.py', 'classifier-training-001-resnet-50.pcap.2.conversations.dot']
classifier-training-001-resnet-50.pcap.2.conversations.dot
Created  classifier-training-001-resnet-50.pcap.2.conversations.dot.svg
3, 172.16.1.121 -> 172.16.1.1[label=" 24075 V3 GETATTR Call_fh:0x5c7a7f22 "];
Done, 3
Number of arguments: 2 arguments.
Argument List: ['toptalk_single_render.py', 'classifier-training-001-resnet-50.pcap.3.conversations.dot']
classifier-training-001-resnet-50.pcap.3.conversations.dot
Created  classifier-training-001-resnet-50.pcap.3.conversations.dot.svg
4, 172.16.1.1 -> 172.16.1.121[label=" 24076 V3 GETATTR Reply(Callin:24075) Regular File mode: 0644 uid: 0 gid: 0 "];
Done, 4
Number of arguments: 2 arguments.
Argument List: ['toptalk_single_render.py', 'classifier-training-001-resnet-50.pcap.4.conversations.dot']
classifier-training-001-resnet-50.pcap.4.conversations.dot
Created  classifier-training-001-resnet-50.pcap.4.conversations.dot.svg
5, 172.16.1.121 -> 172.16.1.1[label=" 24077 V3 GETATTR Call_fh:0xf2b1f1c8 "];
Done, 5
Number of arguments: 2 arguments.
Argument List: ['toptalk_single_render.py', 'classifier-training-001-resnet-50.pcap.5.conversations.dot']
classifier-training-001-resnet-50.pcap.5.conversations.dot
Created  classifier-training-001-resnet-50.pcap.5.conversations.dot.svg
6, 172.16.1.1 -> 172.16.1.121[label=" 24078 V3 GETATTR Reply(Callin:24077) Directory mode: 0755 uid: 0 gid: 0 "];
Done, 6
Number of arguments: 2 arguments.
Argument List: ['toptalk_single_render.py', 'classifier-training-001-resnet-50.pcap.6.conversations.dot']
classifier-training-001-resnet-50.pcap.6.conversations.dot
Created  classifier-training-001-resnet-50.pcap.6.conversations.dot.svg
Dot file created, launching svg render
ffmpeg version 3.3.4-2 Copyright (c) 2000-2017 the FFmpeg developers
  built with gcc 7 (Ubuntu 7.2.0-8ubuntu2)
  configuration: --prefix=/usr --extra-version=2 --toolchain=hardened --libdir=/usr/lib/x86_64-linux-gnu --incdir=/usr/include/x86_64-linux-gnu --enable-gpl --disable-stripping --enable-avresample --enable-avisynth --enable-gnutls --enable-ladspa --enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio --enable-libflite --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libmp3lame --enable-libopenjpeg --enable-libopenmpt --enable-libopus --enable-libpulse --enable-librubberband --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libssh --enable-libtheora --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx265 --enable-libxvid --enable-libzmq --enable-libzvbi --enable-omx --enable-openal --enable-opengl --enable-sdl2 --enable-libdc1394 --enable-libiec61883 --enable-chromaprint --enable-frei0r --enable-libopencv --enable-libx264 --enable-shared
  libavutil      55. 58.100 / 55. 58.100
  libavcodec     57. 89.100 / 57. 89.100
  libavformat    57. 71.100 / 57. 71.100
  libavdevice    57.  6.100 / 57.  6.100
  libavfilter     6. 82.100 /  6. 82.100
  libavresample   3.  5.  0 /  3.  5.  0
  libswscale      4.  6.100 /  4.  6.100
  libswresample   2.  7.100 /  2.  7.100
  libpostproc    54.  5.100 / 54.  5.100
Input #0, image2, from 'svg/classifier-training-001-resnet-50.pcap.%01d.conversations.png':
  Duration: 00:00:00.24, start: 0.000000, bitrate: N/A
    Stream #0:0: Video: png, monob(pc), 1024x1024, 25 fps, 25 tbr, 25 tbn, 25 tbc
Stream mapping:
  Stream #0:0 -> #0:0 (png (native) -> gif (native))
Press [q] to stop, [?] for help
Output #0, gif, to 'output.gif':
  Metadata:
    encoder         : Lavf57.71.100
    Stream #0:0: Video: gif, gray, 1024x1024, q=2-31, 200 kb/s, 25 fps, 100 tbn, 25 tbc
    Metadata:
      encoder         : Lavc57.89.100 gif
frame=    6 fps=0.0 q=-0.0 Lsize=      44kB time=00:00:00.21 bitrate=1704.7kbits/s speed=4.39x
video:43kB audio:0kB subtitle:0kB other streams:0kB global headers:0kB muxing overhead: 1.933985%
```

