using Documenter, DataInterpolations

cp("./docs/Manifest.toml", "./docs/src/assets/Manifest.toml", force = true)
cp("./docs/Project.toml", "./docs/src/assets/Project.toml", force = true)

ENV["GKSwstype"] = "100"

makedocs(modules = [DataInterpolations],
    sitename = "DataInterpolations.jl",
    clean = true,
    doctest = false,
    linkcheck = true,
    format = Documenter.HTML(assets = ["assets/favicon.ico"],
        canonical = "https://docs.sciml.ai/DataInterpolations/stable/"),
    pages = ["index.md", "Methods" => "methods.md",
        "Interface" => "interface.md", "Manual" => "manual.md"])

deploydocs(repo = "github.com/SciML/DataInterpolations.jl"; push_preview = true)
