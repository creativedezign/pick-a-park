USE [parks]
GO
/****** Object:  Table [Parks].[Public toilets]    Script Date: 07/05/2015 13:03:36 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [Parks].[Public toilets](
	[Id] [int] NOT NULL,
	[Latitude] [decimal](12, 8) NOT NULL,
	[Longitude] [decimal](12, 8) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Location] [geography] NULL,
 CONSTRAINT [Public toilets PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
