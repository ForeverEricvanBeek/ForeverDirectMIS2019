﻿


CREATE VIEW [ARC].[LPN_DETAIL]
AS

SELECT * FROM [MANH].[LPN_DETAIL]
UNION ALL
SELECT * FROM [MANH_ARC].[LPN_DETAIL]