-module(solution).
-import(timer, [sleep/1]).
-export([whiner/1]).

whiner(Parent) ->
    receive
      {awake} ->
        spawn_link(fun() -> whiner_task(Parent) end);
      {give_up} -> 
        exit("Bye Bye");
      _Else -> _Else
    end,
    whiner(Parent).

whiner_task(Parent) ->
  Parent ! {whine, "Is anybody out there?"},
  timer:sleep(1000),
  whiner_task(Parent).
