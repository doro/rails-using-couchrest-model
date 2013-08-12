Welcome to Rails Using Couchrest Model
---


This is a simple Rails app using couchrest_model gem.



##Installing CouchDB
__I use homebrew to install couchdb on my mac__

$ brew install couchdb
  
__I use build-couchdb to install couchdb on linux.__

\# prerequisite
$ sudo apt-get install make gcc zlib1g-dev libssl-dev rake

\# getting the code, if not sure, do this in a "work" directory

$ git clone git://github.com/iriscouch/build-couchdb

$ cd build-couchdb

$ git submodule init

$ git submodule update

$ sudo apt-get install help2man

\# actually installing

$ rake

\# to run it just type:

$ build/bin/couchdb


##Why CouchDB
CouchDB is considered a database for the web.
It uses JSON for docutments, Javascript for map-reduce queries  Http for an API.

It is a Document Oriented Database: it stores documents, which are semi-structured data items.
Each document can be compared to a record in an RDBMS, but a document is less structured from a record.

##Short explanation on reduce (part of map-reduce)
Reduce is called once for each unique instance of a key, in the output map, passed the key and an array of all values that the map emits with that key.

