﻿
CREATE VIEW RV.OrderAvailability
AS

SELECT
	X.ITEM_NAME
	, X.NUMBER_OF_ORDERS
	, X.NUMBER_OF_UNITS
	, X.REQUIRED
	, X.STOCK
	, X.REPLENISHMENT
	, X.RESERVED
	, X.LOCKED
	, X.AVAILABLE
	, DATENAME(ISO_WEEK, X.DATE) AS WEEK
	, DATE
	, DATEDIFF(HOUR,LAG(X.DATE) OVER(PARTITION BY X.ITEM_NAME, DATENAME(ISO_WEEK, X.DATE) ORDER BY X.ITEM_NAME, X.DATE),X.DATE) AS HOURS
FROM (
	SELECT
		*
	FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY ITEM_NAME,DATENAME(ISO_WEEK, DATE) ORDER BY ITEM_NAME,DATE ASC) SEQ FROM [$(DWH)].WEB.OrderAvailability OV) OVF
	WHERE OVF.SEQ = 1

	UNION ALL

	SELECT
		*
	FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY ITEM_NAME,DATENAME(ISO_WEEK, DATE) ORDER BY ITEM_NAME,DATE DESC) SEQ FROM [$(DWH)].WEB.OrderAvailability OV) OVF
	WHERE OVF.SEQ = 1
) X