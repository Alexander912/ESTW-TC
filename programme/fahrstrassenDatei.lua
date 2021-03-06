local dateiname = "fahrstrassen.tmp"

leseFahrstrassen = function()
    if not fs.exists(dateiname) then
        return {}
    end
    local datei = fs.open(dateiname, "r")
    local fsArray = {}
    
    repeat
        local line = datei.readLine()
        if line ~= nil then
            table.insert(fsArray, line)
        end
    until line == nil
    
    datei.close()
    return fsArray
end

findeFahrstrasse = function(name)
    if not fs.exists(dateiname) then
        return {}
    end
    local datei = fs.open(dateiname, "r")
    
    repeat
        local line = datei.readLine()
        if line == name then
            datei.close()
            return true
        end
    until line == nil
    
    datei.close()
    return false
end

speichereFahrstrasse = function(name)
    if findeFahrstrasse(name) then
        return
    end

    local datei = fs.open(dateiname, "a")
    datei.writeLine(name)
    datei.close()
end

loescheFahrstrasse = function(name)
    local fahrstrassen = leseFahrstrassen()
    local datei = fs.open(dateiname, "w")
    for i, fahrstrasse in ipairs(fahrstrassen) do
        if fahrstrasse ~= name then
            datei.writeLine(fahrstrasse)
        end
    end
    datei.close()
end

leereDatei = function()
    local datei = fs.open(dateiname, "w")
    datei.write("")
    datei.close()
end
