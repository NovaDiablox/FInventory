local function loadAllFiles(fdir)

	local files,dirs = file.Find(fdir.."*", "LUA")
	
	for _,file in ipairs(files) do
		if string.match(file, ".lua") then
			if SERVER then AddCSLuaFile(fdir..file) end
			include(fdir..file)
		end	
	end
	
	for _,dir in ipairs(dirs) do
		loadAllFiles(fdir..dir.."/")
	end
 
end

loadAllFiles("finventory/") 