USE [intake]
GO

/****** Object:  Table [dbo].[resolution]    Script Date: 10/13/2013 11:21:00 PM ******/
DROP TABLE [dbo].[resolution]
GO

/****** Object:  Table [dbo].[resolution]    Script Date: 10/13/2013 11:21:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[resolution](
	[rf_resolutionKey] [bigint] IDENTITY(1,1) NOT NULL,
	[resolutionID] [int] NULL,
	[resolution] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


