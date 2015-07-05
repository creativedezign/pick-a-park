USE [parks]
GO
/****** Object:  Table [Parks].[Footpaths]    Script Date: 07/05/2015 13:03:47 ******/
CREATE TABLE [Parks].[Footpaths](
	[Id] [int] NOT NULL,
	[Latitude] [decimal](12, 8) NOT NULL,
	[Longitude] [decimal](12, 8) NOT NULL,
	[Location] [geography] NULL,
 CONSTRAINT [Footpaths PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
