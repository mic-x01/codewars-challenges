-module(solution).
-export([middle/1]).

is_even(N) -> {N rem 2 =:= 0, N}.

middle(S) -> 
  case is_even(length(S)) of
    {_, 1} -> S;
    {true, N} -> lists:sublist(S, N div 2, 2);
    {false, N} -> lists:sublist(S, 1 + N div 2, 1)
  end.
  
