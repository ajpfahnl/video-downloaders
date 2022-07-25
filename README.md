# Video Downloaders

A repository of downloaders to make better sense of the tinkering needed to bend certain websites to your will.

Make sure that you understand how to grab a manifest file (ending in `.m3u8`) which is typically used for downloading. Either
 * on Chrome, Right click -> `Inspect` -> navigate to the `Network` tab -> reload the page and start the video -> in the `Network` tab type `.m3u8` in the `Filter` input box
 * m3u8 sniffer extension like [Video m3u8 Sniffer](http://sigmafxdx.com/m3u8Sniffer/). This extension just makes it one click to copy the manifest file needed to download the video.

Test out each manifest file until you find one that works. Usually there are multiple representing different qualities of the same video.

## Downloaders

The following downloaders have all worked at some point, but no guarantees are made as to whether or not they will work at any given moment since some were created with the knowledge that the videos would be taken down, and others may not work due to architectural changes made by the maintainers of the websites that manage the videos.

| Downloader | Important Takeaways | tldr; |
| ---------- | ------------------- | ----- |
| [Checkride Prep](./download_checkrideprep) | Headers were needed to prevent `HTTP 403` errors. You can't use the headers in the GET requests for the manifest files reportedly used by Chrome. I had to use the headers for the GET request of the embed file containing the manifest. | Use headers of other files |
| [UPenn](./download_upenn) | Headers were needed to prevent `HTTP 403` errors, `-vsync 0` (a.k.a. `-vsync passthrough`) was also needed since the video player was designed to show frames as soon as they arrived, no consistent framerate. | Headers, passthrough|
