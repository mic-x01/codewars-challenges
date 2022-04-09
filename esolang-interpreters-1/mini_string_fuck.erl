-module(mini_string_fuck).
-export([my_first_interpreter/1]).

my_first_interpreter(Code) -> 
  my_first_interpreter(Code, 0, []).

my_first_interpreter([], _M, O) -> lists:reverse(O);
my_first_interpreter(L, 256, O) -> 
  my_first_interpreter(L, 0, O);
my_first_interpreter([$+ | T], M, O) -> 
  my_first_interpreter(T, M+1, O);
my_first_interpreter([$. | T], M, O) ->
  my_first_interpreter(T, M, [M] ++ O);
my_first_interpreter([_H | T], M, O) -> 
  my_first_interpreter(T, M, O).

