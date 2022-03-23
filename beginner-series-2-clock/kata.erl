-module(kata).
-export([past/3]).

past(H, M, S) -> 
  timer:hours(H) + timer:minutes(M) + timer:seconds(S).
