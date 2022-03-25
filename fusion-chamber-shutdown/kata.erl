-module(kata).
-export([burner/3]).

water({W, H, O}) when H < 2; O < 1 -> {W, H, O};
water({W, H, O}) -> water({W+1, H-2, O-1}).

water(H, O) -> water({0, H, O}).

co2({CO, C, O}) when C < 1; O < 2 -> {CO, C, O};
co2({CO, C, O}) -> co2({CO+1, C-1, O-2}).

co2(C, O) -> co2({0, C, O}).

methane({M, C, H}) when C < 1; H < 4 -> {M, C, H};
methane({M, C, H}) -> methane({M+1, C-1, H-4}).

methane(C, H) -> methane({0, C, H}).

burner(C, H, O) -> 
  {Water, H2, O2} = water(H, O), 
  {CO2, C2, _} = co2(C, O2), 
  {Methane, _, _} = methane(C2, H2),
  {Water, CO2, Methane}.
