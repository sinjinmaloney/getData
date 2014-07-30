USE [intake]
GO

/****** Object:  Table [dbo].[javaScript_version]    Script Date: 10/13/2013 9:38:00 PM ******/
DROP TABLE [dbo].[javaScript_version]
GO

/****** Object:  Table [dbo].[javaScript_version]    Script Date: 10/13/2013 9:38:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[javaScript_version](
	[rf_javaScript_versionKey] [bigint] IDENTITY(1,1) NOT NULL,
	[javaScript_versionID] [int] NULL,
	[javaScript_version] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


