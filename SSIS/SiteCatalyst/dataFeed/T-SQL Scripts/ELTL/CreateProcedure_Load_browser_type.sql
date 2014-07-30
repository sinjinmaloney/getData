USE [intake]
GO

/****** Object:  StoredProcedure [dbo].[Load_browser_type]    Script Date: 10/14/2013 12:19:57 AM ******/
DROP PROCEDURE [dbo].[Load_browser_type]
GO

/****** Object:  StoredProcedure [dbo].[Load_browser_type]    Script Date: 10/14/2013 12:19:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_browser_type]
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
	[intake].[dbo].[browser_type];

-- 2. Insert new records
INSERT INTO
	[intake].[dbo].[browser_type]
	(
		[browser_typeID],
		[browser_type]
	)
SELECT
	* 
FROM 
	OPENROWSET(BULK 'C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\SampleDataFeed\browser_type.tsv', 
	FORMATFILE='C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\FormatFiles\browser_type.xml') browser_type;
GO