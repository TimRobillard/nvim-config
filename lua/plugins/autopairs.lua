return {
  "windwp/nvim-autopairs",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    enable_check_bracket_ine = false,
    ignored_next_char = "[%w%.]",
    check_ts = true,
    ts_config = {
      lua = { "string" },
      javascript = { "template_string" },
      java = false,
    },
  },
}
