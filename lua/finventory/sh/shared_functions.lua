// Add items in F4 menu
if finventoryConfig.automaticF4Items and finventoryConfig.isGamemodeDarkRP then
    function darkRPAddItemsF4()
        for k, v in pairs(finventoryConfig.backpacks) do
            if not v.modelExt then v.modelExt = v.model end

            DarkRP.createEntity(v.beautifulName, {
                ent = "finventory_base_backpack",
                model = v.modelExt,
                price = v.price,
                max = finventoryConfig.maxBackpackPurchase,
                cmd = k
            })
        end
    end
    hook.Add("loadCustomDarkRPItems", "finventoryDarkRPModifyBackpackF4", darkRPAddItemsF4)
end

function getInventoryPropertiesByUniqueName(uniqueName) 
    local inventoryProperties = finventoryConfig.backpacks[uniqueName]
    if not inventoryProperties then 
        return  { isPocket = true }
    else
        inventoryProperties.uniqueName = uniqueName
        inventoryProperties.isPocket = false
        return inventoryProperties 
    end
end

function getItemWeaponString()
	return "weapon"
end

function getItemShipmentString()
	return "shipment"
end

function getItemEntityString()
	return "entity"
end

function getItemAmmoString()
	return "ammo"
end

function getItemFoodString()
	return "food"
end