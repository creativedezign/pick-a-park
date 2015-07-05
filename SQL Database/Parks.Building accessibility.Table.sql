USE [parks]
GO
/****** Object:  Table [Parks].[Building accessibility]    Script Date: 07/05/2015 13:03:48 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [Parks].[Building accessibility](
	[Id] [int] NOT NULL,
	[Latitude] [decimal](12, 8) NOT NULL,
	[Longitude] [decimal](12, 8) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Type] [varchar](100) NOT NULL,
	[Accessibility rating] [int] NOT NULL,
	[Location] [geography] NULL,
 CONSTRAINT [Building accessibility PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
