RegisterCommand('normal-execute', function()
    exports['fiveShield-tokenizer']:Exec('m3_houserobbery:giveMoney', 500)
end)

RegisterCommand('cheater-execute', function()
    TriggerServerEvent('m3_houserobbery:giveMoney', 500)
end)

exports('Exec', function(event, payload)
    TriggerServerEvent('fiveshield-tokenizer:e', payload)
end)
