main :: IO ()
main = putStrLn "<html><body>Hello, world!</body></html>"

wrapHtml content = "<html><body>" <> content <> "</body></html>"

myHtml = wrapHtml "Hello, world!"