-module(kata).
-export([josephus_survivor/2]).

josephus_survivor(N, K) ->
  josephus_survivor(N, K, K, lists:seq(1, N)).

josephus_survivor(1,_,_,[H]) -> H;
josephus_survivor(N,K,C,L) when C > N ->
  josephus_survivor(N,K,C-N,L);
josephus_survivor(N,K,C,L) ->
  josephus_survivor(N-1,K,C+K-1,lists:delete(lists:nth(C,L),L)).
