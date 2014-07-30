USE [intake]
GO

/****** Object:  Table [dbo].[plugins]    Script Date: 10/13/2013 10:50:24 PM ******/
DROP TABLE [dbo].[plugins]
GO

/****** Object:  Table [dbo].[plugins]    Script Date: 10/13/2013 10:50:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[plugins](
	[rf_pluginsKey] [bigint] IDENTITY(1,1) NOT NULL,
	[pluginsID] [int] NULL,
	[plugins] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


