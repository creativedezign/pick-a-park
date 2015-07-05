USE [parks]
GO
/****** Object:  Table [Parks].[Parks and conservation reserves]    Script Date: 07/05/2015 13:03:42 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [Parks].[Parks and conservation reserves](
	[Id] [int] NOT NULL,
	[Latitude] [decimal](12, 8) NOT NULL,
	[Longitude] [decimal](12, 8) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Location] [geography] NULL,
 CONSTRAINT [Parks and conservation reserves PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO