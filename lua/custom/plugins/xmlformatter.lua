return {
  {
    'pamoller/xmlformatter',
    config = function()
      -- Set default config for minification
      vim.g.xmlformatter_default_config = {
        remove_comments = true, -- Remove comments
        strip_whitespace = true, -- Strip all whitespace
        collapse_empty_tags = true, -- Collapse empty tags
      }

      -- Define custom command
      vim.api.nvim_create_user_command('FormatXML', function()
        vim.cmd ':%!xmlformatter -c' -- Run xmlformatter on the current file
      end, { desc = 'Minify XML with xmlformatter' })
    end,
  },
}
