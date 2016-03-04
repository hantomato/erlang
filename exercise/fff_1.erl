-module(fff_1).
-compile(export_all). % 오! 이런게 있었네!
-export([ioformattest/1]).
-export([getHead/1]).
% -export([getSecond/1]).
-export([right_age/1]).
% -export([heh_fine/0]).

%% chapter. recursion
-export([fac/1]).
-export([len/1]).
-export([tail_fac/1]).
-export([duplicate/2]).
-export([tail_duplicate/2]).





%% duplicate/2 : 리스트를 주어진 갯수만큼의 리스트의 리스트로 만든다.
duplicate(0, _) -> [];
duplicate(N, Term) -> [Term | duplicate(N-1, Term)].

tail_duplicate(N, Term) -> tail_duplicate(N, Term, []).

tail_duplicate(0, _, List) -> List;
tail_duplicate(N, Term, List) when n > 0 -> tail_duplicate(N-1, Term, [Term|List]).
%% iterative
% function(N, Term) ->
% 	while N > 0 ->
% 		List = [Term|List],
% 		N = N-1
% 	end,
% 	List.




%%fac
tail_fac(N) -> tail_fac(N, 1).

tail_fac(0, Acc) -> Acc;
tail_fac(N, Acc) when N > 0 -> tail_fac(N-1, N*Acc).


len([]) -> 0;
len([_|T]) -> 1 + len(T).
%% show following description
%% len( [1,2,3,4] ) = len( [1 | [2,3,4]] )
%%                  = 1 + len( [2 | [3,4]] )
%%					= 1 + 1 + len( [3 | [4]] )
%%					= 1 + 1 + 1 + len( [4 | []] )
%%					= 1 + 1 + 1 + 1 + len( [] )
%%					= 1 + 1 + 1 + 1 + 0
%%					= 1 + 1 + 1 + 1
%%					= 1 + 1 + 2
%%					= 1 + 3
%%					= 4


% fac(N) when N == 0 -> 1;
% fac(N) when N > 0 -> N * fac(N-1).
fac(0) -> 1;				%% base case
fac(N) -> N * fac(N-1).	

%% chapter. recursion ---------------------------------------


%% ----------------------------------------------------------
%% chatper Types 에 아래 api들 설명 있음.
%% list_to_tuple/1, tuple_to_list/1, list_to_integer/2
%% is_atom/1, is_tuple/1, is_list/1, is_boolean/1


% heh_fine() ->
% 	if 1 =:= 1 ->
% 		io:format("first!!");
% 		true ->					%% 이 ture가 if 문의 else 같은거.
% 		io:format("-- end")
% 	end.


right_age(X) when X >= 16, X =< 104 -> true;
right_age(_) -> false.
%% ,(comma) is andalso.
%%;(semicolon) orelse. 앞에가 true 이면, 뒤는 건너뜀.


%% ----------------------------------------------------------

valid_time({Date = {Y,M,D}, Time = {H,Min,S}}) ->
	io:format("The Date tuple (~p) says today is : ~p/~p/~f,~n", [Date, Y,M,D]),
	io:format("The time tuple (~p) indicated: ~p:~p:~p. ~n", [Time,H,Min,S]);
valid_time(_) ->
	io:format("Stop feeding me wrong data!~n").

getHead([H|_]) -> H.		% get head.
%% getSecond([_, X|_]) -> X.	% get second item.


%% ----------------------------------------------------------

ioformattest(male) ->
	io:format("you type male. ");
ioformattest(female) ->
	io:format("you type female~n"),
	io:format("~f% of population is ~s. ", [50.0, "woman"]);
ioformattest(Name) ->
	io:format("you type : ~10s. ", [Name]).
%% ~n line break. ~s string. ~f float. ~p number?


