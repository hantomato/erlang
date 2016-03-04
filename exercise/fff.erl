-module(fff).
-compile(export_all).





one() -> 1.
two() -> 2.

add(X,Y) -> X() + Y().
%% fff:add(fun fff:one/0, fun fff:two/0).

%% chapter. high order function.
