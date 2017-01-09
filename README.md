# README

models:
user - has many loved mixes, has many shared mixes
  - id , username

dj - has many mixes, has many liked-mixes, has many re-liked mixes.(BOTH THRU MIXES)
 - id , djname

mix - belongs to a dj, has many mixes, has many liked-mixes, has many re-liked mixes.
  - id, mix title

     #of loved mixes
     <!-- loved mixes  -->
     belongs to a mix
     id, mix_id, dj_id
     




This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
