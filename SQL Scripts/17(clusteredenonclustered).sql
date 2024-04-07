-- clustered  - indice fisico
-- nonclustered - indice logico

EXEC sp_help [Purchasing.ProductVendor]

drop index IX_ProductVendor_BusinessEntityID On Purchasing.ProductVendor 

create nonclustered index IX_ProductVendor_BusinessEntityID On Purchasing.ProductVendor(BusinessEntityID)
