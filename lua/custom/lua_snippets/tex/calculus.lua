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
  s({trig="int ", snippetType="autosnippet", dscr="Integral without bounds", condition=math},
    fmta([[
    \int <> \; \mathrm{d}<>
    ]],
    {i(1), i(2)}
    )
  ),

  s({trig="int1", snippetType="autosnippet", dscr="Integral with bounds", condition=math},
    fmta([[
    \int_{<>}^{<>} <> \; \mathrm{d}<>
    ]],
    {i(1), i(2), i(3), i(4)}
    )
  ),

  s({trig="int2", snippetType="autosnippet", dscr="Double Integral with bounds", condition=math},
    fmta([[
    \int_{<>}^{<>}\;\mathrm{d}<> \;\int_{<>}^{<>}\;\mathrm{d}<> \; <> 
    ]],
    {i(1), i(2), i(3), i(4), i(5), i(6), i(7)}
    )
  ),

  s({trig="intf", snippetType="autosnippet", dscr="Area Integral", condition=math},
    fmta([[
    \int_{F} <> \;\mathrm{d} \vec{F}
    ]],
    {i(1)}
    )
  ),

  s({trig="intv", snippetType="autosnippet", dscr="Volume Integral", conditon=math},
    fmta([[
    \int_{V} <> \;\mathrm{d}V
    ]],
    {i(1)}
    )
  ),

  s({trig="inti", snippetType="autosnippet", dscr="Interal over the Real numbers", condition=math},
    fmta([[
    \int_{-\infty}^{\infty} <> \;\mathrm{d}<>
    ]],
    {i(1), i(2)}
    )
  ),

  s({trig="int_", snippetType="autosnippet", dscr="n-d Integral with custom bound", condition=math},
    fmta([[
    \int_{<>} <> \;\mathrm{d} <>
    ]],
    {i(1), i(2), i(3)}
    )
  ),
}