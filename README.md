# Recursos | Proyecto web

**Autor:** Arley Zarate  
**Fecha de esta versión:** 09/10/2026  
**Propósito:** mantener la página principal separada del almacén de utilidades.

## Estructura propuesta

| Función | Repositorio de GitHub | Dirección web |
| --- | --- | --- |
| Página principal | `arleyzarate/arleyzarate.github.io` | `https://arleyzarate.github.io/` |
| Almacén de recursos | `arleyzarate/recursos` | `https://arleyzarate.github.io/recursos/` |
| Perfil personal | `https://github.com/arleyzarate` | No aloja directamente un `index.html` ejecutable |

El archivo `index.html` debe subirse a **`arleyzarate.github.io`**, no a la página de perfil. GitHub Pages utiliza ese nombre especial de repositorio para el sitio de usuario.

## Archivos de la página principal

```text
arleyzarate.github.io/
├── index.html                 Buscador, diseño, animación y búsqueda de GitHub
├── palabras.js                Palabras de las columnas animadas
├── archivos.js                Respaldo de archivos para uso local
├── actualizar_archivos.bat    Solo para actualizar el respaldo local en Windows
├── LEAME.txt                  Instrucciones para publicar
└── README.md                  Documentación de trabajo
```

## Archivos del repositorio recursos

```text
recursos/
├── organizador_texto.html     Ejemplo (respete el nombre publicado)
├── otras-utilidades.html
├── funciones.lsp
├── plano.dwg
├── manual.pdf
└── ...
```

El repositorio `recursos` también debe mantener su publicación en GitHub Pages. El código consulta los nombres directamente en `https://api.github.com/repos/arleyzarate/recursos/contents` y crea las direcciones de apertura o descarga en `https://arleyzarate.github.io/recursos/`. Solo incluye archivos de la **raíz del repositorio**, no de subcarpetas.

## Funciones que deben conservarse

1. Nombre central **Arley Zarate** y campo «Ingrese comando_» con guion bajo parpadeante.
2. Sugerencias al escribir una letra o una parte del nombre, con clic, flechas y Enter.
3. Archivos HTML en una nueva pestaña y aviso de apertura.
4. Archivos no HTML con confirmación **Sí** o **No** antes de descargar.
5. Exclusión de archivos internos y documentos de configuración: `index`, `README`, `LEAME`, `actualizar`, `archivos`, `palabras`, entre otros.
6. Diez fondos sólidos oscuros que cambian automáticamente cada cinco segundos.
7. Animación de letras verticales con contenido de `palabras.js`.
8. Compatibilidad con GitHub Pages y modo local sin localhost mediante catálogo `archivos.js`.

## Cómo publicar

1. Cree el repositorio `arleyzarate.github.io`, si no existe.
2. Suba los archivos de la carpeta principal de esta entrega a la raíz de ese repositorio.
3. En **Settings > Pages**, configure la publicación desde la rama principal y la carpeta `/ (root)`.
4. Mantenga los archivos técnicos en el repositorio público `recursos`. Si aún no lo ha hecho, conserve su publicación de GitHub Pages desde la ubicación adecuada.
5. Abra `https://arleyzarate.github.io/` e ingrese `texto`, `lsp` o cualquier parte del nombre de un archivo.
6. Verifique la apertura o la confirmación de descarga en el sitio publicado.

No es necesario copiar todos los archivos de `recursos` al sitio principal.

## Límites y seguridad

- Las consultas a repositorios públicos mediante la API de GitHub no requieren credenciales, pero tienen límites de uso y pueden fallar por conectividad.
- El catálogo consulta una carpeta por vez. Si se desea buscar subcarpetas, debe modificarse el mecanismo de consulta y de rutas.
- No coloque credenciales ni tokens privados dentro de `index.html`.
- Los archivos descargados no se ejecutan desde la página.
- La funcionalidad de `download` debe probarse desde el sitio de usuario `github.io`, donde `recursos` comparte el mismo origen.

## Validación de la versión

- **Comprobado localmente:** sintaxis JavaScript con Node.js; búsqueda parcial, sugerencias, exclusiones, destino HTML y confirmación de LSP mediante navegador con datos simulados.
- **Pendiente:** verificación real en `https://arleyzarate.github.io/` después de que se publique.
- **No modificados:** estilos, animación, fondo, interacción con teclado y lógica de confirmación.

## Historial

| Fecha | Cambio |
| --- | --- |
| 09/10/2026 | Primera versión confirmada en GitHub Pages con catálogo, animación y apertura o descarga de recursos. |
| 09/10/2026 | Adaptación para alojar la página en `arleyzarate.github.io` y buscar los archivos en el repositorio separado `recursos`. |

**Regla de desarrollo:** usar el `README.md` y la última versión del código como referencia. Conservar las funciones probadas y modificar únicamente lo solicitado.
