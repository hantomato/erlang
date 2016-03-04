-module(myfunc).
%-compile(export_all). % 오! 이런게 있었네!
-export([ioformattest/1]).
-export([testlist1/1]).
% -export([testlist2/1]).


testlist1([H|_]) -> H.
% testlist2([H|_]) -> _.


% ----------------------------------------------------------

ioformattest(male) ->
	io:format("you type male. ");
ioformattest(female) ->
	io:format("you type female~n"),
	io:format("~f% of population is ~s. ", [50.0, "woman"]);
ioformattest(Name) ->
	io:format("you type : ~10s. ", [Name]).
