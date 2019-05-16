--Joe Harkins
--Conways Life
module Life exposing (..)

type alias Cell = { x : Int, y : Int } --the coordinate of one space on the board
type CellStatus = Dead | Alive --making up a brand new type to represent one of the rules
type alias Board = Cell -> CellStatus --a function

nextStatus : Int -> CellStatus -> CellStatus 
nextStatus numberOfLivingNeighbors currentStatus = 
    if (currentStatus == Alive && numberOfLivingNeighbors < 2)
        then Dead 
    else if (currentStatus == Alive && numberOfLivingNeighbors > 3)
        then Dead 
    else if (currentStatus == Dead && numberOfLivingNeighbors == 3)
        then Alive 
    else currentStatus
            
livingNeighbors : Board -> Cell -> Int
livingNeighbors currentBoard cell = --or map the board to the neighbors
    let
        right =  
            if currentBoard {x = cell.x+1, y = cell.y} == Alive 
                then 1
                else 0
        left =  
            if currentBoard {x = cell.x-1, y = cell.y} == Alive
                then 1
                else 0
        bottom =  
            if currentBoard {x = cell.x, y = cell.y-1} == Alive
                then 1
                else 0
        top =  
            if currentBoard {x = cell.x, y = cell.y+1} == Alive
                then 1
                else 0
        topRight =  
            if currentBoard {x = cell.x+1, y = cell.y+1} == Alive
                then 1
                else 0
        topLeft =  
            if currentBoard {x = cell.x-1, y = cell.y+1} == Alive
                then 1
                else 0
        bottomLeft =  
            if currentBoard {x = cell.x-1, y = cell.y-1} == Alive
                then 1
                else 0
        bottomRight =  
            if currentBoard {x = cell.x+1, y = cell.y-1} == Alive
                then 1
                else 0
    
    in right + left + bottom + top + topRight + topLeft + bottomLeft + bottomRight

nextBoard : Board -> Board
nextBoard currentBoard = 
    let
        newBoard : Board
        newBoard cell = 
            let
                currentNeighbors = livingNeighbors currentBoard cell
                currentStatus = currentBoard cell
                theNextStatus = nextStatus currentNeighbors currentStatus
            in
            theNextStatus
        in 
        newBoard

exampleBoard : Board
exampleBoard cell =
    case (cell.x, cell.y) of
        (0, 0) -> Alive
        (1, 0) -> Alive
        (1, 1) -> Alive
        _ -> Dead

exampleBoard2 : Board
exampleBoard2 cell = Alive
