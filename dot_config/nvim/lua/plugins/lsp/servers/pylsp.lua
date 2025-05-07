local util = require 'lspconfig.util'
return function(on_attach)
    return {
        on_attach = function(client, bufnr)
            on_attach(client, bufnr)
        end,
        settings = {
            pylsp = {
                plugins = {
                    pycodestyle = {
                        maxLineLength = 120,
                    },
                    flake8 = {
                        maxLineLength = 120,
                    }
                }
            }
        },
    }
end
