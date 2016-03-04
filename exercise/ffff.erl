-module(ffff).
%-compile(export_all). % 오! 이런게 있었네!
-export([ioformattest/1]).
-export([getHead/1]).
-export([getSecond/1]).


getHead([H|_]) -> H.		% get head.
getSecond([H, X|_]) -> X.	% get second item.


% ----------------------------------------------------------

ioformattest(male) ->
	io:format("you type male. ");
ioformattest(female) ->
	io:format("you type female~n"),
	io:format("~f% of population is ~s. ", [50.0, "woman"]);
ioformattest(Name) ->
	io:format("you type : ~10s. ", [Name]).
