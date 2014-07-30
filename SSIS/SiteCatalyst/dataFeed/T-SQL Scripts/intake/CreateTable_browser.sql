USE [intake]
GO

/****** Object:  Table [dbo].[browser]    Script Date: 10/13/2013 7:07:19 PM ******/
DROP TABLE [dbo].[browser]
GO

/****** Object:  Table [dbo].[browser]    Script Date: 10/13/2013 7:07:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[browser](
	[rf_browserKey] [bigint] IDENTITY(1,1) NOT NULL,
	[browserID] [int] NULL,
	[browser] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


