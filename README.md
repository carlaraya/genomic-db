# Genomic Database

## How to setup
1. Install docker: https://github.com/carlaraya/docker-instructions
1. Install git
1. Clone this repo: `$ git clone https://github.com/carlaraya/genomic-db`
1. Go into the new directory: `$ cd genomic-db`
1. Build the docker images: `$ docker-compose build`
1. Install webpacker (nodejs modules): `$ docker-compose run web yarn install`
1. Setup the database: `$ docker-compose run web rails db:create db:migrate`
1. Start the server: `$ docker-compose up`

## Todo
1. [DONE] Read up on jbuilder
1. [DONE] Install semantic ui and add html code from old repo
1. [DONE] Read up on Active Storage, particularly direct upload. Find out a way to save the files as-is. (edit: there is no way)
1. [IN PROGRESS] Add attachment to dataset model that saves to local storage
    1. [DONE] Add delete attachment feature
    1. [IN PROGRESS] When data files are uploaded, do NOT replace data files already there
    1. [IN PROGRESS] [NON-URGENT] Fix mimetype problem (check email & github)
    1. [IN PROGRESS] [NON-URGENT] Add validation
1. Add rspec tests
1. Search how to do cron jobs in rails or nodejs
