---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- ["<leader>w"] = { "<cmd>w<CR>", "Save" },
    ["<leader>w"] = { ":w<CR>", "Save" },
    ["<leader>ll"] = { "<cmd>TroubleToggle<CR>", "Open Trouble" },
    ["<leader>ft"] = { "<cmd>TodoTelescope<CR>", "Find Todo" },
    ["\\"] = { "<cmd>:vsplit <CR>", "Vertical split" },
    -- ["<C-]>"] = {
    --   function()
    --     require("nvterm.terminal").toggle "vertical"
    --   end,
    -- },
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
    },
    ["<leader>tt"] = {
      function()
        require("neotest").run.run()
      end,
      "Run nearest test",
    },
    ["<leader>tf"] = {
      function()
        require("neotest").run.run(vim.fn.expand "%")
      end,
      "Run file test",
    },
    ["<leader>to"] = {
      ":Neotest output<CR>",
      "Test output",
    },
    ["<leader>ts"] = {
      ":Neotest summary<CR>",
      "Test summary",
    },
    ["<leader>du"] = {
      function()
        require("dapui").toggle()
      end,
      "Dedug UI",
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Breakpoint",
    },
    ["<leader>ds"] = {
      function()
        require("dap").continue()
      end,
      "Start",
    },
    ["<leader>dn"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<leader>cg"] = {
      ":ChatGPTCompleteCode<CR>",
      "Step over",
    },
    ["<leader>gl"] = {
      ":Flog<CR>",
      "Git Log",
    },
    ["<leader>gf"] = {
      ":DiffviewFileHistory<CR>",
      "Git File History",
    },
    ["<leader>gc"] = {
      ":DiffviewOpen HEAD~2<CR>",
      "Git Last Commit",
    },
    ["<leader>gt"] = {
      ":DiffviewToggleFile<CR>",
      "Git Last Commit",
    },
  },
  t = {
    -- ["<C-]>"] = {
    --   function()
    --     require("nvterm.terminal").toggle "vertical"
    --   end,
    -- },
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
    },
  },
}
vim.keymap.set("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })

-- vim.keymap.set('i', '<c-;>',
--   function()
--     return vim.fn['codeium#CycleCompletions'](1)
--   end, { expr = true, silent = true })
M.disabled = {
  n = {
    ["<leader>h"] = {},
  },
}

-- M.codeium = {
--   plugin = true,
--    i = {
--   ["<C-f"] = {
--     function()
--       return vim.fn['codeium#CycleCompletions'](1)
--       -- require("codeium").CycleCompletions(1)
--       end,
--   }
--
--   }
-- }
return M
