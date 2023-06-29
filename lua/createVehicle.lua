-- Meta class
function createVehicle(category, icon, displayName, isTrailer, cargoSpace,class)
   local obj = {}
   obj.class = class
   obj.category = category
   obj.icon = icon
   obj.displayName = displayName
   obj.isTrailer = isTrailer
   obj.cargoSpace = cargoSpace
   obj.index = tostring(#allVehicles+1)
   table.insert(allVehicles, obj)
 end

function getVehicleValueById(id,property)
   print (allVehicles[id][property])
end

function getVehicleByProperty(value,property,returnProperty)
   for i, vec in pairs(allVehicles) do
      if (vec[property] == value) then
          return returnVehicle(vec[returnProperty])
      end
   end
end

function puke()
   for i, vec in pairs(allVehicles) do
      oksenna(vec.class,vec.category,vec.icon,vec.displayName,vec.index)
   end
end
