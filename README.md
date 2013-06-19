== Welcome to Rails Using Couchrest Model


This is a simple Rails app using couchrest_model gem.



===Installing CouchDB
_I use homebrew to install couchdb on my mac_

$ brew install couchdb
  
_I use build-couchdb to install couchdb on linux._

# prerequisite
$ sudo apt-get install make gcc zlib1g-dev libssl-dev rake

# getting the code, if not sure, do this in a "work" directory

$ git clone git://github.com/iriscouch/build-couchdb

$ cd build-couchdb

$ git submodule init

$ git submodule update

$ sudo apt-get install help2man

# actually installing

$ rake

# to run it just type:

$ build/bin/couchdb

