<!-- REQUIREMENTS -->
ANGULAR
Must use an Angular Front-End that includes at least 5 pages
  - index, mixes, bio, about, contact (?)
Must contain some sort of nested views
  - set up tabs for the above pages
Must contain some sort of searching as well as filtering based on some criteria. Ex: All items in the "fruit" category, or all tasks past due
  - search feature and filtering of mixes based on DJ or genre
Must contain at least one page that allows for dynamic updating of a single field of a resource.
  - like button which updates number of likes
Links should work correctly. Ex: Clicking on a product in a list, should take you to the show page for that product
  - make sure links work.
Data should be validated in Angular before submission
  - display error messages if something goes wrong
Must talk to the Rails backend using $http and Services. you may not use $resource

<!-- Models /Relationships -->
RAILS
Backend created with JSON that accepts and stores the data for Angular


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

<!-- Example JSON:  -->
[
  {
    title: "Biz With Pleasure Vol 1",
    dj: {
        dj_name: 'bdc'
        dj_id: '2'
    },
    liked_mixes: [
      {
        id: 1,
        dj_id: 2
        mix_id: 1
      },
    ],
  }
]
