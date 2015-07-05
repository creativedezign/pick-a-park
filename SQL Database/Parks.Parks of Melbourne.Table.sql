USE [parks]
GO
/****** Object:  Table [Parks].[Parks of Melbourne]    Script Date: 07/05/2015 13:03:41 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [Parks].[Parks of Melbourne](
	[Id] [int] NOT NULL,
	[Latitude] [decimal](10, 6) NOT NULL,
	[Longitude] [decimal](10, 6) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Slide] [tinyint] NOT NULL,
	[See-saw] [tinyint] NOT NULL,
	[Cubby house] [tinyint] NOT NULL,
	[Swing] [tinyint] NOT NULL,
	[Climbing frame] [tinyint] NOT NULL,
	[Spinner] [tinyint] NOT NULL,
	[Rocker] [tinyint] NOT NULL,
	[Pirate ship] [tinyint] NOT NULL,
	[Grass area] [tinyint] NOT NULL,
	[BBQ] [tinyint] NOT NULL,
	[Picnic table] [tinyint] NOT NULL,
	[Multilevel play] [tinyint] NOT NULL,
	[Fitness track] [tinyint] NOT NULL,
	[Sandpit] [tinyint] NOT NULL,
	[Exercise station] [tinyint] NOT NULL,
	[Shade] [tinyint] NOT NULL,
	[Skate park] [tinyint] NOT NULL,
	[Toilet] [tinyint] NOT NULL,
	[Bike track] [tinyint] NOT NULL,
	[Ability swing] [tinyint] NOT NULL,
	[Disabled access] [tinyint] NOT NULL,
	[Basketball court] [tinyint] NOT NULL,
	[Location] [geography] NULL,
 CONSTRAINT [Parks of Melbourne PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
