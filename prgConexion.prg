
cCadConnDSN = "DRIVER=SQL Server;" ;
	+ "SERVER=RENTATIC-0299\SEMSSQL;" ;
	+ "UID=sa;" ;
	+ "PWD=Laplace2189;" ;
	+ "DATABASE=carrito;" ;   && Nombre de la base de datos
+ "WSID=sa;" ;
	+ "APP=__"


nHanConn = Sqlstringconnect(m.cCadConnDSN)

RETURN nHanConn 