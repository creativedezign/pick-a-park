USE [parks]
GO
/****** Object:  StoredProcedure [Parks].[Find parks]    Script Date: 07/05/2015 13:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Parks].[Find parks]
@Latitude DECIMAL(12,8),
@Longitude DECIMAL(12,8),
@Feature NVARCHAR(20)
AS
SELECT TOP 5
       Parks.Name,
       Parks.Latitude,
       Parks.Longitude
FROM   Parks.Parks
WHERE  CASE
         WHEN @Feature = 'slide' AND Parks.[Slide] = 1 THEN 1
         WHEN @Feature = 'swing' AND Parks.[Swing] = 1 THEN 1
         WHEN @Feature = 'basketball' AND Parks.[Basketball court] = 1 THEN 1
         WHEN @Feature = 'pirateship' AND Parks.[Pirate ship] = 1 THEN 1
         WHEN @Feature = 'barbeque' AND Parks.[Barbeque] = 1 THEN 1
         WHEN @Feature = 'picnic' AND Parks.[Picnic setting] = 1 THEN 1
         WHEN @Feature = 'fountain' AND Parks.[Drinking fountain] = 1 THEN 1
         WHEN @Feature = 'toilet' AND Parks.[Public toilets] = 1 THEN 1
         WHEN @Feature = 'accessible' AND Parks.[Disabled access] = 1 THEN 1
         WHEN @Feature = 'lighting' AND Parks.[Public lighting] = 1 THEN 1
         WHEN @Feature = 'nosmoking' AND Parks.[No-smoking area] = 1 THEN 1
         WHEN @Feature = 'footpaths' AND Parks.[Footpaths] = 1 THEN 1
         WHEN @Feature NOT IN ('slide', 'swing', 'basketball', 'pirateship', 'barbeque', 'picnic', 'fountain', 'toilet', 'accessible', 'lighting', 'nosmoking', 'footpaths') THEN 1
         ELSE 0
       END = 1
ORDER  BY geography::Point(@Latitude, @Longitude, 4326).STDistance(Parks.Location);
GO
