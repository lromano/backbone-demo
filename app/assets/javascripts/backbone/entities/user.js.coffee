@Demo.module 'Entities', (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.User extends Entities.Model

  class Entities.UserCollection extends Entities.Collection
    model: Entities.User
    url: Routes.users_path()

  API =
    setCurrentUser: (currentUser) ->
      new Entities.User currentUser

    getUserEntities: (callback) ->
      users = new Entities.UserCollection
      users.fetch(
        success: -> callback users
      )
      users

  App.reqres.setHandler "set:current:user", (currentUser) ->
    API.setCurrentUser currentUser

  App.reqres.setHandler "user:entities", (callback) ->
    API.getUserEntities(callback)
