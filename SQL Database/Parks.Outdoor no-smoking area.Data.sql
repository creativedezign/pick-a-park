/*
This script was created by Visual Studio on 5/07/2015 at 4:28 PM.
Run this script on hzbcrprwfg.database.windows.net.parks2 (parks) to make it the same as hzbcrprwfg.database.windows.net.parks (parks).
This script performs its actions in the following order:
1. Disable foreign-key constraints.
2. Perform DELETE commands. 
3. Perform UPDATE commands.
4. Perform INSERT commands.
5. Re-enable foreign-key constraints.
Please back up your target database before running this script.
*/
SET NUMERIC_ROUNDABORT OFF
GO
SET XACT_ABORT, ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
/*Pointer used for text / image updates. This might not be needed, but is declared here just in case*/
DECLARE @pv binary(16)
BEGIN TRANSACTION
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (0, -37.81179334, 144.98821380, N'East Melbourne Child Care Cooperative', geography::STGeomFromText('POINT (144.9882138 -37.81179334)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (1, -37.79282559, 144.94171170, N'Hotham Hub Children''s Centre', geography::STGeomFromText('POINT (144.9417117 -37.79282559)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (2, -37.83839277, 144.97985420, N'Fawkner Park Children''s Centre', geography::STGeomFromText('POINT (144.9798542 -37.83839277)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (3, -37.79867179, 144.94491460, N'Lady Huntingfield''s Children''s Centre', geography::STGeomFromText('POINT (144.9449146 -37.79867179)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (4, -37.80455475, 144.95432390, N'North Melbourne Children''s Centre', geography::STGeomFromText('POINT (144.9543239 -37.80455475)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (5, -37.80916338, 144.96027240, N'Melbourne City Children''s Centre', geography::STGeomFromText('POINT (144.9602724 -37.80916338)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (6, -37.79403187, 144.96926410, N'Central Carlton Children''s Centre', geography::STGeomFromText('POINT (144.9692641 -37.79403187)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (7, -37.82054898, 144.94309870, N'The Harbour Family and Children''s Centre', geography::STGeomFromText('POINT (144.9430987 -37.82054898)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (8, -37.81450242, 144.96431590, N'The Causeway', geography::STGeomFromText('POINT (144.9643159 -37.81450242)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (9, -37.81514365, 144.96549100, N'Howie Place', geography::STGeomFromText('POINT (144.965491 -37.81514365)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (10, -37.81585420, 144.96319570, N'Equiable Place', geography::STGeomFromText('POINT (144.9631957 -37.8158542)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (11, -37.81546662, 144.96436390, N'Block Place', geography::STGeomFromText('POINT (144.9643639 -37.81546662)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (12, -37.79629961, 144.97279980, N'Canning And Palmerston Streets Reserve Playground', geography::STGeomFromText('POINT (144.9727998 -37.79629961)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (13, -37.84067099, 144.98406040, N'Fawkner Park East', geography::STGeomFromText('POINT (144.9840604 -37.84067099)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (14, -37.83878880, 144.98506760, N'Fawkner Park North East', geography::STGeomFromText('POINT (144.9850676 -37.8387888)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (15, -37.82610107, 144.96815110, N'Grant Street Playground', geography::STGeomFromText('POINT (144.9681511 -37.82610107)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (16, -37.82180886, 144.94725970, N'Docklands Park Playground South', geography::STGeomFromText('POINT (144.9472597 -37.82180886)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (17, -37.81813348, 144.97126270, N'Artplay Playground', geography::STGeomFromText('POINT (144.9712627 -37.81813348)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (18, -37.81175012, 144.98181140, N'Fitzroy Gardens Playground', geography::STGeomFromText('POINT (144.9818114 -37.81175012)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (19, -37.81157453, 144.98655510, N'Powlett Reserve Playground', geography::STGeomFromText('POINT (144.9865551 -37.81157453)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (20, -37.80956469, 144.95469120, N'Flagstaff Gardens Playground', geography::STGeomFromText('POINT (144.9546912 -37.80956469)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (21, -37.80869328, 144.94474810, N'Hawke & Adderley Street Playground', geography::STGeomFromText('POINT (144.9447481 -37.80869328)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (22, -37.80720933, 144.95160380, N'Eades Park Playground', geography::STGeomFromText('POINT (144.9516038 -37.80720933)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (23, -37.80284141, 144.96265660, N'Lincoln Square Playground', geography::STGeomFromText('POINT (144.9626566 -37.80284141)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (24, -37.80211401, 144.97075480, N'Carlton Gardens Playground', geography::STGeomFromText('POINT (144.9707548 -37.80211401)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (25, -37.79886917, 144.94382770, N'Gardiner Reserve Playground', geography::STGeomFromText('POINT (144.9438277 -37.79886917)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (26, -37.79761105, 144.92536930, N'JJ Holland Park', geography::STGeomFromText('POINT (144.9253693 -37.79761105)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (27, -37.79661679, 144.92059900, N'Mercantile Park Tankard Street Playground', geography::STGeomFromText('POINT (144.920599 -37.79661679)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (28, -37.79616711, 144.92675520, N'Warun Biik Playground', geography::STGeomFromText('POINT (144.9267552 -37.79616711)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (29, -37.79652573, 144.95277360, N'Ievers Reserve Playground', geography::STGeomFromText('POINT (144.9527736 -37.79652573)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (30, -37.79542835, 144.92088320, N'Mercantile Park Newman Street Playground', geography::STGeomFromText('POINT (144.9208832 -37.79542835)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (31, -37.79530471, 144.93079590, N'Bellair Street Playground', geography::STGeomFromText('POINT (144.9307959 -37.79530471)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (32, -37.79377867, 144.92359290, N'Bayswater Road Park Playground', geography::STGeomFromText('POINT (144.9235929 -37.79377867)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (33, -37.79356296, 144.94009160, N'North Melbourne Community Centre Playground', geography::STGeomFromText('POINT (144.9400916 -37.79356296)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (34, -37.79319139, 144.93242210, N'Robertson Street Park Playground', geography::STGeomFromText('POINT (144.9324221 -37.79319139)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (35, -37.79018888, 144.93108030, N'Parsons Reserve Playground', geography::STGeomFromText('POINT (144.9310803 -37.79018888)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (36, -37.79001769, 144.92569010, N'Liddy Street Reserve Playground', geography::STGeomFromText('POINT (144.9256901 -37.79001769)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (37, -37.78903352, 144.92844040, N'Kensington Hall Reserve Playground', geography::STGeomFromText('POINT (144.9284404 -37.78903352)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (38, -37.78509665, 144.94202580, N'Manningham Street Playground', geography::STGeomFromText('POINT (144.9420258 -37.78509665)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (39, -37.78538060, 144.96278750, N'Princes Park South Playground', geography::STGeomFromText('POINT (144.9627875 -37.7853806)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (40, -37.78122196, 144.96213970, N'Princes Park North Playground', geography::STGeomFromText('POINT (144.9621397 -37.78122196)', 4326))
INSERT INTO [Parks].[Outdoor no-smoking area] ([Id], [Latitude], [Longitude], [Name], [Location]) VALUES (41, -37.77956692, 144.93975910, N'Parkville Gardens Playground', geography::STGeomFromText('POINT (144.9397591 -37.77956692)', 4326))
COMMIT TRANSACTION
