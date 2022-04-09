-module(kata).
-export([row_sum_odd_numbers/1]).

row_sum_odd_numbers(Row) ->
  I = row_initial_number(Row),
  row_sum_odd_numbers(Row, I).

row_sum_odd_numbers(Row, I) -> 
  sum_rep(Row, I, fun(V) -> I + V * 2 end).

row_initial_number(Row) ->
  sum_rep(Row, 1, fun(V) -> V * 2 end).

sum_rep(Rep, IniVal, FunInc) ->
  lists:sum([IniVal|[FunInc(X) || X <- lists:seq(1, Rep-1, 1)]]).
