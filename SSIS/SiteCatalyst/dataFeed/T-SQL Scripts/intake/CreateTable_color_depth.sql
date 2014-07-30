USE [intake]
GO

/****** Object:  Table [dbo].[color_depth]    Script Date: 10/13/2013 8:11:40 PM ******/
DROP TABLE [dbo].[color_depth]
GO

/****** Object:  Table [dbo].[color_depth]   Script Date: 10/13/2013 8:11:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[color_depth](
	[rf_color_depthKey] [bigint] IDENTITY(1,1) NOT NULL,
	[color_depthID] [int] NULL,
	[color_depth] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


