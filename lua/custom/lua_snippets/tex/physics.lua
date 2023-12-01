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
  s({trig="(.*)%.rt", regTrig=true, snippetType="autosnippet", dscr="Function of r and t", condition=math},
    {f(function (_, snip)
      return snip.captures[1] .. "(\\vec{r},t)"
    end)}
  ),

  s({trig="(.)%.d ", regTrig=true, snippetType="autosnippet", dscr="Derivative dot", condition=math},
    {f(function (_, snip)
      return string.format("\\dot{%s}", snip.captures[1])
    end)}
  ),

  s({trig="(.)%.dd ", regTrig=true, snippetType="autosnippet", dscr="2 Derivative dots", condition=math},
    {f(function (_, snip)
      return string.format("\\ddot{%s}", snip.captures[1])
    end)}
  ),

  s({trig="(.)%.v", regTrig=true, snippetType="autosnippet", dscr="Vector Arrow", condition=math},
    {f(function (_, snip)
      return string.format("\\vec{%s}", snip.captures[1])
    end)}
  ),

  s({trig="(.)%.dv", regTrig=true, snippetType="autosnippet", dscr="Derivative of Vector", condition=math},
    {f(function (_, snip)
      return string.format("\\dot{\\vec{%s}}", snip.captures[1])
    end)}
  ),

  s({trig="(.)%.ddv", regTrig=true, snippetType="autosnippet", dscr="2nd derivative of vector", condition=math},
    {f(function (_, snip)
      return string.format("\\ddot{\\vec{%s}}", snip.captures[1])
    end)}
  ),

  s({trig="(.)%.t", regTrig=true, snippetType="autosnippet", dscr="Tilde", condition=math},
    {f(function (_, snip)
      return string.format("\\tilde{%s}", snip.captures[1])
    end)}
  ),

  s({trig="hat", snippetType="autosnippet", dscr="Hat", condition = math},
    fmta("\\hat{<>}",
    {i(1)}
    )
  ),

}
