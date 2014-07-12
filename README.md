[LocoRoco]
==========

**A “ready to deploy” [LocomotiveCMS] package.**

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

We at [Bitaculous] really like [LocomotiveCMS], it's our favorite tool for developing websites, it's [awesome]. That's
why we built [LocoRoco], so you can easier start using [LocomotiveCMS] on your server.

If you want to run [LocomotiveCMS] without setting up a server, check out [LocomotiveHosting], a hosting solution from
the [team behind LocomotiveCMS].

Credits
-------

The [team behind LocomotiveCMS] for creating [LocomotiveCMS].

[Sony Computer Entertainment] for creating [The Real LocoRoco], an awesome platform video game.

Requirements
------------

At [Bitaculous] we use the following stack to run [LocomotiveCMS], that's why this package is made for:

* [Nginx]
* [Unicorn]
* [RVM]
* [Bundler]
* [Capistrano]

Getting started
---------------

1. Download the [LocoRoco master] or a specific [release]

2. Unpack the file

3. Install all dependencies with Bundler:

    ```
    $ cd locoroco
    $ bundle install
    ```

4. Create the application configuration:

    Copy `ressources/config/application.yml` to `config/application.yml` and adjust properly

5. Start Unicorn:

    ```
    $ unicorn_rails
    ```

That's it, LocoRoco should run [on].

Deployment
----------

### First deployment

1. Create configurations:

    Copy `ressources/config/deploy.rb` to `config/deploy.rb` and adjust properly

    Copy `ressources/config/environments/sample.rb` to `config/environments/<stage>.rb` and adjust properly

    Copy `ressources/config/deploy/sample.rb` to `config/deploy/<stage>.rb` and adjust properly

    Copy `ressources/config/unicorn/sample.rb` to `config/unicorn/<stage>.rb` and adjust properly

2. Setup `shared` and `release` directory on stage:

    ```
    $ cap <stage> deploy:check:directories
    ```

3. Copy configurations to stage:

    Copy `config/application.yml` to `~shared/config/application.yml` (on stage)

    Copy `config/environments/<stage>.rb` to `~shared/config/environments/<stage>.rb` (on stage)

    Copy `config/unicorn/<stage>.rb` to `~shared/config/unicorn/<stage>.rb` (on stage)

4. Check that the required files and directories exist on stage:

    ```
    $ cap <stage> deploy:check
    ```

5. Adjust LocomotiveCMS initializer (`config/initializers/locomotive.rb`).

6. Adjust [CarrierWave] initializer (`config/initializers/carrierwave.rb`) if assets are hosted on Amazon S3 (optional).

7. Continue with `Regular deployment`

### Regular deployment

1. Check-in and push your changes

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

Configuration
-------------

### Nginx

Take a look at `ressources/config/nginx/sample.conf` as an inspiration on how to configure Nginx.

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

License
-------

LocoRoco is released under the [MIT License (MIT)], see [LICENSE].

[awesome]: http://www.locomotivecms.com/features "LocomotiveCMS features"
[Bitaculous]: http://bitaculous.com "It's all about the bits, baby!"
[Bundler]: http://bundler.io "The best way to manage a Ruby application's gems"
[Capistrano]: http://capistranorb.com "A remote server automation and deployment tool written in Ruby."
[CarrierWave]: https://github.com/carrierwaveuploader/carrierwave "Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks"
[Gemnasium Status]: http://img.shields.io/gemnasium/bitaculous/locoroco.svg?style=flat "Gemnasium Status"
[Gemnasium]: https://gemnasium.com/bitaculous/locoroco "LocoRoco at Gemnasium"
[here]: https://github.com/bitaculous/locoroco/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/locoroco/master/LICENSE "License"
[LocomotiveCMS]: http://locomotivecms.com "An open source CMS for Rails"
[LocomotiveHosting]: https://locomotivehosting.com "Host your LocomotiveCMS website here."
[LocoRoco master]: https://github.com/bitaculous/locoroco/archive/master.zip "Download the LocoRoco master as a zip file"
[LocoRoco]: http://bitaculous.github.io/locoroco "A “ready to deploy” LocomotiveCMS package."
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[Nginx]: http://nginx.org "A free, open-source, high-performance HTTP server and reverse proxy"
[on]: http://0.0.0.0:8080 "LocomotiveCMS installation"
[release]: https://github.com/bitaculous/locoroco/releases "LocoRoco releases"
[RVM]: https://rvm.io "Ruby Version Manager"
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Sony Computer Entertainment]: http://www.scei.co.jp/index_e.html "Sony Computer Entertainment"
[team behind LocomotiveCMS]: http://locomotivecms.com/crew "The crew behind LocomotiveCMS"
[The Real LocoRoco]: http://en.wikipedia.org/wiki/LocoRoco "LocoRoco"
[Travis CI Status]: http://img.shields.io/travis/bitaculous/locoroco.svg?style=flat "Travis CI Status"
[Travis CI]: https://travis-ci.org/bitaculous/locoroco "LocoRoco at Travis CI"
[Unicorn]: http://unicorn.bogomips.org "Rack HTTP server for fast clients and Unix"