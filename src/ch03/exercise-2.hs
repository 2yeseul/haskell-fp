el :: String -> (String -> String)
el = \tag -> \content -> "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

makeHtml :: String -> String -> String
makeHtml title body = html_ (head_ (title_ title) <> body_ body)

-- ex02
html_ :: String -> String
html_ = el "html"

body_ :: String -> String
body_ = el "body"

head_ :: String -> String
head_ = el "head"

title_ :: String -> String
title_ = el "title"

-- ex03
p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1_"

-- ex04
myhtml = makeHtml "title" (h1_ "Hello World" <> p_ "Hello")