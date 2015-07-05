USE [parks]
GO
/****** Object:  Table [Parks].[Public lighting]    Script Date: 07/05/2015 13:03:37 ******/
CREATE TABLE [Parks].[Public lighting](
	[Id] [int] NOT NULL,
	[Latitude] [decimal](12, 8) NOT NULL,
	[Longitude] [decimal](12, 8) NOT NULL,
	[Location] [geography] NULL,
 CONSTRAINT [Public lighting PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
