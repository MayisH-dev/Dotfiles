require "lspconfig".omnisharp.setup
{
    cmd = {  "/usr/bin/omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) }
}
