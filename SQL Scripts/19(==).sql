USE AdventureWorks2022;

DECLARE @TranName VARCHAR(20);
SET @TranName = 'MinhaTransa��o';
-- devem ser executados juntos

ROLLBACK TRANSACTION

BEGIN TRANSACTION @TranName

SELECT @@TRANCOUNT;
SELECT @TranName;