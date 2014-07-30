USE [intake]
GO

/****** Object:  StoredProcedure [dbo].[Load_javascript_version]    Script Date: 10/14/2013 12:25:14 AM ******/
DROP PROCEDURE [dbo].[Load_javascript_version]
GO

/****** Object:  StoredProcedure [dbo].[Load_javascript_version]    Script Date: 10/14/2013 12:25:14 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_javascript_version]
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
	[intake].[dbo].[javascript_version];

-- 2. Insert new records
INSERT INTO
	[intake].[dbo].[javascript_version]
	(
		[javaScript_versionID],
		[javaScript_version]
	)
SELECT
	* 
FROM 
	OPENROWSET(BULK 'C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\SampleDataFeed\javascript_version.tsv', 
	FORMATFILE='C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\FormatFiles\javascript_version.xml') javascript_version;
GO