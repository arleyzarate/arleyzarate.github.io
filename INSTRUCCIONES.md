# Recursos: búsqueda en carpetas y direcciones sin `.html`

Actualización: 15/10/2026

## Archivos que debe reemplazar

En `arleyzarate/arleyzarate.github.io`:

1. Reemplace **`index.html`** en la raíz. Es el único archivo obligatorio para que funcione la búsqueda recursiva publicada.
2. Si también usa la página directamente en Windows, reemplace **`actualizar_archivos.bat`**. Este actualiza el catálogo local, incluso en subcarpetas. Para usarlo, las carpetas de recursos deben estar físicamente bajo la carpeta que contiene `index.html`, y después debe ejecutar el `.bat` para actualizar `archivos.js`.
3. Mantenga **`palabras.js`** y **`archivos.js`** actuales; no es necesario reemplazarlos para GitHub Pages.

En `arleyzarate/recursos`, organice cada aplicación como una carpeta con su `index.html`:

```text
recursos/
├── organizador_texto/
│   └── index.html
├── herramientas/
│   ├── ductos2d/
│   │   └── index.html
│   ├── escala.lsp
│   └── plano.dwg
└── manual.pdf
```

El buscador de la página principal encontrará todas esas rutas. Al escribir `texto`, sugerirá **Organizador texto**; al elegirlo, abrirá `https://arleyzarate.github.io/recursos/organizador_texto/`. `ductos2d` aparecerá como **Ductos2d** y abrirá `https://arleyzarate.github.io/recursos/herramientas/ductos2d/`. Los archivos `.lsp`, `.dwg`, `.pdf` y otros conservarán la confirmación antes de descargarse.

**Importante:** cada `index.html` debe conservar junto a él los archivos de los que dependa (imágenes, CSS, JavaScript). Revise las rutas relativas si mueve una aplicación desde la raíz hacia una carpeta. Compruebe además que GitHub Pages esté publicado para el repositorio `recursos`.

Los archivos HTML independientes que permanezcan con otros nombres mostrarán su título sin `.html` en las sugerencias, pero su dirección todavía contendrá `.html`. Solo las aplicaciones organizadas con `carpeta/index.html` tendrán la dirección limpia terminada en `/`.

## Se conserva

- Búsqueda parcial, incluso desde una sola letra, con clic, flechas y Enter.
- Apertura de HTML en una nueva pestaña y aviso de apertura.
- Confirmación antes de descargar otros formatos.
- Exclusión de archivos de control y documentación.
- Diez colores automáticos cada cinco segundos y letras verticales animadas.
- Página principal separada del almacén público `arleyzarate/recursos`.

## Alcance y seguridad

No se han incorporado bloqueos del botón derecho ni de «Guardar», porque no impiden copiar el código alojado en un repositorio público. Esta entrega modifica solo búsqueda, nombres visibles, rutas y catálogo local.

La búsqueda utiliza la API pública de árboles de GitHub y está sujeta a sus límites de solicitudes. Si no se puede consultar, usa el catálogo local cuando exista. La API devuelve archivos del repositorio, pero GitHub Pages puede no publicar algunos archivos o rutas según su configuración.

## Pruebas

Se comprobaron localmente la sintaxis JavaScript y escenarios simulados de consulta, subcarpetas, apertura y descarga. La publicación real de GitHub Pages debe verificarse después de subir los cambios.
