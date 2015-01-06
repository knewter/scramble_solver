defmodule ScrambleSolverTest do
  use ExUnit.Case

  test "a basic board with a basic dictionary can be fully solved" do
    # We'll just write some wishful thinking code.  We'd like to give some ascii to a function to get a new board, whatever that means.

    {:ok, board} = ScrambleSolver.Board.new("A")

    # Next, we want to specify the dictionary it uses for solutions.  In
    # general, we won't have dictionaries with single-character-words in them,
    # since they're invalid as far as I know, but for now it makes this first
    # test easier.

    dictionary = ["A"]

    # Finally, we'd like to get a list of solutions back from the `solve` function

    {:ok, ["A"]} = ScrambleSolver.solve(board, dictionary)
  end

  # test "a slightly more complex board with a slightly more complex dictionary can be fully solved" do
  #   {:ok, board} = ScrambleSolver.Board.new("""
  #   AS
  #   TZ
  #   """)
  #
  #   dictionary = ["AS", "AT", "ZOMBOCOM"]
  #
  #   {:ok, ["AS", "AT"]} = ScrambleSolver.solve(board, dictionary)
  # end
end
