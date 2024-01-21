local ls = require("luasnip")
local s = ls.snippet

local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
    s({trig="ltxd", dscr="Main latex file template"},
        fmt(
            [[
                \documentclass[a4paper,12pt]{article}

                \usepackage[<>]{babel}
                \usepackage[utf8]{inputenc}
                \usepackage[T1]{fontenc}
                \usepackage{graphicx}
                \usepackage{color}
                \usepackage{anysize}
                \usepackage{multicol}
                \usepackage{bm}
                \usepackage{textcomp}
                \usepackage{eurosym}
                \usepackage{amsthm}
                \usepackage{amsmath,amsfonts,soul}

                \usepackage{titling}
                \renewcommand\maketitlehooka{\null\mbox{}\vfill}
                \renewcommand\maketitlehookd{\vfill\null}

                \marginsize{1.5cm}{1cm}{1.5cm}{1.5cm}
                \parindent=0mm
                \parskip=3mm
                \renewcommand{\baselinestretch}{1}

                \title{<>}
                \author{<>}
                \date{\today}


                \begin{document}
                \maketitle
                \newpage
                \tableofcontents
                \newpage

                <>

                \end{document} 
            ]],
            { i(1, "spanish"), i(2), i(3), i(4)},
            { delimiters = "<>" }
        )
    )
}
