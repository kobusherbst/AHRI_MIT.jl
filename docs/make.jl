using AHRI_MIT
using Documenter

DocMeta.setdocmeta!(AHRI_MIT, :DocTestSetup, :(using AHRI_MIT); recursive=true)

makedocs(;
    modules=[AHRI_MIT],
    authors="Kobus Herbst",
    repo="https://github.com/kobusherbst/AHRI_MIT.jl/blob/{commit}{path}#{line}",
    sitename="AHRI_MIT.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
