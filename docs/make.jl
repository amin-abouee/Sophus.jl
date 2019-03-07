using Documenter, Sophus

makedocs(;
    modules=[Sophus],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/amin-abouee/Sophus.jl/blob/{commit}{path}#L{line}",
    sitename="Sophus.jl",
    authors="Amin Abouee",
    assets=[],
)
