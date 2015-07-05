USE [parks]
GO
/****** Object:  StoredProcedure [Parks].[Summarise parks]    Script Date: 07/05/2015 13:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Parks].[Summarise parks] AS
TRUNCATE TABLE [Parks].[Parks];

INSERT INTO [Parks].[Parks]
SELECT [Name],
       [Latitude],
       [Longitude],
       [Location],
       [Slide],
       [Swing],
       [Basketball court],
       [Pirate ship],
       [BBQ] AS [Barbeque],
       [Picnic table] AS [Picnic setting],
	   NULL AS [Drinking fountain],
       [Toilet] AS [Public toilets],
       [Disabled access],
       NULL AS [Public lighting],
       NULL AS [No-smoking area],
       NULL AS [Footpaths]
FROM   [Parks].[Parks of Melbourne];

INSERT INTO [Parks].[Parks]
SELECT Name,
       AVG(Latitude) AS Latitude,
       AVG(Longitude) AS Longitude,
       geography::Point(AVG(Latitude), AVG(Longitude), 4326) AS Location,
       NULL AS [Slide],
       NULL AS [Swing],
       NULL AS [Basketball court],
       NULL AS [Pirate ship],
       NULL AS [Barbeque],
       NULL AS [Picnic setting],
	   NULL AS [Drinking fountain],
       NULL AS [Public toilets],
       NULL AS [Disabled access],
       NULL AS [Public lighting],
       NULL AS [No-smoking area],
       NULL AS [Footpaths]
FROM   Parks.[Parks and conservation reserves]
GROUP  BY Name;

UPDATE Parks
SET    [Barbeque] = 1
FROM   [Parks].[Parks] Parks
CROSS  JOIN [Parks].[Outdoor furniture]
WHERE  [Outdoor furniture].Name = 'Barbeque'
AND    Parks.Location.STDistance([Outdoor furniture].Location) <= 500.0;

UPDATE Parks
SET    [Picnic setting] = 1
FROM   [Parks].[Parks] Parks
CROSS  JOIN [Parks].[Outdoor furniture]
WHERE  [Outdoor furniture].Name = 'Picnic Setting'
AND    Parks.Location.STDistance([Outdoor furniture].Location) <= 500.0;

UPDATE Parks
SET    [Drinking fountain] = 1
FROM   [Parks].[Parks] Parks
CROSS  JOIN [Parks].[Outdoor furniture]
WHERE  [Outdoor furniture].Name = 'Drinking Fountain'
AND    Parks.Location.STDistance([Outdoor furniture].Location) <= 500.0;

UPDATE Parks
SET    [Public toilets] = 1
FROM   [Parks].[Parks] Parks
CROSS  JOIN [Parks].[Public toilets]
WHERE  Parks.Location.STDistance([Public toilets].Location) <= 500.0;

UPDATE Parks
SET    [Disabled access] = 1
FROM   [Parks].[Parks] Parks
CROSS  JOIN [Parks].[Building accessibility]
WHERE  Parks.Location.STDistance([Building accessibility].Location) <= 500.0
AND    [Building accessibility].[Accessibility rating] >= 3;

UPDATE Parks
SET    [Public lighting] = 1
FROM   [Parks].[Parks]
CROSS  JOIN [Parks].[Public lighting]
WHERE  Parks.Location.STDistance([Public lighting].Location) <= 500.0;

UPDATE Parks
SET    [No-smoking area] = 1
FROM   [Parks].[Parks]
CROSS  JOIN [Parks].[Outdoor no-smoking area]
WHERE  Parks.Location.STDistance([Outdoor no-smoking area].Location) <= 500.0;

UPDATE Parks
SET    [Footpaths] = 1
FROM   [Parks].[Parks]
CROSS  JOIN [Parks].[Footpaths]
WHERE  Parks.Location.STDistance([Footpaths].Location) <= 500.0;
GO
