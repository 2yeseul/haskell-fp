main = putStrLn myhtml

-- ex01

html_ :: String -> String
html_ content = "<html>" <> content <> "</html>"

body_ :: String -> String
body_ content = "<body>" <> content <> "</body>"

-- ex02
myHtml = html_ (body_ "Hello, world!")

-- ex03
head_ content = "<head>" <> content <> "</head>"

title_ content = "<title>" <> content <> "</title>"

-- ex04
makeHtml title body = html_ (head_ (title_ title) <> body_ body)

-- ex05
myhtml = makeHtml "title" "content"