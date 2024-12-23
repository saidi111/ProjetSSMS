SELECT
    c.customerkey AS CustomerKey,
    -- c.[GeographyKey], -- Not used in the result
    -- c.[CustomerAlternateKey], -- Not used
    -- c.[Title], -- Not used
    c.firstName AS FirstName,
    -- c.[MiddleName], -- Not used
    c.LastName AS LastName,
    c.FirstName + ' ' + c.LastName AS FullName, -- Combined First and Last Name
    -- c.[NameStyle], -- Not used
    -- c.[BirthDate], -- Not used
    -- c.[MaritalStatus], -- Not used
    -- c.[Suffix], -- Not used
    CASE c.gender
        WHEN 'M' THEN 'Male'
        WHEN 'F' THEN 'Female'
        ELSE 'Unknown' -- Default for unrecognized gender
    END AS Gender,
    -- c.[EmailAddress], -- Not used
    -- c.[YearlyIncome], -- Not used
    -- c.[TotalChildren], -- Not used
    -- c.[NumberChildrenAtHome], -- Not used
    -- c.[EnglishEducation], -- Not used
    -- c.[SpanishEducation], -- Not used
    -- c.[FrenchEducation], -- Not used
    -- c.[EnglishOccupation], -- Not used
    -- c.[SpanishOccupation], -- Not used
    -- c.[FrenchOccupation], -- Not used
    -- c.[HouseOwnerFlag], -- Not used
    -- c.[NumberCarsOwned], -- Not used
    -- c.[AddressLine1], -- Not used
    -- c.[AddressLine2], -- Not used
    -- c.[Phone], -- Not used
    c.DateFirstPurchase AS DateFirstPurchase,
    -- c.[CommuteDistance], -- Not used
    g.city AS [Customer City] -- Customer City from Geography Table
FROM 
    [DimCustomer] AS c
    LEFT JOIN dbo.DimGeography AS g ON g.geographyKey = c.geographykey
ORDER BY 
    CustomerKey ASC; -- Sorted by CustomerKey in ascending order
