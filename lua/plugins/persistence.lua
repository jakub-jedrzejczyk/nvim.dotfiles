return
{
  "folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  },
  keys = {
    {
          "<leader>ql",
          function ()
            require("persistence").load({ last = true })
          end,
          mode = "n",
          silent = true,
    },
    {
            "<leader>qs",
            function ()
                require("persistence").select()
            end,
            mode = "n",
            silent = true,
      }
  },
}
