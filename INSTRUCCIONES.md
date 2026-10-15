# Recursos: extensiones permitidas y entrada con partículas

Actualización: 15/10/2026

## Archivos para publicar

En el repositorio **arleyzarate/arleyzarate.github.io**, en la raíz:

1. Reemplace **index.html** por el archivo entregado.
2. Agregue **extensiones.js** en la misma carpeta del index.html. Es nuevo y obligatorio para personalizar la lista. Si falta temporalmente, el buscador usa una lista mínima de respaldo.
3. Mantenga los archivos **palabras.js** y **archivos.js** actuales. No requieren cambios.

El repositorio público **arleyzarate/recursos** no requiere cambios de estructura. Puede seguir guardando aplicaciones en carpetas con **index.html**, y DWG/LSP/PDF en cualquier subcarpeta.

## Cómo cambiar los formatos admitidos

Abra `extensiones.js`, edite el arreglo `window.RECURSOS_EXTENSIONES` y publíquelo. Ejemplo: para mostrar solo aplicaciones y planos, deje `['.html', '.htm', '.dwg', '.dxf']`.

**El buscador no mostrará archivos `.js`, `.css`, `.json`, `.map`, `.ts`, `.bat`, etc.** Aunque formen parte del repositorio, no figurarán en las sugerencias. No cambie los nombres `index.html` de las aplicaciones: siguen apareciendo con el nombre de su carpeta.

**Importante:** la lista controla la visibilidad en el buscador, **no la privacidad real**. Un archivo publicado en un repositorio público sigue siendo accesible desde GitHub. Si necesita proteger código fuente, debe cambiar la estrategia de publicación o mantenerlo privado.

## Efecto de entrada

Se agrega una entrada con partículas luminosas que convergen en el título, revelan «Arley Zarate» y se expanden hacia la barra. Dura aproximadamente 2,6 segundos, se ejecuta una vez al cargar la página, no intercepta clics, no requiere bibliotecas y se desactiva si el navegador solicita movimiento reducido. Se conservan las columnas animadas y los 10 colores de fondo cada 5 segundos.

## Funciones conservadas

Búsqueda parcial y recursiva, sugerencias desde la primera letra, selección con teclado/clic, direcciones sin `.html` para `carpeta/index.html`, notificación de apertura, confirmación Sí/No antes de descargar, exclusión de archivos internos y consulta de la API pública de GitHub con respaldo para Windows.

## Pruebas y verificación

Probar al publicar: escribir `dia` para confirmar que **no** aparecen archivos `.js`; escribir `texto` para encontrar una aplicación; buscar un LSP/DWG/PDF y confirmar la descarga; refrescar la página para observar la entrada. Se verificará la ejecución del archivo antes de la entrega; la publicación real en GitHub Pages se confirma después de que se suban los archivos.
