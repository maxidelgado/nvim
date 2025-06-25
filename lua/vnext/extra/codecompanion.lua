return {
  "olimorris/codecompanion.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  opts = {
    adapters = {
      gemini = function()
        -- Function to fetch the key from 1Password
        local get_gemini_key = function()
          -- Replace with your actual op:// secret reference
          local command = 'op read "op://Private/Google AI/api-key"'
          local handle = io.popen(command)
          if handle then
            local key = handle:read("*a")
            handle:close()
            -- Trim whitespace/newline characters from the command output
            return key:gsub("%s*$", "")
          end
          return nil
        end

        return require("codecompanion.adapters").extend("gemini", {
          -- Call the function to get the key
          api_key = get_gemini_key(),
          schema = { model = { default = "gemini-pro" } },
        })
      end,
    },
    strategies = {
      chat = { adapter = "gemini" },
      inline = { adapter = "gemini" },
      agent = { adapter = "gemini" },
    },
  },
}
