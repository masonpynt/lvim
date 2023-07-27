require("neoai").setup {
  -- Default options as per neoai
  ui = {
    output_popup_text = "NeoAI",
    input_popup_text = "Prompt",
    width = 30, -- Percentage value
    output_popup_height = 80, -- Percentage value
  },
  models = {
    {
      name = "openai",
      model = "gpt-3.5-turbo",
    },
  },
  register_output = {
    ["g"] = function(output)
      return output
    end,
    ["c"] = require("neoai.utils").extract_code_snippets,
  },
  inject = {
    cutoff_width = 75,
  },
  prompts = {
    context_prompt = function(context)
      return "Hey, I'd like to provide some context for future "
      .. "messages. Here is the code/text that I want to refer "
      .. "to in our upcoming conversations:\n\n"
      .. context
      end,
  },
  open_api_key_env = "OPENAI_API_KEY",
  shortucts = {
    {
      key = "<leader>as",
      use_context = true,
      prompt = [[
                Please rewrite the text to make it more readable, clear,
                concise, and fix any grammatical, punctuation, or spelling 
                errors
      ]],
    modes = { "v" },
    strip_function = nil,
    },
    {
      key = "<leader>ag",
      use_context = false,
      prompt = function()
        return [[
                  Using the following git diff generate a concise and 
                  clear git commit message, with a short title summary 
                  that is 75 characters or less:
        ]] .. vim.fn.system "git diff --cached"
      end,
      modes = { "n" },
      strip_function = nil,
    },
  },
}
