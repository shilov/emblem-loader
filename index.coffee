emblem = require 'emblem'
compiler = require 'ember-template-compiler'

module.exports = (content) ->
  # Flag as cacheable
  @cacheable && @cacheable()
  compiled = Emblem.precompile(compiler.EmberHandlebars, content, simple: true)
  "module.exports = Ember.Handlebars.template(#{compiled});"
