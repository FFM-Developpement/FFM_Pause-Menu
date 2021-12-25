local c = Config -- Chargement de la configuration

function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

-- Thread Titre
Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
        N_0xb9449845f73f5e9c("SHIFT_CORONA_DESC")
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunction()
        N_0xb9449845f73f5e9c("SET_HEADER_TITLE")
        PushScaleformMovieFunctionParameterString(c.titre)
        PushScaleformMovieFunctionParameterBool(true)
        PushScaleformMovieFunctionParameterString(c.sous-titre)
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunctionVoid()
    end
end)

-- Thread Menu
Citizen.CreateThread(function()
    AddTextEntry('PM_SCR_MAP', c.carte)
    AddTextEntry('PM_SCR_STA', c.statistiques)
    AddTextEntry('PM_SCR_GAM', c.jeu)
    AddTextEntry('PM_SCR_INF', c.infos)
    AddTextEntry('PM_SCR_SET', c.parametres)
    AddTextEntry('PM_SCR_RPL', c.editor)
end)
