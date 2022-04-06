-module(kata).
-export([subtract_sum/1]).

list_fruits() -> 
  [
   {"kiwi", [1, 3, 24, 26, 47, 49, 68, 70, 91, 93]},
   {"pear", [2, 21, 23, 42, 44, 46, 65, 67, 69, 88]},
   {"banana", [4, 6, 25, 29, 48, 50, 71, 73, 92, 94, 96]},
   {"melon", [6, 7, 28, 30, 32, 51, 53, 74, 76, 95, 97]},
   {"pineapple", [8, 10, 12, 31, 33, 52, 56, 75, 77, 79, 98, 100]},
   {"apple", [9, 15, 27, 36, 45, 54, 63, 72, 81, 90, 99]},
   {"cucumber", [11, 13, 34, 55, 57, 59, 78, 80]},
   {"orange", [14, 16, 35, 37, 39, 58, 60, 83]},
   {"grape", [15, 17, 19, 38, 40, 61, 82, 84, 86]},
   {"cherry", [20, 22, 41, 43, 62, 64, 66, 85, 87, 89]}
  ].

subtract_sum(N) ->
  R = N - sum(N, 0),
  L = lists:filter(fun(E) -> lists:member(R, element(2, E)) end, list_fruits()),
  case L of
    [] -> subtract_sum(R);
    [H | _T] -> element(1, H)
  end.

sum(0, S) -> S;
sum(N, S) -> sum((N div 10), S + (N rem 10)).
