-module(kata).
-export([check_for_factor/2]).

check_for_factor(Base, Factor) -> 
  Base rem Factor =:= 0.
