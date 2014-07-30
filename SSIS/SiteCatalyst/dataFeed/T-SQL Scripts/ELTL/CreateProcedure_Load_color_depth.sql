USE [intake]
GO

/****** Object:  StoredProcedure [dbo].[Load_color_depth]    Script Date: 10/14/2013 12:22:21 AM ******/
DROP PROCEDURE [dbo].[Load_color_depth]
GO

/****** Object:  StoredProcedure [dbo].[Load_color_depth]    Script Date: 10/14/2013 12:22:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_color_depth]
AS
/* =====================================================================================================
Author:         Bryan Nice
Create date:    2013/04/02
Description:    Extract Enterprise Only Records From Log File Data
                        
------------------------------------------------------------------------------------------------------
Sources:      
------------------------------------------------------------------------------------------------------
Parameters:     1.  
------------------------------------------------------------------------------------------------------ 
Workflow:       1. Truncate tmp search engines reference table
				2. Insert new records
-------------------------------------------------------------------------------------------------------
Dependencies:   1. 
-------------------------------------------------------------------------------------------------------
Notes:          1. 
-------------------------------------------------------------------------------------------------------
History:
2013/04/02     Bryan Nice     “Inital Version”/Comments         
======================================================================================================= */

-- 1. Truncate tmp search engines reference table
TRUNCATE TABLE
	[intake].[dbo].[color_depth];

-- 2. Insert new records
INSERT INTO
	[intake].[dbo].[color_depth]
	(
		[color_depthID],
		[color_depth]
	)
SELECT
	* 
FROM 
	OPENROWSET(BULK 'C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\SampleDataFeed\color_depth.tsv', 
	FORMATFILE='C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\FormatFiles\color_depth.xml') color_depth;
GO