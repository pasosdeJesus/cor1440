Copiado y adaptado de
https://github.com/azouaoui-med/pro-sidebar-template/tree/master/src

Para incluirlo en un proyecto rails:

1. Copiar directorios `vendor/assets/remixicon` y ajustar los iconos
   que se presentarán siguiendo el `README.md` de esa ruta.
2. Copiar `vendor/assets/stylesheets/prosidebar` y 
   `vendor/javascript/prosidebar`
2. `yarn add css-pro-layout`
3. Copiar `app/assets/stylesheet/prosidebar` y ajustar rutas si hace falta
4. Asegurar que se copian recursos de remixicon agregando en
   `app/assets/config/manifest.json` las líneas
   ```
    //= link_directory ../../../vendor/assets/remixicon .eot
    //= link_directory ../../../vendor/assets/remixicon .svg
    //= link_directory ../../../vendor/assets/remixicon .ttf
    //= link_directory ../../../vendor/assets/remixicon .woff
    //= link_directory ../../../vendor/assets/remixicon .woff2
    ```
5. Cambir app/javascript/application.js para agregar junto con 
   otras inicializaciones:
   ```
   import inicializaProsidebar from '../../vendor/javascript/prosidebar/index.js'
   window.inicializaProsidebar = inicializaProsidebar
   ```
   y dentro de el escuchador del evento `turbo:load` agregar:
   ```
   window.inicializaProsidebar()
   ```
6. Cambiar `app/views/layou/application.html.erb` para usar
   `grupo_menus_prosidebar` en lugar de `grupo_menus`,
   `opcion_menu_prosidebar` en lugar de `opcion_menu`,
   `despliega_abajo_prosidebar` en lugar de `despliega_abajo` y
   a este último debe añadirsele un icono por presentar
   (de los que están en `assets/remixicon`) y nil. Por ejemplo:
   ```
   <%= despliega_abajo_prosidebar "Proyectos", 'ri-briefcase-4-fill', nil do %>
   ```

