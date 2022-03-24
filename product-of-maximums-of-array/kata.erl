-module(kata).
-export([max_product/2]).

max_product(_, 0) -> 1;
max_product(A, S) -> 
  M = lists:max(A),
  M * max_product(A--[M], S-1).
