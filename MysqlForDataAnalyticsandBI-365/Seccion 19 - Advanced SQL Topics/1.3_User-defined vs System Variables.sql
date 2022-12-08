-- Esta sintaxis dara error
SET SESSION max_connections = 1000;


-- otra sintaxis 
SET @@global.max_connections = 1;


-- SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_DATE,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';

SET GLOBAL sql_mode='STRICT_TRANS_TABLES,NO_ZERO_DATE,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';

/* a user can define a local varaible or a session variable */