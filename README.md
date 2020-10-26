# Bookings on Map, Update Location with Jobs

> It is a dashboard for doctor to view the list of bookings on the google map and update them with running jobs.

> I have used Action Cable for real time changes

**The idea behind creating this application was to initialize the basic structure:**


## Installation


### Clone

- Clone this repo to your local machine using `https://github.com/gondalhamza/doctor-map.git`

### Setup

- Follow the steps to setup project on local your machine

> Create gemset and install bundler

```shell
$ gem install bundler
$ bundle install
```

> Install yarn packages

```shell
$ yarn install
```

- Setup environment variables `GOOGLE_MAP_KEY`

> Copy .env.example file to .env (configure twitter credentials from twitter developer account)

```shell
$ cp .env.example .env
```

> Setup your database

```shell
$ rake db:create
$ rake db:migrate
```

> Run server at localhost

```shell
$ rails s
```

- Point your browser to `localhost:3000`

---
```shell
$ redis-server
```

- for mac to start redis

---
