#### The goal of this project is to make the experience of opening youtube and reddit links through newsboat better

The script achieves this by making:
- Youtube links open in /embed/ instead of /watch for fewer distractions and faster load time
- Reddit links open in old.reddit.com for faster load time and fewer-pop ups

---
#### Usage:
Linux:
1. Make sure that you have installed Newsboat 
2. Copy over the necessary files to the .newsboat directory
3. Use the following template to add youtube channels to your rss feed
```
  https://www.youtube.com/feeds/videos.xml?channel_id=<CHANNELID> youtube "!" #<NAMEOFCHANNEL>
```
4. In order to find channel id you can search for the term "browseId" in the page source code of the target channel. Example ids can be found in the url file

---
#### Q/A
- Q: why are you using an RSS reader for youtube subscriptions instead of the youtube app?
- A: Youtube sometimes doesn't show new uploads from certain channels in the subscription tab
- A: Fewer distractions

