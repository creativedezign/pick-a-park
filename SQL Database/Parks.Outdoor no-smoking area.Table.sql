USE [parks]
GO
/****** Object:  Table [Parks].[Outdoor no-smoking area]    Script Date: 07/05/2015 13:03:45 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [Parks].[Outdoor no-smoking area](
	[Id] [int] NOT NULL,
	[Latitude] [decimal](12, 8) NOT NULL,
	[Longitude] [decimal](12, 8) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Location] [geography] NULL,
 CONSTRAINT [Outdoor no-smoking area PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
