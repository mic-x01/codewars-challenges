-module(kata).
-export([move/2]).

move(Pos, Roll) -> 
  Pos + Roll * 2.
