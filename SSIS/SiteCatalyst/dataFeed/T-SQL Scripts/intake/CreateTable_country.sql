USE [intake]
GO

/****** Object:  Table [dbo].[country]    Script Date: 10/13/2013 9:22:24 PM ******/
DROP TABLE [dbo].[country]
GO

/****** Object:  Table [dbo].[country]    Script Date: 10/13/2013 9:22:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[country](
	[rf_countryKey] [bigint] IDENTITY(1,1) NOT NULL,
	[countryID] [int] NULL,
	[country] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


