defmodule ScrambleSolver do
  defmodule Context do
    defstruct board: nil, dictionary: nil, paths: [], words: []
  end

  def solve(board, dictionary) do
    matches = generate_context(board, dictionary)
              |> find_all_paths
              |> filter_matched_words
    {:ok, matches.words}
  end

  defp find_all_paths(context) do
    %ScrambleSolver.Context{context | paths: ["A"]}
  end

  defp filter_matched_words(context) do
    %ScrambleSolver.Context{context | words: ["A"]}
  end

  defp generate_context(board, dictionary) do
    %ScrambleSolver.Context{board: board, dictionary: dictionary}
  end
end
