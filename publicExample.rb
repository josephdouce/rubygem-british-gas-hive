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

#units = temperatureInfo.fetch("temperatureUnit")
#print api.getTemperature().fetch("inside").fetch("now")
#outsideTemperature = temperatureInfo.fetch("outside").fetch("now")
#weather = temperatureInfo.fetch("outside").fetch("weather").fetch("now")

unless ARGV.length == 1
  print "Usage: setTemperature(temperature, units)"
  exit
end
print api.setTemperature(ARGV[0],"C")
