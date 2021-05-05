local lspconfig = require'lspconfig'

local options = { noremap=true, silent=true }

local command_prefix = "<cmd>lua "

local call_enter = "()<cr>"

local function native_lsp(call)
  return command_prefix .. "vim.lsp.buf." .. call .. call_enter
end

local function lspsaga(module, call)
  return command_prefix .. "require'lspsaga." .. module .. "'." .. call .. call_enter
end

local maps =
  { n =
    { gd = native_lsp("declaration")
    , gD = lspsaga("provider", "preview_definition")
    , gi = native_lsp("implementation")
    , gr = native_lsp("references")
    , K = native_lsp("hover")
    }
  , v = { }
  }

maps.n["<c-k>"] = native_lsp("signature_help")
maps.n["<leader>r"] = native_lsp("rename")
maps.n["<leader>."] = native_lsp("code_action")
maps.v["<leader>."] = native_lsp("range_code_action")
maps.n["<leader>f"] = native_lsp("formatting")
maps.v["<leader>f"] = native_lsp("range_formatting")

local function on_attach(client, bufnr)
-- set some keybinds conditional on server capabilities
  vim.api.nvim_buf_set_option(bufnr, 'ofu', 'v:lua.vim.lsp.omnifunc')

  for mode, mappings in pairs(maps) do
    for map, mapping in pairs(mappings) do
      vim.api.nvim_buf_set_keymap(bufnr, mode, map, mapping, options)
    end
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

function Init_servers(servers)
  for name, config in pairs(servers) do
    config.on_attach = on_attach
    lspconfig[name].setup(config)
  end
end
