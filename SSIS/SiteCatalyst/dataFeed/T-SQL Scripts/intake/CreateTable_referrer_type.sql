USE [intake]
GO

/****** Object:  Table [dbo].[referrer_type]    Script Date: 10/13/2013 11:05:02 PM ******/
DROP TABLE [dbo].[referrer_type]
GO

/****** Object:  Table [dbo].[referrer_type]    Script Date: 10/13/2013 11:05:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[referrer_type](
	[rf_referrer_typeKey] [bigint] IDENTITY(1,1) NOT NULL,
	[referrer_typeID] [int] NULL,
	[referrer_type] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


