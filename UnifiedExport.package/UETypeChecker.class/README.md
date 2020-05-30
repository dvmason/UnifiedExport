I walk an AST using the visitor pattern doing type inference as I go.

I call back the transpiler to tell it any classes that need to be transpiled and any selectors that need to be processed.