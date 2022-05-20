module Playground exposing (main)
import Html

computeSpeed distance time =
    distance / time


computeTime startTime endTime =
    endTime - startTime

escapeEarth myVelocity mySpeed fuelStatus =
  let
    escapeVelocityInKmPerSec =
      1.186
    orbitalSpeedInKmPerSec =
      7.67
    whereToLand =
      if fuelStatus == "low" then
        "Land on droneship"
       else
        "Land on launchpad"
  in
  if myVelocity > escapeVelocityInKmPerSec then
    "Godspeed"
  else if mySpeed == orbitalSpeedInKmPerSec then
    "Stay in orbit"
  else
    whereToLand

add a b =
  a + b


multiply c d =
  c * d


divide e f =
  e / f

-- main =
--   Html.text (escapeEarth 11 (computeSpeed 7.67 (computeTime 2 3)))

-- main =
--   computeTime 2 3
--     |> computeSpeed 7.67
--     |> escapeEarth 11
--     |> Html.text

-- main =
--   Html.text (String.fromFloat (add 5 (multiply 10 (divide 30 10))))

-- main =
--   divide 30 10
--     |> multiply 10
--     |> add 5
--     |> String.fromFloat
--     |> Html.text

-- main =
--   Html.text <| String.fromFloat <| add 5 <| multiply 10 <| divide 30 10

-- main =
--   escapeEarth 1 6.7 "low"
--     |> Html.text

-- weekday dayInNumber =
--   if dayInNumber == 0 then
--     "Sunday"

--   else if dayInNumber == 1 then
--     "Monday"

--   else if dayInNumber == 2 then
--     "Tuesday"

--   else if dayInNumber == 3 then
--     "Wednesday"

--   else if dayInNumber == 4 then
--     "Thursday"

--   else if dayInNumber == 5 then
--     "Friday"

--   else if dayInNumber == 6 then
--     "Saturday"

--   else
--     "Unknown day"

weekday dayInNumber =
  case dayInNumber of
    0 ->
      "Sunday"
    1 ->
      "Monday"
    2 ->
      "Tuesday"
    3 ->
      "Wednesday"
    4 ->
      "Thursday"
    5 ->
      "Friday"
    6 ->
      "Saturday"
    _ ->
      "Unknown day"

hashtag dayInNumber =
  case weekday dayInNumber of
    "Sunday" ->
      "#SinDay"
    "Monday" ->
      "#MondayBlues"
    "Tuesday" ->
      "#TakeMeBackTuesday"
    "Wednesday" ->
      "#HumpDay"
    "Thursday" ->
      "#ThrowbackThursday"
    "Friday" ->
      "#FlashbackFriday"
    "Saturday" ->
      "#Caturday"
    _ ->
      "#Whatever"

-- main =
--   Html.text <| hashtag 5

revelation =
  """
  It became very clear to me sitting out there today
  that every decision I've made in my entire life has
  been wrong. My life is the complete "opposite" of
  everything I want it to be. Every instinct I have,
  in every aspect of life, be it something to wear,
  something to eat - it's all been wrong.
  """

main =
  Html.text revelation
  