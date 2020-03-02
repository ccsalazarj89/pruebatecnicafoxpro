--drop procedure verProductos

CREATE PROCEDURE verProductos
AS
SELECT idProducto, codigoproducto codigo , nombre , precio ,cantidadDisponible from productos