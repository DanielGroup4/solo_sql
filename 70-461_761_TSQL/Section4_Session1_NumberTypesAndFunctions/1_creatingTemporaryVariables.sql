-- Creating temporary variables

-- This is a way
/*
DECLARE @myvar AS INT 
SET @myvar = 2
*/

/*
-- This is faster way
DECLARE @myvar AS int = 2
SELECT @myvar
SELECT @myvar AS myVariable
*/

/*
-- I want to chage the value
DECLARE @myvar AS int = 2
SET @myvar = 3
SELECT @myvar AS myVariable
*/

/*
-- We can also manipulate it
DECLARE @myvar AS int = 2
SET @myvar = @myvar * 4 + 1
SELECT @myvar AS myVariable
*/

-- Add some coments like this

-- Initialise a variable, give it a data type and an initial value
DECLARE @myvar AS int = 2

-- Increase the value by 1 
SET @myvar = @myvar + 1

-- Retrieve that value
SELECT @myvar AS myVariable

