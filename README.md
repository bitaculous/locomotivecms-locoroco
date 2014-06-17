[LOCOROCO](http://bitaculous.github.io/locoroco "LocoRoco")
===========================================================

**A “ready to deploy” [LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails") package.**

[![Travis CI Status](https://travis-ci.org/bitaculous/locoroco.svg)](http://travis-ci.org/bitaculous/locoroco) [![Gemnasium Status](https://gemnasium.com/bitaculous/locoroco.svg)](https://gemnasium.com/bitaculous/locoroco)

We at [Bitaculous](http://bitaculous.com "It's all about the bits, baby!") really like
[LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails"), it's our favorite tool for developing websites,
it's [awesome](http://www.locomotivecms.com/features "LocomotiveCMS features"). That's why we built
[LocoRoco](http://bitaculous.github.io/locoroco "A “ready to deploy” LocomotiveCMS package."), so you can easier start
using [LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails") on your server.

If you want to run [LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails") without setting up a server,
check out [LocomotiveHosting](https://locomotivehosting.com "Host your LocomotiveCMS website here."), a hosting solution
from the [team behind LocomotiveCMS](http://locomotivecms.com/crew "The crew behind LocomotiveCMS").

Credits
-------

The [team behind LocomotiveCMS](http://locomotivecms.com/crew "The crew behind LocomotiveCMS") for creating
[LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails").

[Sony Computer Entertainment](http://www.scei.co.jp/index_e.html "Sony Computer Entertainment") for creating
[The Real LocoRoco](http://en.wikipedia.org/wiki/LocoRoco "LocoRoco"), an awesome platform video game.

Requirements
------------

At [Bitaculous](http://bitaculous.com "It's all about the bits, baby!") we use the following stack to run
[LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails"), that's why this package is made for:

* [Nginx](http://nginx.org "A free, open-source, high-performance HTTP server and reverse proxy")
* [Unicorn](http://unicorn.bogomips.org "Rack HTTP server for fast clients and Unix")
* [RVM](https://rvm.io "Ruby Version Manager")
* [Bundler](http://bundler.io "The best way to manage a Ruby application's gems")
* [Capistrano](http://capistranorb.com "A remote server automation and deployment tool written in Ruby.")

Getting started
---------------

1. [Download the LocoRoco master](https://github.com/bitaculous/locoroco/archive/master.zip "Download the LocoRoco master as a zip file")
as a zip file

2. Unpack the zip file

3. Install all dependencies with [Bundler](http://bundler.io "The best way to manage a Ruby application's gems"):

    ```
    $ cd locoroco
    $ bundle install
    ```

4. Create the application configuration:

    Copy `ressources/config/application.yml` to `config/application.yml` and adjust properly

5. Start [Unicorn](http://unicorn.bogomips.org "Rack HTTP server for fast clients and Unix"):

    ```
    $ unicorn_rails
    ```

That's it, [LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails") should run [on](http://0.0.0.0:8080 "LocomotiveCMS installation").

Deployment
----------

### First deployment

1. Adjust / create configuration(s):

    Adjust `config/deploy.rb` properly

    Copy `config/deploy/sample.rb` to `config/deploy/<stage>.rb` and adjust properly

    Copy `config/unicorn/sample.rb` to `config/unicorn/<stage>.rb` and adjust properly

2. Setup `shared` and `release` directory on stage:

    ```
    $ cap <stage> deploy:check:directories
    ```

3. Copy configurations to stage:

    Copy `config/application.yml` to `~shared/config/application.yml` (on stage)

    Copy `config/unicorn/<stage>.rb` to `~shared/config/unicorn/<stage>.rb` (on stage)

4. Check that the required files and directories exist on stage:

    ```
    $ cap <stage> deploy:check
    ```

5. Adjust [LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails") initializer
(`config/initializers/locomotive.rb`).

6. Adjust [CarrierWave](https://github.com/carrierwaveuploader/carrierwave "Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks")
initializer (`config/initializers/carrierwave.rb`) if assets are hosted on Amazon S3 (optional).

7. Continue with `Regular deployment`

### Regular deployment

1. Check-in your changes

2. Run ```$ cap <stage> deploy``` to deploy a new version to stage

### Unicorn

Start Unicorn

```
$ cap <stage> unicorn:start
```

Stop Unicorn (QUIT)

```
$ cap <stage> unicorn:stop
```

Restart Unicorn (USR2 + QUIT); use this when `preload_app true`

```
$ cap <stage> unicorn:restart
```

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here](https://github.com/bitaculous/locoroco/issues "Github Issues").

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0][semver]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

[semver]: http://semver.org

License
-------

[LocoRoco](http://bitaculous.github.io/locoroco "A “ready to deploy” LocomotiveCMS package.") is released under the MIT
License (MIT), see [LICENSE](https://raw.githubusercontent.com/bitaculous/locoroco/master/LICENSE "License").