USE [intake]
GO

/****** Object:  Table [dbo].[connection_type]    Script Date: 10/13/2013 8:47:37 PM ******/
DROP TABLE [dbo].[connection_type]
GO

/****** Object:  Table [dbo].[connection_type]    Script Date: 10/13/2013 8:47:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[connection_type](
	[rf_connection_typeKey] [bigint] IDENTITY(1,1) NOT NULL,
	[connection_typeID] [int] NULL,
	[connection_type] [varchar](500) NULL,
	[UpdateDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


