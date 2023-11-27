local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

-- Check if math mode is active
local function math()
  return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end

return {
  s({trig="(.*).rt", regTrig=true, snippetType="autosnippet", dscr="Function of r and t", condition=math},
    {f(function (_, snip)
      return snip.captures[1] .. "(\\vec{r},t)"
    end)}
  ),

  s({trig="dot", snippetType="autosnippet", dscr="Derivative dot", condition=math},
    fmta([[\dot{<>}]],
    {i(1)}
    )
  ),

  s({trig="ddot", snippetType="autosnippet", dscr="2 Derivative dots", condition=math},
    fmta([[\ddot{<>}]],
    {i(1)}
    )
  ),
}
