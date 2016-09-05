

data Json a = JStr String | JNum a | JArr [Json a] | JMap [(String, Json a)]


jsonArrCommaHelper [] = []
jsonArrCommaHelper (x:[]) = jsonToStr x
jsonArrCommaHelper (x:xs) = jsonToStr x ++ "," ++ jsonArrCommaHelper xs

jsonToStr :: (Num a, Show a) => Json a -> String
jsonToStr (JStr s) = "\"" ++ s ++ "\""
jsonToStr (JNum a) = show a
jsonToStr (JArr []) = "[]"
jsonToStr (JArr xs) =  "[" ++ (jsonArrCommaHelper xs) ++ "]"
jsonToStr (JMap xs)

parseS "" = "hi"
parseS s = s

--jsonToStr (JArr [JStr "fsdf", JStr "fsdf", JNum 3])

