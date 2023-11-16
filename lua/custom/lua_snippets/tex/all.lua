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
  s({trig="template", snippetType="snippet", dscr="Basic template"},
    fmta([[
    \documentclass[a4paper]{article}

		\usepackage[utf8]{inputenc}
		\usepackage[T1]{fontenc}
		\usepackage{textcomp}
		\usepackage[dutch]{babel}
		\usepackage{amsmath, amssymb}


		% figure support
		\usepackage{import}
		\usepackage{xifthen}
		\pdfminorversion=7
		\usepackage{pdfpages}
		\usepackage{transparent}
		\newcommand{\incfig}[1]{%
			\def\svgwidth{\columnwidth}
			\import{./figures/}{#1.pdf_tex}
		}

		\pdfsuppresswarningpagegroup=1

		\begin{document}
			<>
		\end{document}
    ]],
    {i(0)}
    )
  ),

  s({trig="beg", snippetType="snippet", dscr="Begin / End"},
    fmta([[
    \begin{<>}
    <>
    \end{<>}
    ]],
    {i(1), i(0), rep(1)}
    )
  ),

  s({trig="par", snippetType="snippet", dscr="Paragraph"},
    fmta("\\paragraph{<>}\n<>",
    {i(1), i(0)}
    )
  ),
}
