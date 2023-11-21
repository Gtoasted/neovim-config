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

  -- Linear Algebra
  s({trig="**", snippetType="autosnippet", dscr="dot", condition=math},
    {t("\\cdot")}
  ),

  s({trig="xx", snippetType="autosnippet", dscr="cross", condition=math},
    {t("\\times")}
  ),

  s({trig="nabla", snippetType="autosnippet", dscr="Nabla Operator", condition=math},
    {t("\\vec{\\nabla}")}
  ),

  -- Calculus
  s({trig="dd", snippetType="autosnippet", dscr="Differential d", condition=math},
    {t("\\mathrm{d} ")}
  ),

  s({trig="dl", snippetType="autosnippet", dscr="Partial differential", condition="math"},
    {t("\\partial")}
  ),

  s({trig="pd1", snippetType="autosnippet", dscr="Partial derivative", condition=math},
    fmta("\\frac{\\partial <>}{\\partial <>} <>",
    {i(2), i(1), i(0)}
    )
  ),

  s({trig="pd2", snippetType="autosnippet", dscr="Partial derivate, 2nd degree", conditon=math},
    fmta("\\frac{\\partial^2 <>}{\\partial^2 <>} <>",
    {i(2), i(1), i(0)}
    )
  ),

  s({trig="d1", snippetType="autosnippet", dscr="Derivative"},
    fmta([[
    \frac{\mathrm{d} <>}{\mathrm{d} <>} <>
    ]],
    {i(2), i(1), i(0)}
    )
  ),

  s({trig="int1", snippetType="autosnippet", dscr="Integral with bounds", condition=math},
    fmta([[
    \int_{<>}^{<>} <> \; \mathrm{d} <>
    ]],
    {i(1), i(2), i(3), i(4)}
    )
  ),

  s({trig="int2", snippetType="autosnippet", dscr="Double Integral with bounds", condition=math},
    fmta([[
    \int_{<>}^{<>}\;\mathrm{d}<> \;\int_{<>}^{<>}\;\mathrm{d} <> \; <> 
    ]],
    {i(1), i(2), i(3), i(4), i(5), i(6), i(7)}
    )
  ),

  s({trig="inta", snippetType="autosnippet", dscr="Area Integral"},
    fmta([[
    \int_{A} <> \;\mathrm{d} <>
    ]],
    {i(1), (i(2))}
    )
  ),

  s({trig="intv", snippetType="autosnippet", dscr="Volume Integral"},
    fmta([[
    \int_{V} <> \;\mathrm{d} <>
    ]],
    {i(1), (i(2))}
    )
  ),

  s({trig="int_", snippetType="autosnippet", dscr="n-d Integral with custom bound"},
    fmta([[
    \int_{<>} <> \;\mathrm{d} <>
    ]],
    {i(1), i(2), i(3)}
    )
  ),

  s({trig="norm", snippetType="autosnippet", dscr="Norm", condition=math},
    fmta("\\|<>\\|",
    {i(1)}
    )
  ),
}
