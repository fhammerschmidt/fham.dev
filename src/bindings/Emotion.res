@module("@emotion/css") @taggedTemplate
external css: (array<string>, array<'a>) => string = "css"

@module("@emotion/css") @taggedTemplate
external keyframes: (array<string>, array<'a>) => string = "keyframes"

@module("@emotion/css") external injectGlobal: string => unit = "injectGlobal"
