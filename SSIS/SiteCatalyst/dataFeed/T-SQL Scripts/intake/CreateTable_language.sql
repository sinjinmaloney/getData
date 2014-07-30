USE [intake]
GO

/****** Object:  Table [dbo].[language]    Script Date: 10/13/2013 10:02:36 PM ******/
DROP TABLE [dbo].[language]
GO

/****** Object:  Table [dbo].[language]    Script Date: 10/13/2013 10:02:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[language](
	[rf_languageKey] [bigint] IDENTITY(1,1) NOT NULL,
	[languageID] [int] NULL,
	[language] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


