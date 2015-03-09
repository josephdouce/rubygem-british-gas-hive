#!/usr/bin/env ruby

# -- BritishGas API Ruby Binding Demo --
# -- Written by Joseph Douce --
#
#

require 'BritishGasHive'

api = BritishGasHive.new('username', 'password', 'RubyScript', true)  # You must set to true if using Brittish Gas Hive Active Heating false for AlertMe

##Get thermostat ID

#thermostat = api.getDeviceByType("HAHVACThermostat")
#thermostat_id = thermostat.first.fetch("id")
#puts "Thermostat ID : #{thermostat_id}"

##Get sensor ID

#tempSensor = api.getDeviceByType("HAHVACTemperatureSensor")
#tempSensor_id = tempSensor.first.fetch("id")
#puts "TempSensor ID : #{tempSensor_id}"

temperatureInfo = api.getTemperature()
#units = temperatureInfo.fetch("temperatureUnit")
insideTemperature = temperatureInfo.fetch("inside").fetch("now")
#outsideTemperature = temperatureInfo.fetch("outside").fetch("now")
#weather = temperatureInfo.fetch("outside").fetch("weather").fetch("now")

print insideTemperature