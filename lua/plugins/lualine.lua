return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Find the existing time component or add a new one
    local function ampm_time()
      return os.date("%I:%M %p") -- 12-hour format with AM/PM
    end

    -- Add it to the right section of lualine
    opts.sections.lualine_z = { ampm_time }
  end,
}
