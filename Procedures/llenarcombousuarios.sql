--drop procedure llenarComboUsuarios
CREATE PROCEDURE llenarComboUsuarios
AS
SELECT codigoUsuario codigo,nombre from usuarios