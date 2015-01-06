defmodule ScrambleSolver.BoardTest do
  use ExUnit.Case
  alias ScrambleSolver.Board

  test "A board is constructed from an ASCII string" do
    assert {:ok, [["A"]]} = Board.new("A")
  end

  test "A multidimensional board is constructed from an ASCII string" do
    assert {:ok, [["A"], ["T"]]} = Board.new("""
    A
    T
    """)
  end
  #
  # test "Finding all the possible non-truncated paths through a board's dimensions numerically" do
  #   # Assuming a board that's 2x2:
  #   #
  #   #     {0,0} {0,1}
  #   #     {1,0} {1,1}
  #   #
  #   all_possible_paths = [
  #     # starting at 0,0
  #     # |- proceeding to 0,1
  #     [{0,0}, {0,1}, {1,0}, {1,1}],
  #     [{0,0}, {0,1}, {1,1}, {1,0}],
  #     # |- proceeding to 1,0
  #     [{0,0}, {1,0}, {0,1}, {1,1}],
  #     [{0,0}, {1,0}, {1,1}, {0,1}],
  #     # |- proceeding to 1,1
  #     [{0,0}, {1,1}, {0,1}, {1,0}],
  #     [{0,0}, {1,1}, {1,0}, {0,1}],
  #
  #     # starting at 0,1
  #     # |- proceeding to 0,0
  #     [{0,1}, {0,0}, {1,0}, {1,1}],
  #     [{0,1}, {0,0}, {1,1}, {1,0}],
  #     # |- proceeding to 1,0
  #     [{0,1}, {1,0}, {0,1}, {1,1}],
  #     [{0,1}, {1,0}, {1,1}, {0,1}],
  #     # |- proceeding to 1,1
  #     [{0,1}, {1,1}, {0,1}, {1,0}],
  #     [{0,1}, {1,1}, {1,0}, {0,1}],
  #
  #     # starting at 1,0
  #     # |- proceeding to 0,0
  #     [{1,0}, {0,0}, {1,0}, {1,1}],
  #     [{1,0}, {0,0}, {1,1}, {1,0}],
  #     # |- proceeding to 0,1
  #     [{1,0}, {0,1}, {0,1}, {1,1}],
  #     [{1,0}, {0,1}, {1,1}, {0,1}],
  #     # |- proceeding to 1,1
  #     [{1,0}, {1,1}, {0,1}, {1,0}],
  #     [{1,0}, {1,1}, {1,0}, {0,1}],
  #
  #     # starting at 1,1
  #     # |- proceeding to 0,0
  #     [{1,1}, {0,0}, {1,0}, {1,1}],
  #     [{1,1}, {0,0}, {1,1}, {1,0}],
  #     # |- proceeding to 0,1
  #     [{1,1}, {0,1}, {0,1}, {1,1}],
  #     [{1,1}, {0,1}, {1,1}, {0,1}],
  #     # |- proceeding to 1,0
  #     [{1,1}, {1,0}, {0,1}, {1,0}],
  #     [{1,1}, {1,0}, {1,0}, {0,1}],
  #   ]
  #
  #   assert all_possible_paths == Board.numeric_paths({2,2}) # For a 2x2 grid
  # end

  test "Finding the possible numeric paths starting from a given prefix is
  possible" do
    # Assuming a board that's 2x2:
    #
    #     {0,0} {0,1} {1,0} {1,1}
    #
    # We will enumerate all the paths starting with a given prefix (a 4-point
    # prefix, which should lead to no remaining paths)

    starting_prefix = [{0,0}, {0,1}, {1,0}, {1,1}]
    grid = Board.get_grid({2,2})

    assert [] == Board.enumerate_paths_from_prefix(starting_prefix, grid)
  end

  # test "Finding all the possible paths through the board is possible" do
  #   {:ok, board} = Board.new("AS")
  #   all_possible_paths = [
  #     ~w(A S),
  #     ~w(S A)
  #   ]
  #
  #   assert all_possible_paths == Board.paths(board)
  # end
end
