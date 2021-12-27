defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name |> String.trim |> String.first
  end

  def initial(name) do
    (name |> first_letter |> String.upcase) <> "."
  end

  def initials(full_name) do
    full_name |> String.split(" ") |> Enum.map(fn x -> initial(x) end) |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do

    n1 = initials(full_name1)
    n2 = initials(full_name2)
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{n1}  +  #{n2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
