add_repositories("tapzcrew-repo https://github.com/Tapzcrew/xmake-repo main")
add_requires("stormkit develop", {
    configs = {
        image = false,
        wsi = false,
        log = false,
        entities = false,
        gpu = false,
        components = { "core", "main" },
    },
})
add_requires("glm", "frozen", "unordered_dense", "magic_enum", "tl_function_ref")
add_requireconfs("**", { configs = { modules = true } })

target("foo", function()
    set_kind("binary")
    set_languages("c++latest")
    add_files("src/**.cpp")
    add_packages("stormkit", "glm", "frozen", "unordered_dense", "magic_enum", "tl_function_ref")
    set_policy("build.c++.modules", true)
end)
