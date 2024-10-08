local dap = require('dap')
dap.adapters.node = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.dap/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js'
  },
}
-- dap.configurations.javascript = {
--   {
--     name = 'Launch',
--     type = 'node2',
--     request = 'launch',
--     program = '${file}',
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   },
--   {
--     -- For this to work you need to make sure the node process is started with the `--inspect` flag.
--     name = 'Attach to process',
--     type = 'node2',
--     request = 'attach',
--     processId = require'dap.utils'.pick_process,
--   },
-- }

require("dap.ext.vscode").load_launchjs('./.vscode/launch.json', { node = {"typescript"} })
