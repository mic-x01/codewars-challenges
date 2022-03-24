-module(kata).
-export([pairs/1]).

pairs([]) -> 0;
pairs([_]) -> 0;
pairs([H, H2 | T]) ->
  case abs(H - H2) of 
    1 -> 1 + pairs(T);
    _ -> pairs(T)
  end.
