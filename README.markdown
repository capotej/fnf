# Fire and Forget (FNF)


## Intro

Fire and Forget replaces the need to write resque tasks or delayed jobs to fire off web requests (usually notification webhooks or a anti-spam service, like defensio or akismet). A single worker reads and executes web requests from a blocking named pipe, while clients queue up them up in a non blocking manner. It uses typhoeus internally to execute the web requests for maximum speed.

## Usage (worker)

Start the server

```fnfd start```

(add this to rc.local, or a startup script)

## Usage (client, rails)

Add to gemfile, or vendor the gem

```gem 'fnf'```

From a controller or model

```FNF.queue({:post => "http://api.akismet.com/process", :params => { :thing => "2123" })```


![Set and Forget It](http://naturallyalise.com/blog/wp-content/uploads/2011/03/set-it-and-forget-it-ronco-rotisserie.jpg)