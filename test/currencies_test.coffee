chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'currencies', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/currencies')(@robot)

  it 'responds to currency request', ->
    expect(@robot.respond).to.have.been.calledWith(/(convert )?([0-9.]+) (EUR|USD|JPY|BGN|CZK|DKK|GBP|HUF|LTL|PLN|RON|SEK|CHF|NOK|HRK|RUB|TRY|AUD|BRL|CAD|CNY|HKD|IDR|ILS|INR|KRW|MXN|MYR|NZD|PHP|SGD|THB|ZAR) (into |in |to )?(EUR|USD|JPY|BGN|CZK|DKK|GBP|HUF|LTL|PLN|RON|SEK|CHF|NOK|HRK|RUB|TRY|AUD|BRL|CAD|CNY|HKD|IDR|ILS|INR|KRW|MXN|MYR|NZD|PHP|SGD|THB|ZAR)/i)
