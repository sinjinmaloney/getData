USE [intake]
GO

/****** Object:  Table [dbo].[browser_type]    Script Date: 10/13/2013 7:56:21 PM ******/
DROP TABLE [dbo].[browser_type]
GO

/****** Object:  Table [dbo].[browser_type]    Script Date: 10/13/2013 7:56:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[browser_type](
	[rf_browser_typeKey] [bigint] IDENTITY(1,1) NOT NULL,
	[browser_typeID] [int] NULL,
	[browser_type] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


