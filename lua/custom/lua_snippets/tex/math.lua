-- Abbreviations 
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
  s({trig="mk", snippetType="autosnippet", dscr="Inline math mode"},
    fmta("$<>$",
    {i(1)}
    )
  ),

  s({trig="dm", snippetType="autosnippet", dscr="Multiline math mode"},
    fmta("$$<>$$",
      {i(1)}
    )
  ),

  s({trig="frac", snippetType="autosnippet", dscr="Fraction", condition = math},
    fmta("\\frac{<>}{<>}",
      {i(1), i(2)}
    )
  ),

  s({trig="vec", snippetType="autosnippet", dscr="Vector arrow", condition = math},
    fmta("\\vec{<>}",
      {i(1)}
    )
  ),

  s({trig="hat", snippetType="autosnippet", dscr="Hat", condition = math},
    fmta("\\hat{<>}",
    {i(1)}
    )
  ),

  s({trig="=>", snippetType="autosnippet", dscr="Implies"},
    {t("\\implies")}
  ),

  s({trig="<->", snippetType="autosnippet", dscr="Equiv Arrow"},
    {t("\\Leftrightarrow")}
  ),

  s(
    {trig="->", snippetType="autosnippet", dscr="Goes to"},
    {t("\\rightarrow")}
  ),

  s({trig="bint", snippetType="autosnippet", dscr="Integral with bounds", condition=math},
    fmta("\\int_{<>}^{<>}",
    {i(1), i(2)}
    )
  ),

  s({trig="**", snippetType="autosnippet", dscr="dot", condition=math},
    {t("\\cdot")}
  ),

  s({trig="xx", snippetType="autosnippet", dscr="cross", condition=math},
    {t("\\times")}
  ),

  s({trig="nabla", snippetType="autosnippet", dscr="Nabla Operator", condition=math},
    {t("\\vec{\\nabla}")}
  ),

  s({trig="del", snippetType="autosnippet", dscr="Partial differential", condition="math"},
    {t("\\partial")}
  ),

  s({trig="pd", snippetType="snippet", dscr="Partial derivative", condition=math},
    fmta("\\frac{\\partial <>}{\\partial <>} <>",
    {i(2), i(1), i(0)}
    )
  ),

  s({trig="||", snippetType="autosnippet", dscr="Norm", condition=math},
    fmta("\\|<>\\|",
    {i(1)}
    )
  ),
}
