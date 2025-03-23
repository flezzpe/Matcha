local lua_override = setmetatable({
    messagebox_reference = _G.messagebox,
    restricted_library = {
        debug = {
            'debug', 'getlocal', 'setlocal', 'getupvalue', 'setupvalue',
            'getregistry', 'setmetatable', 'sethook', 'traceback', 'getinfo',
            'upvalueid', 'upvaluejoin'
        },

        io = {
            'popen', 'open', 'input', 'output', 'read', 'write', 'close',
            'flush', 'tmpfile'
        },

        os = {
            'execute', 'remove', 'rename', 'tmpname', 'exit', 'getenv',
            'setlocale'
        },

        _G = {
            'load', 'loadstring', 'dofile', 'require', 'setfenv', 'getfenv'
        },

        package = {
            'loadlib', 'searchpath'
        },

        string = {
            'dump'
        },
    },

    display_message = function(self, text)
        if not self.messagebox_reference then
            printl(text)

            return
        end

        if type(text) ~= 'string' then
            text = tostring(text)

            if type(text) ~= 'string' then
                printl(text)

                return
            end
        end

        return self.messagebox_reference(text, 'Matcha - Lua Override', 0)
    end,

    initializate = function(self)
        local global_envoirement = _G

        for key, value in pairs(self.restricted_library) do
            for _, library_function in ipairs(value) do
                if not global_envoirement[key] then
                    return
                end
                
                global_envoirement[key][library_function] = function()
                    self:display_message('Vulnerable detected: ' .. library_function .. ', it was successfully intercepted and replaced by placeholder before execution.')
                   
                    return nil
                end
            end
        end
    end
}, {})

lua_override:initializate()