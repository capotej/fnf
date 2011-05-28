# Fire and Forget (FNF)


## Intro

Fire and Forget replaces the need to write resque tasks or delayed jobs to fire off web requests (usually notification webhooks or a anti-spam service, like defensio or akismet). A single worker reads and executes web requests from a named pipe, while clients write to that pipe. It uses typhoeus internally to execute the web requests for maximum speed.


## 1 minute demo (requires node be installed)

Clone the project

```
git clone git@github.com:capotej/fnf.git
```

Install dependencies

```
bundle install
```

Run the worker

```
ruby bin/fnf
```

Run ba, a nodejs webserver that outputs how many req/s its getting

```
node ba.js
```

Run fnf_test.rb which queues 2k web requests which node then receives

```
ruby fnf_test.rb
```


## Installation & Usage

Add to gemfile, vendor the gem, gem install, etc

```gem 'fnf'``` or ```gem install fnf```


Start the server on the same machine as the client

```
fnf
```

Then in the client, you can do

```
require 'fnf'
Fnf::Client.queue({:post => "http://api.akismet.com/process", :params => { :thing => "2123" })
```

![Set and Forget It](http://naturallyalise.com/blog/wp-content/uploads/2011/03/set-it-and-forget-it-ronco-rotisserie.jpg)
