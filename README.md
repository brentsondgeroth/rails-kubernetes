[![CircleCI](https://circleci.com/gh/brentgaither/strider.svg?style=svg&circle-token=f6734895d78de5111bad98fcbeaf5332a4580804)](https://circleci.com/gh/brentgaither/strider)
# README

You will need docker installed to run this. 

This application is meant to be a starting point for
rails applications running on kubernetes.

*Current State*

Run `docker-compose build` to generate your docker image
Run `docker-compose up` to start your rails app

* To get a rails console `docker-compose run web rails c`


* To migrate `docker-compose run web rake db:create && rake db:migrate`

