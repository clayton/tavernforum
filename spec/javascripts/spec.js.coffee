# This pulls in all your specs from the javascripts directory into Jasmine:
#
# spec/javascripts/*_spec.js.coffee
# spec/javascripts/*_spec.js
# spec/javascripts/*_spec.js.erb
#
#= require jasminerice_reporter
#= require application
#= require_tree ./support
#= require_tree .

beforeEach ->
  loadFixtures 'index.html'
  @page               = $('body')
  @sandbox            = sinon.sandbox.create()
  @mock_server        = enableMockServer()

  @o = (obj) =>
    console?.log JSON.stringify obj
    return obj

  @render = (view) =>
    @el = view.render().$el
    @page.html @el

  @render_and_respond = (view) =>
    @render(view)
    @respond()

  @respond = =>
    @mock_server?.respond()

afterEach ->
  Backbone?.history?.navigate '', false
  disableMockServer()
  @sandbox.restore()
