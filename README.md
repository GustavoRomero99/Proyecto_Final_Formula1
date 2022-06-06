#Consulta API

La siguiente aplicación es creada con fines de aprendizaje, con el objetivo de lograr recibir información de una API de la fórmula 1 con datos dinámicos, en este caso la API es de paga, aunque se eligió una versión gratuita pero con un límite de 100 consultas por día, las cuales son suficientes para un trabajo de categoría estudiantil.

- La aplicación está dividida en secciones, las cuales son los modelos de las API y los servicios de la misma.
- - Los modelos son códigos que son transformados de JSON a dart por medio de una página web, este código es extraido de una herramienta llamada POSTMAN, que es donde se escribe la API key y la palabra clave para realizar las consultas, en este caso para las palabras claves de las consultas se escriben las primeras 4 letras de los nombres de los pilotos, por ejemplo, para ver los datos de Lewis Hamilton se antepone en el link "/driver" y luego "lewi".
- - En la sección de servicios se inicializan variables que contienen el link y la API key, para construir los links que realizan las consultas, para posteriormente enlazarlas a otra variable y mandarlas a llamar en las páginas de cada piloto.

# Diseño

![](https://cdn-icons-png.flaticon.com/512/2418/2418779.png)
El diseño de la aplicación gira al rededor de los colores rojos, que van desde el color rojo sólido hasta shade de 200.
Al ejecutar la aplicación lo primero que se puede observar es la pantalla de Login, donde se escribirá el nombre del usuario y una contraseña con caracteres escondidos para mayor seguridad, estos espacios incluyen íconos referenciados, así como una imagen en movimiento de formato gif en la parte superior para darle vista a la aplicación y una buena primera impresión.
El botón es de la librería de cupertino, utilizada comunmente en sistemas IOS, pero con límites establecidos para mayor visualización.

La siguiente página nos muestra las imágenes pulsables de diversos pilotos de la fórmula 1, con letras con estilos de tamaño y negritas, en esta página se hizo uso de Column en el body y row internos en contenedores, para así poder hacer uso de la función Space Evenly, para organizar las imagenes de los pilotos en dos columnas.

#Funcionamiento

La aplicación extrae informacion de la siguiente [API](https://api-sports.io/documentation/formula-1/v1).

Una vez pulsada la imagen un piloto nos redirige a otra pestaña con la respectiva información del mismo, la cual nos muestra desde su nombre y equipo hasta su fecha y lugar de nacimiento y su mejor puesto en los campeonatos.
Para poder mostrar esta información, en gran parte fue necesario convertir los valores obtenidos a String, por medio de toString.
En la página principal de cada piloto se establece una imagen que abarca todo el ancho de la pantalla, estas imágenes son puestas mediante links de html con una propiedad de Image, algunas de ellas con resolución modificada debido a su gran tamaño.
Cada dato de los pilotos es escrito con llamadas hacia la pestaña de servicios, de tal manera que queda algo como: "Conductor1[0].nombre", cada piloto tiene una función asíncrona en la pestaña de servicios, de tal manera que se obtienen por separado en la misma clase, simplemente cambiando las 4 letras de los nombres de los pilotos para referirse a otra consulta.

Por último, en cada pestaña principal de cada piloto se ajustó un apartado en la parte superior para desplegar una lista de los demás pilotos, para redirigirse fácilmente a otro piloto, o a la página principal y ver el listado con las imágenes de los pilotos, esta barra fue codificada en el scaffold de cada pestaña, para que aparezca en el appbar.
















