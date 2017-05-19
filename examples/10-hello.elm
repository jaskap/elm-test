

import Html exposing (..)
import Html.Attributes exposing (..)
-- import Graphics.Element exposing (..)
import List exposing (..)


astyledMessage =
  div [Html.Attributes.style[("font-style", "bold")
      ,("font-size", "15px")
      ,("color", "black")
      ]]
      [text (print "sdd " l3)]

helloWorldPic =
  img [src "http://sourcefed.com/wp-content/uploads/2014/12/world.jpg"
   ,style
     [("width",  "500px")
        ,("height", "400px")
     ]
  ][]

main =div[][astyledMessage, helloWorldPic]

--Recursion
facR : Int -> Int
facR n =
  if n < 1 then
    1
  else
    n*facR(n-1)

hemachandra : Int -> Int
hemachandra n =
  if n==0 then
     1
  else if  n==1 then
     1
  else
   hemachandra (n-1) + hemachandra (n-2)

power : Int -> Int -> Int
power x y =
  if y < 1 then
     1
  else
     x * power x (y-1)

firstTenPowersOfTwo = List.map ((^)2) [1,2,3]

l1 = [1,2,3,4]
l2 = [1,2,3,4,5]

l3 = concatMap (\f -> List.map f l2) (List.map (,) l1)


-- a simple function to check if n is even
isEven : Int -> Bool
isEven n = n % 2 == 0

--defining a simple function that squares numbers
sqr : Int -> Int
sqr n =
  n*n

-- convert temperature in Centigrade to Fahrenheit
centigradeToFahrenheit : Float -> Float
centigradeToFahrenheit c =
  c * 9/5 + 32

add : Int -> Int -> Int
add a b =
  a + b


increment : Int -> Int
increment n = n+1
{--
main = flow down [print "The sqr of 5 is : " (sqr 5)
        ,print "40 degrees centigrade in Fahrenheit is : " (centigradeToFahrenheit 40)
        ,print "Is 5 an even number : " (isEven 5)
        ,print "3 + 2 is : " (add 3 2)
        ,print "incrementing 5 we get : " (increment 5)
        ]
--}
-- a helper function to make display easier
print : String -> a -> String
print message value = (message ++ (toString value))
