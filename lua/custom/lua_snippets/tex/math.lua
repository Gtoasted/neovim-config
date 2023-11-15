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

return {
  s({trig="mk", snippetType="autosnippet", dscr="Inline math mode"},
    fmta("$<>$",
    {i(1)}
    )
  ),

  s({trig="dm", snippetType="autosnippet", dscr="Multiline math mode"},
    fmta([[
        \[
        <>
        \]
      ]],
      {i(1)}
    )
  ),

  s({trig="frac", snippetType="autosnippet", dscr="Fraction"},
    fmta("\\frac{<>}{<>}",
      {i(1), i(2)}
    )
  ),

  s({trig="vec", snippetType="autosnippet", dscr="Vector arrow"},
    fmta("\\vec{<>}",
      {i(1)}
    )
  ),

  s({trig="hat", snippetType="autosnippet", dscr="Hat"},
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

  s({trig="bint", snippetType="autosnippet", dscr="Integral with bounds"},
    fmta("\\int_{<>}^{<>}",
    {i(1), i(2)}
    )
  ),

  s({trig="**", snippetType="autosnippet", dscr="dot"},
    {t("\\cdot")}
  ),

  s({trig="xx", snippetType="autosnippet", dscr="cross"},
    {t("\\times")}
  ),

  s({trig="nabla", snippetType="autosnippet", dscr="Nabla Operator"},
    {t("\\vec{\\nabla}")}
  ),

  s({trig="del", snippetType="snippet", dscr="Partial differential"},
    {t("\\partial")}
  ),

  s({trig="partial", snippetType="snippet", dscr="Partial derivative"},
    fmta("\\frac{\\partial <>}{\\partial <>} <>",
    {i(2), i(1), i(0)}
    )
  ),

  s({trig="||", snippetType="autosnippet", dscr="Norm"},
    fmta("\\|<>\\|",
    {i(1)}
    )
  ),
}
