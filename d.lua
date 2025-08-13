function sv() return {} end for i, v in pairs(_G) do if type(v) == "table" then v = sv() end end
