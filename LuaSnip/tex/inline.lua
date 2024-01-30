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
local u = require("utils.snippet")

local get_visual = u.get_visual

local in_mathzone = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
	s(
		{
			trig = "([^%a])mm",
			dscr = "Expand inline math ($ $)",
			wordTrig = false,
			regTrig = true,
			snippetType = "autosnippet",
		},
		fmta("<>$ <> $", {
			f(function(_, snip)
				return snip.captures[1]
			end),
			d(1, get_visual),
		})
	),

	s(
		{
			trig = "ff",
			dscr = "Expand fraction",
			wordTrig = false,
			snippetType = "autosnippet",
			condition = in_mathzone,
		},
		fmta("\\frac{<>}{<>}", {
			i(1),
			i(2),
		})
	),

	s(
		{
			trig = "__",
			dscr = "Expand subscript",
			wordTrig = false,
			snippetType = "autosnippet",
			condition = in_mathzone,
		},
		fmta("_{<>}", {
			i(1),
		})
	),

	s(
		{
			trig = "^^",
			dscr = "Expand superscript",
			wordTrig = false,
			snippetType = "autosnippet",
			condition = in_mathzone,
		},
		fmta("^{<>}", {
			i(1),
		})
	),

	s({
		trig = "||",
		dscr = "Expand ||",
		wordTrig = false,
		snippetType = "autosnippet",
		condition = in_mathzone,
	}, t("\\|")),

	s(
		{
			trig = "´(",
			dscr = "Expand to frac compatible ( )",
			wordTrig = false,
			snippetType = "autosnippet",
			condition = in_mathzone,
		},
		fmta("\\left( <> \\right)", {
			i(1),
		})
	),

	s(
		{
			trig = "´[",
			dscr = "Expand to frac compatible [ ]",
			wordTrig = false,
			snippetType = "autosnippet",
			condition = in_mathzone,
		},
		fmta("\\left[ <> \\right]", {
			i(1),
		})
	),

	s(
		{
			trig = "´|",
			dscr = "Expand to frac compatible | |",
			wordTrig = false,
			snippetType = "autosnippet",
			condition = in_mathzone,
		},
		fmta("\\left| <> \\right|", {
			i(1),
		})
	),

	s(
		{
			trig = "`|",
			dscr = "Expand to frac compatible || ||",
			wordTrig = false,
			snippetType = "autosnippet",
			condition = in_mathzone,
		},
		fmta("\\left\\| <> \\right\\|", {
			i(1),
		})
	),

	s(
		{
			trig = "´<",
			dscr = "Expand to frac compatible < >",
			wordTrig = false,
			snippetType = "autosnippet",
			condition = in_mathzone,
		},
		fmta("\\left\\langle <> \\right\\rangle", {
			i(1),
		})
	),
}
