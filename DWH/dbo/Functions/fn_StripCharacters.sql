
CREATE FUNCTION [dbo].[fn_StripCharacters]
(
    @String NVARCHAR(MAX), 
    @MatchExpression VARCHAR(255)
)
RETURNS NVARCHAR(MAX)
WITH SCHEMABINDING
AS
BEGIN
    SET @MatchExpression =  '%['+@MatchExpression+']%'

    WHILE PatIndex(@MatchExpression, @String) > 0
        SET @String = Stuff(@String, PatIndex(@MatchExpression, @String), 1, '')

    RETURN @String

END
GO
EXECUTE sp_addextendedproperty @name = N'Numeric only', @value = N'''^0-9''', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'fn_StripCharacters';


GO
EXECUTE sp_addextendedproperty @name = N'Non-alphanumeric', @value = N'''^a-z0-9''', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'fn_StripCharacters';


GO
EXECUTE sp_addextendedproperty @name = N'Call', @value = N'''dbo.fn_StripCharacters(''String'', ''See up'')''', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'fn_StripCharacters';


GO
EXECUTE sp_addextendedproperty @name = N'Alphanumeric only', @value = N'''^a-z0-9''', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'fn_StripCharacters';


GO
EXECUTE sp_addextendedproperty @name = N'Alphabetic only', @value = N'''^a-z''', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'FUNCTION', @level1name = N'fn_StripCharacters';

