-module(kata).
-export([summation/1]).

summation(1) -> 1;
summation(N) -> N + summation(N-1).
