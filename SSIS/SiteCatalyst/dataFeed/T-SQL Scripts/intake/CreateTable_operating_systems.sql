USE [intake]
GO

/****** Object:  Table [dbo].[operating_systems]    Script Date: 10/13/2013 10:28:36 PM ******/
DROP TABLE [dbo].[operating_systems]
GO

/****** Object:  Table [dbo].[operating_systems]    Script Date: 10/13/2013 10:28:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[operating_systems](
	[rf_operating_systemsKey] [bigint] IDENTITY(1,1) NOT NULL,
	[operating_systemsID] [int] NULL,
	[operating_systems] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


