# dataexport
Exporting data from Reddit, Twitter, and Sci-Hub

1. Twitter data is aquired by using Twitter API. It is extracted with R, using package twitteR. The used metadata contains the content of the tweet and location.

2. Reddit data is also aquired by using it's API. The titles are extracted and processed using API of [crossref](http://api.crossref.org). We could extract the metadata regarding title, url, author, date journal, publisher, reference count and score.

3. The Sci-Hub data is aquired from the source of [Dryad](http://datadryad.org/resource/doi:10.5061/dryad.q447c). The DOI of each paper is extracted and processed using API of [crossref](http://api.crossref.org). The used metadata is again the title, url, author, date journal, publisher, reference count and score.
