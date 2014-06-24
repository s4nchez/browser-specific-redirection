# Browser-specific redirection example

Source code for [http://browser-specific-redirection.herokuapp.com]().

This is an example of how to provide a single URL that can be handled differently based on the browser.

For instance, [this link](http://browser-specific-redirection.herokuapp.com/go/destination-3) should take you to a specific location of a platform-specific page.

###Running it locally

```bash
gem install bundle
bundle install
foreman start
```

You should see something like:

```bash
05:37:47 web.1  | started with pid 14598
05:37:47 web.1  | [2014-06-24 05:37:47] INFO  WEBrick 1.3.1
05:37:47 web.1  | [2014-06-24 05:37:47] INFO  ruby 2.1.0 (2013-12-25) [x86_64-darwin13.0]
05:37:47 web.1  | [2014-06-24 05:37:47] INFO  WEBrick::HTTPServer#start: pid=14598 port=5000
```

Then go to [http://localhost:5000]().
