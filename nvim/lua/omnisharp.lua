Lang_servers.omnisharp = {
    cmd = { "mono", "/usr/lib/omnisharp/OmniSharp.exe", "-lsp", "-hpid", tostring(vim.fn.getpid()) },
}
