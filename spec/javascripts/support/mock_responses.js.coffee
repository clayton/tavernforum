window.enableMockServer = ->
  # only fake api requests
  unless window.MockServer
    sinon.FakeXMLHttpRequest.useFilters = true
    sinon.FakeXMLHttpRequest.addFilter (method, url, async, username, password) ->
      !/^\/?api\//.test(url)

  window.MockServer                    = sinon.fakeServer.create()
  window.MockServer.respondWithFixture = respondWithFixture
  window.MockServer.collectionWithFixture = collectionWithFixture

  window.MockServer

window.disableMockServer = ->
  window.MockServer?.restore()

window.respondWithFixture = (url, fixture) =>
  window.MockServer?.respondWith(
    "GET",
    url,
    [
      200,
      { "Content-Type": "application/json" },
      JSON.stringify getJSONFixture(fixture)
    ]
  )

window.collectionWithFixture = (collectionClass, url, fixture) =>
  collection     = new collectionClass()
  collection.url = url
  respondWithFixture(url, fixture)
  collection
