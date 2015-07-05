USE [parks]
GO
/****** Object:  Table [Parks].[Parks]    Script Date: 07/05/2015 13:03:44 ******/
SET ANSI_PADDING OFF
GO
CREATE TABLE [Parks].[Parks](
	[Name] [varchar](100) NOT NULL,
	[Latitude] [decimal](12, 8) NOT NULL,
	[Longitude] [decimal](12, 8) NOT NULL,
	[Location] [geography] NULL,
	[Slide] [tinyint] NULL,
	[Swing] [tinyint] NULL,
	[Basketball court] [tinyint] NULL,
	[Pirate ship] [tinyint] NULL,
	[Barbeque] [tinyint] NULL,
	[Picnic setting] [tinyint] NULL,
	[Drinking fountain] [tinyint] NULL,
	[Public toilets] [tinyint] NULL,
	[Disabled access] [tinyint] NULL,
	[Public lighting] [tinyint] NULL,
	[No-smoking area] [tinyint] NULL,
	[Footpaths] [tinyint] NULL,
 CONSTRAINT [Parks PK] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
