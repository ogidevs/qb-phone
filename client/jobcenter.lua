local QBCore = exports['5life-core']:GetCoreObject()

-- NUI Callback

RegisterNUICallback('GetJobCentersJobs', function(data, cb)
    cb(Config.JobCenter)
end)

RegisterNUICallback('CasinoPhoneJobCenter', function(data)
    if data.action == 1 then
        TriggerServerEvent('qb-phone:server:SetJobJobCenter', data)
    elseif data.action == 2 then
        SetNewWaypoint(data.x, data.y)
        QBCore.Functions.Notify('GPS set', "success")
    end
end)