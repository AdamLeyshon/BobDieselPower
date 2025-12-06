local fuel_values = {
  ["uls-diesel-fuel"] = "2MJ",
  ["diesel-fuel"] = "2.2MJ"
}

local emissions = {
  ["uls-diesel-fuel"] = 0.3,
  ["diesel-fuel"]     = 1
}

for k, fluid in pairs(data.raw.fluid) do
  if not fluid.fuel_value then
    fluid.fuel_value = fuel_values[fluid.name]
  end
  if not fluid.emissions_multiplier then
    fluid.emissions_multiplier = emissions[fluid.name]
  end
end
