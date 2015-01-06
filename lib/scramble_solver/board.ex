defmodule ScrambleSolver.Board do
  @type board :: list(list(String.t))
  @spec new(String.t) :: {:ok, board}
  def new(board_string) do
    matrix = board_string
             |> String.split
             |> Enum.map(&String.graphemes/1)
    {:ok, matrix}
  end

  @type path :: list(String.t)
  @spec paths(board) :: list(path)
  def paths(board) do
    board
    |> board_dimensions
    |> numeric_paths
    |> extract_strings(board)
  end

  defp do_paths([], acc), do: acc
  defp do_paths(board, accumulator, used)

  defp board_dimensions(board) do
    {2,2}
  end

  def numeric_paths({width,height}) do
    get_grid({width, height})
    |> enumerate_paths([], [])
  end

  def get_grid({width, height}) do
    for x <- (0..width-1), y <- (0..height-1) do
      {x,y}
    end
  end

  def extract_strings(paths, board) do
    ["A"]
  end

  def enumerate_paths(grid, acc, visited) do
    enumerate_path(hd(grid)
  end

  def enumerate_paths_from_prefix(prefix, grid) do
  end
end
