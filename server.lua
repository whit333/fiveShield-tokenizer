verifyedSources = {}
savedEvents = {}
local events = {
    'm3_houserobbery:giveMoney'
}

exports('checkToken', function(src, event)
    for k,v in pairs(verifyedSources) do 
        if v.source == src and v.event == event then 
            return true 
        end
    end
    return false 
end)

for k,v in pairs(events) do 
    RegisterServerEvent(v, function(...)
        local src = source 
        if exports['fiveShield-tokenizer']:checkToken(src, v) == false then 
            --Ban Event
            return DropPlayer(src, '-_-')
        end
        -- Your code
    end)
end

RegisterServerEvent('fiveshield-tokenizer:e', function(event, payload)
    if exports['fiveShield-tokenizer']:checkToken(src, v) == false then table.insert(verifyedSources, {source = source, event = event}) end 
    TriggerEvent(event, payload)
end)