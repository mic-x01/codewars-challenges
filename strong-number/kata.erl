-module(kata).
-export([strong/1]).

strong(N) -> 
  case strong(N, 0) of
    N -> "STRONG!!!!";
    _Else -> "Not Strong !!"
  end.

strong(0, S) -> S;
strong(N, S) -> 
  D = N div 10,
  R = fac(N rem 10),
  strong(D, R + S).

fac(N) when N < 2 ->
  1;
fac(N) ->
  N * fac(N-1).
