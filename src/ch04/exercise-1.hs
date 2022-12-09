import GHC.Natural

type Document =
  [Structure]

data Structure
  = Heading Natural String
  | Paragraph String
  | UnorderedList [String]
  | OrderedList [String]
  | CodeBlock [String]

ex1 :: Document = [Paragraph "Hello, world!"]

ex2 :: Document = [Heading 1 "Welcome", Paragraph "To this tutorial about Haskell."]

ex3 :: Document = [Paragraph "Remember that multiple lines with no separation are grouped together to a single paragraph but list items remain separate.", OrderedList ["Item 1 of a list", "Item 2 of the same list"]]