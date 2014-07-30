USE [intake]
GO

/****** Object:  Table [dbo].[search_engines]    Script Date: 10/13/2013 11:37:09 PM ******/
DROP TABLE [dbo].[search_engines]
GO

/****** Object:  Table [dbo].[search_engines]    Script Date: 10/13/2013 11:37:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[search_engines](
	[rf_resolutionKey] [bigint] IDENTITY(1,1) NOT NULL,
	[search_enginesID] [int] NULL,
	[search_engines] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


