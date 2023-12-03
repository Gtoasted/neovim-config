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
  -- Enter Math Mode
  s({trig="mk", snippetType="autosnippet", dscr="Inline math mode"},
    fmta("$<>$",
    {i(1)}
    )
  ),

  s({trig="dm", snippetType="autosnippet", dscr="Multiline math mode"},
    fmta("$$ <> $$",
      {i(1)}
    )
  ),

  -- General
  s({trig="EE", snippetType="autosnippet", dscr="Existance Quantor", condition=math},
    {t("\\exists")}
  ),

  s({trig="AA", snippetType="autosnippet", dscr="For all", condition=math},
    {t("\\forall")}
  ),

  s({trig="frac", snippetType="autosnippet", dscr="Fraction", condition = math},
    fmta("\\frac{<>}{<>}",
      {i(1), i(2)}
    )
  ),

  s({trig="root2", snippetType="autosnippet", dscr="Square root", condition=math},
    fmta("\\sqrt{<>}",
    {i(1)}
    )
  ),

  s({trig="lim", snippetType="autosnippet", dscr="Limit", condition=math},
    fmta("\\lim_{<> \\rightarrow <>} <>",
    {i(1), i(2), i(3)}
    )
  ),

  s({trig="=>", snippetType="autosnippet", dscr="Implies", condition=math},
    {t("\\implies")}
  ),

  s({trig="<->", snippetType="autosnippet", dscr="Equiv Arrow", condition=math},
    {t("\\Leftrightarrow")}
  ),

  s(
    {trig="->", snippetType="autosnippet", dscr="Goes to", condition=math},
    {t("\\rightarrow")}
  ),

  s({trig=":=", snippetType="autosnippet", dscr="Colon Equals", condition=math},
    {t("\\coloneqq")}
  ),

  s({trig="sum", snippetType="autosnippet", dscr="Sum from i to n", condition=math},
    fmta([[
    \sum_{i=1}^{n} <>
    ]],
    {i(1)}
    )
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

  s({trig="norm", snippetType="autosnippet", dscr="Norm", condition=math},
    fmta("\\|<>\\|",
    {i(1)}
    )
  ),

  s({trig="mat", snippetType="snippet", dscr="Matrix", condition=math},
    fmta([[
    \begin{pmatrix}
      <>
    \end{pmatrix}
    ]],
    {i(1)}
    )
  ),

  -- Calculus
  s({trig="df", snippetType="autosnippet", dscr="Differential d", condition=math},
    {t("\\mathrm{d} ")}
  ),

  s({trig="dl", snippetType="autosnippet", dscr="Partial differential", condition=math},
    {t("\\partial")}
  ),

  s({trig="pd1", snippetType="autosnippet", dscr="Partial derivative", condition=math},
    fmta("\\frac{\\partial <>}{\\partial <>} <>",
    {i(1), i(2), i(0)}
    )
  ),

  s({trig="pd2", snippetType="autosnippet", dscr="Partial derivate, 2nd degree", conditon=math},
    fmta("\\frac{\\partial^2 <>}{\\partial {<>}^2} <>",
    {i(1), i(2), i(0)}
    )
  ),

  s({trig="d1", snippetType="autosnippet", dscr="Derivative", condition=math},
    fmta([[
    \frac{\mathrm{d} <>}{\mathrm{d} <>} <>
    ]],
    {i(1), i(2), i(0)}
    )
  ),
}
