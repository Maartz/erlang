%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/b820099d9cb3518c7c3326f913eb6515a7067a5a/exercises/rotational-cipher/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(rotational_cipher_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_rotate_a_by_0_same_output_as_input_test_'() ->
    [{"rotate a by 0, same output as input "
      "(encrypt)",
      ?_assertEqual("a", rotational_cipher:encrypt("a", 0))},
     {"rotate a by 0, same output as input "
      "(decrypt)",
      ?_assertEqual("a", rotational_cipher:decrypt("a", 0))}].

'2_rotate_a_by_1_test_'() ->
    [{"rotate a by 1 (encrypt)",
      ?_assertEqual("b", rotational_cipher:encrypt("a", 1))},
     {"rotate a by 1 (decrypt)",
      ?_assertEqual("a", rotational_cipher:decrypt("b", 1))}].

'3_rotate_a_by_26_same_output_as_input_test_'() ->
    [{"rotate a by 26, same output as input "
      "(encrypt)",
      ?_assertEqual("a", rotational_cipher:encrypt("a", 26))},
     {"rotate a by 26, same output as input "
      "(decrypt)",
      ?_assertEqual("a",
		    rotational_cipher:decrypt("a", 26))}].

'4_rotate_m_by_13_test_'() ->
    [{"rotate m by 13 (encrypt)",
      ?_assertEqual("z", rotational_cipher:encrypt("m", 13))},
     {"rotate m by 13 (decrypt)",
      ?_assertEqual("m",
		    rotational_cipher:decrypt("z", 13))}].

'5_rotate_n_by_13_with_wrap_around_alphabet_test_'() ->
    [{"rotate n by 13 with wrap around alphabet "
      "(encrypt)",
      ?_assertEqual("a", rotational_cipher:encrypt("n", 13))},
     {"rotate n by 13 with wrap around alphabet "
      "(decrypt)",
      ?_assertEqual("n",
		    rotational_cipher:decrypt("a", 13))}].

'6_rotate_capital_letters_test_'() ->
    [{"rotate capital letters (encrypt)",
      ?_assertEqual("TRL",
		    rotational_cipher:encrypt("OMG", 5))},
     {"rotate capital letters (decrypt)",
      ?_assertEqual("OMG",
		    rotational_cipher:decrypt("TRL", 5))}].

'7_rotate_spaces_test_'() ->
    [{"rotate spaces (encrypt)",
      ?_assertEqual("T R L",
		    rotational_cipher:encrypt("O M G", 5))},
     {"rotate spaces (decrypt)",
      ?_assertEqual("O M G",
		    rotational_cipher:decrypt("T R L", 5))}].

'8_rotate_numbers_test_'() ->
    [{"rotate numbers (encrypt)",
      ?_assertEqual("Xiwxmrk 1 2 3 xiwxmrk",
		    rotational_cipher:encrypt("Testing 1 2 3 testing", 4))},
     {"rotate numbers (decrypt)",
      ?_assertEqual("Testing 1 2 3 testing",
		    rotational_cipher:decrypt("Xiwxmrk 1 2 3 xiwxmrk",
					      4))}].

'9_rotate_punctuation_test_'() ->
    [{"rotate punctuation (encrypt)",
      ?_assertEqual("Gzo'n zvo, Bmviyhv!",
		    rotational_cipher:encrypt("Let's eat, Grandma!", 21))},
     {"rotate punctuation (decrypt)",
      ?_assertEqual("Let's eat, Grandma!",
		    rotational_cipher:decrypt("Gzo'n zvo, Bmviyhv!", 21))}].

'10_rotate_all_letters_test_'() ->
    [{"rotate all letters (encrypt)",
      ?_assertEqual("Gur dhvpx oebja sbk whzcf bire gur ynml "
		    "qbt.",
		    rotational_cipher:encrypt("The quick brown fox jumps over the lazy "
					      "dog.",
					      13))},
     {"rotate all letters (decrypt)",
      ?_assertEqual("The quick brown fox jumps over the lazy "
		    "dog.",
		    rotational_cipher:decrypt("Gur dhvpx oebja sbk whzcf bire gur ynml "
					      "qbt.",
					      13))}].
