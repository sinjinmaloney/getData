USE [intake]
GO

/****** Object:  StoredProcedure [dbo].[Load_connection_type]    Script Date: 10/14/2013 12:24:06 AM ******/
DROP PROCEDURE [dbo].[Load_connection_type]
GO

/****** Object:  StoredProcedure [dbo].[Load_connection_type]    Script Date: 10/14/2013 12:24:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Load_connection_type]
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
	[intake].[dbo].[connection_type];

-- 2. Insert new records
INSERT INTO
	[intake].[dbo].[connection_type]
	(
		[connection_typeID],
		[connection_type]
	)
SELECT
	* 
FROM 
	OPENROWSET(BULK 'C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\SampleDataFeed\connection_type.tsv', 
	FORMATFILE='C:\GitHub\getData\SSIS\SiteCatalyst\dataFeed\FormatFiles\connection_type.xml') connection_type;
GO