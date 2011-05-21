# Fire and Forget (FNF)


## Intro

Fire and Forget replaces the need to write resque tasks or delayed jobs to fire off web requests (usually notification webhooks or a anti-spam service, like defensio or akismet). A single worker reads and executes web requests from a blocking named pipe, while clients queue up them up in a non blocking manner. It uses typhoeus internally to execute the web requests for maximum speed.

## Usage (worker)

Start the server

```
fnf
```


## Usage (client)

Add to gemfile, vendor the gem, gem install, etc

```gem 'fnf'``` or ```gem install fnf```

From anywhere:

```
require 'fnf'
Fnf::Client.queue({:post => "http://api.akismet.com/process", :params => { :thing => "2123" })
```


## Kicking the tires

Start a rails project

```
rails new foo
```

Start the server

```
cd foo
rails server
```

Clone this project

```
git clone git@github.com:capotej/fnf.git
cd fnf
```

Start the fnf server

```
bin/fnf
```

Run the test

```
ruby fnf_test.rb
```

You should see a request for /asdd hit your rails logs


![Set and Forget It](http://naturallyalise.com/blog/wp-content/uploads/2011/03/set-it-and-forget-it-ronco-rotisserie.jpg)
