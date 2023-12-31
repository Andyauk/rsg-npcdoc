Config = Config or {}

Config.Blip = {
    blipName = 'Doctor',
    blipSprite = 'blip_shop_Doctor',
    blipScale = 0.2
}

Config.Target = true
Config.Debug = false

Config.Ped = 'U_M_M_RHDDoctor_01'
Config.OnlyDead = false
Config.JobDutyCheck = true
Config.MinMedics = 1
Config.ProgressTime = 5000

Config.Extras = {
    PayForTreatment = true,
    TreatmentCost = 10,
    TreatmentPayType = 'cash'
}

Config.Locations = {
    {
        name = 'Valentine Doctor',
        coords = vector4(-287.77, 806.37, 119.40, 278.075 -1),
        usePed = true,
        showblip = false,
    },
    {
        name = 'Strawberry Doctor',
        coords = vector4(-1806.43, -431.04, 158.85, 247.65 -1),
        usePed = true,
        showblip = false,
    },
    {
        name = 'Rhodes Doctor',
        --coords = vector4(1367.94, -1311.37, 77.96, 183.765 -1),
        coords = vector4(1370.74, -1305.74, 77.97, 205.295 -1),
        usePed = true,
        showblip = false,
    },
    {
        name = 'St Denis Doctor',
        coords = vector4(2726.93, -1230.81, 50.38, 77.475 -1),
        usePed = true,
        showblip = false,
    },
	{
        name = 'Blackwater Doctor',
        --coords = vector4(-807.25, -1236.64, 44.01, 10.125 -1),
        coords = vector4(-835.26, -1265.66, 43.69, 118.135 -1),
        usePed = true,
        showblip = false,
    },
	{
        name = 'Armadillo Doctor',
        coords = vector4(-3648.3477, -2651.57, -13.43, 356.345 -1),
        usePed = true,
        showblip = false,
    },
	{
        name = 'Mexico Doctor',
        --coords = vector4(-6060.69, -4244.51, -14.11, 83.775 -1),
        coords = vector4(-1903.26, -4014.63, -9.69, 169.72 -25 -1),
        usePed = true,
        showblip = false,
    },
	{
        name = 'Guarma Doctor',
        coords = vector4(1384.53, -7001.94, 57.10, 1385.125 -1),
        usePed = true,
        showblip = false,
    },
	{
        name = 'Annesburg Doctor',
        coords = vector4(2913.40, 1448.56, 57.45, 110.095 -1),
        usePed = true,
        showblip = false,
    },
}
