USE [intake]
GO

/****** Object:  StoredProcedure [dbo].[Load_sample_hitdata]    Script Date: 10/14/2013 12:29:28 AM ******/
DROP PROCEDURE [dbo].[Load_sample_hitdata]
GO

/****** Object:  StoredProcedure [dbo].[Load_sample_hitdata]    Script Date: 10/14/2013 12:29:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_sample_hitdata]
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
	[intake].[dbo].[hitdata];

-- 2. Insert new records
INSERT INTO
	[intake].[dbo].[hitdata]
	(
		[hitdataID],
		[hitdata]
	)
SELECT
	* 
FROM 
	OPENROWSET(BULK 'C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\SampleDataFeed\hit_data.tsv', 
	FORMATFILE='C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\FormatFiles\sample_hitdata.xml') hitdata;
GO