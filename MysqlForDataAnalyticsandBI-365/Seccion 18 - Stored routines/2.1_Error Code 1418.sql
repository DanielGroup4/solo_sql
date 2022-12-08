/* Error Code: 1418.
Error Code: 1418. This function has none of DETERMINISTIC, NO SQL, or READS SQL DATA in its declaration and binary 
logging is enabled ...

Let’s begin by saying that a log is a software component where you can save information about some events or 
errors that happened during the execution of a certain application. A log is preserved for traceability or 
debugging reasons and this is how it is used in MySQL as well.
Comencemos diciendo que un log es un componente de software donde se puede guardar información sobre 
algunos eventos o errores que ocurrieron durante la ejecución de una determinada aplicación. 
Un log se conserva por razones de trazabilidad o depuración y así se utiliza también en MySQL.

Consequently, a Binary Log is a log that contains database changes. 
This type of logging affects the way in which we need to structure our code when creating MySQL functions.
En consecuencia, un registro binario es un registro que contiene los cambios de la base de datos. 
Este tipo de registro afecta a la forma en que debemos estructurar nuestro código al crear funciones de MySQL.

When the Binary Log has been enabled, it will always check whether a function is changing the data in the database 
and what is the result to be produced. The situation can be described like this.
Cuando el Registro Binario ha sido habilitado, siempre comprobará si una función 
está cambiando los datos en la base de datos y cuál es el resultado que se produce. 
La situación puede describirse así.

Unless we specify what the exact behavior of our function should be, our code will lead to an error. 
This error is with code 1418 and states that the function has none of the following characteristics in its 
declaration: DETERMINISTIC, NO SQL, or READS SQL DATA.
A menos que especifiquemos cuál debe ser el comportamiento exacto de nuestra función, 
nuestro código dará lugar a un error. Este error es con el código 1418 y 
dice que la función no tiene ninguna de las siguientes características en su declaración: 
DETERMINISTA, NO SQL, o LEE DATOS SQL.

To solve this error, we must include one (or more) of these characteristics 
in our code in the way shown in the previous video. They must be placed right after 
we ‘ve specified the return type of the function. Here’s the syntax to use:
Para solucionar este error, debemos incluir una (o varias) de estas características en 
nuestro código de la forma mostrada en el vídeo anterior. 
Deben colocarse justo después de que hayamos especificado el tipo de retorno de la función. 
Esta es la sintaxis a utilizar:

create function <function name> <function parameters> returns <type> <characteristics>

Let’s check the meaning of these characteristics:
Comprobemos el significado de estas características:

· DETERMINISTIC – it states that the function will always return identical result given the same input
- DETERMINISTIC - establece que la función siempre devolverá un resultado idéntico dada la misma entrada

· NO SQL – means that the code in our function does not contain SQL (rarely the case)
- NO SQL - significa que el código de nuestra función no contiene SQL (raramente el caso)

· READS SQL DATA – this is usually when a simple SELECT statement is present
- READS SQL DATA - esto es normalmente cuando una simple sentencia SELECT está presente

When none of those is present in our code, MySQL assumes that our function is non deterministic and 
that it changes data. This might not be the case, but still, in the end, 
an error is raised just because MySQL cannot know a priori what our function will do. 
Adding one of those to our code will prevent this error of showing up.
Cuando ninguno de ellos está presente en nuestro código, MySQL asume que nuestra función no es determinista 
y que cambia los datos. Esto podría no ser el caso, pero aún así, al final, 
se produce un error sólo porque MySQL no puede saber a priori lo que hará nuestra función. 
Añadiendo uno de estos a nuestro código evitaremos que aparezca este error.

That said, there is another way to stop the error - by disabling the binary log when creating functions. 
And we can achieve this by executing the following command:
Dicho esto, hay otra forma de detener el error: desactivando el registro binario al crear funciones. 
Y esto lo podemos lograr ejecutando el siguiente comando:

SET @@global.log_bin_trust_function_creators := 1;

Technically speaking, this operation isn’t the safest one out there. Nevertheless, for the purposes of this course, 
it is the one that will solve the potential problems regardless of the version of MySQL.
Técnicamente hablando, esta operación no es la más segura que existe. Sin embargo, 
para los propósitos de este curso, es la que resolverá los posibles problemas 
independientemente de la versión de MySQL.

In conclusion, remember that sometimes the Binary Log may be disabled anyway and you don’t have to take any 
of the above actions. In that case, we simply hope you’ve enjoyed reading this article! Thank you!
En conclusión, recuerde que a veces el Registro Binario puede estar desactivado de todos modos y 
no tiene que tomar ninguna de las acciones anteriores. En ese caso, 
simplemente esperamos que hayas disfrutado de la lectura de este artículo. ¡Gracias!
