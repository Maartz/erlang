%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/b820099d9cb3518c7c3326f913eb6515a7067a5a/exercises/spiral-matrix/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(spiral_matrix_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_empty_spiral_test_'() ->
    Expected=[

    ],
    {"empty spiral",
     ?_assertEqual(Expected, spiral_matrix:make(0))}.

'2_trivial_spiral_test_'() ->
    Expected=[
        [1]
    ],
    {"trivial spiral",
     ?_assertEqual(Expected, spiral_matrix:make(1))}.

'3_spiral_of_size_2_test_'() ->
    Expected=[
        [1, 2],
        [4, 3]
    ],
    {"spiral of size 2",
     ?_assertEqual(Expected, spiral_matrix:make(2))}.

'4_spiral_of_size_3_test_'() ->
    Expected=[
        [1, 2, 3],
        [8, 9, 4],
        [7, 6, 5]
    ],
    {"spiral of size 3",
     ?_assertEqual(Expected, spiral_matrix:make(3))}.

'5_spiral_of_size_4_test_'() ->
    Expected=[
        [ 1,  2,  3,  4],
        [12, 13, 14,  5],
        [11, 16, 15,  6],
        [10,  9,  8,  7]
    ],
    {"spiral of size 4",
     ?_assertEqual(Expected, spiral_matrix:make(4))}.

'6_spiral_of_size_5_test_'() ->
    Expected=[
        [ 1,  2,  3,  4,  5],
        [16, 17, 18, 19,  6],
        [15, 24, 25, 20,  7],
        [14, 23, 22, 21,  8],
        [13, 12, 11, 10,  9]
    ],
    {"spiral of size 5",
     ?_assertEqual(Expected, spiral_matrix:make(5))}.
