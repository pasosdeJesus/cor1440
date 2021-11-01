/* eslint no-console:0 */

// Este archivo se compila automaticamente con Webpack, junto con otros
// archivos presentes en este directorio.  Lo animamos a poner la lógica
// de su aplicacíon en una estructura relevante dentro de app/javascript
// y solo usar estos archivos de paquete para referencia ese código
// para que sea compilado.
//
// Para referenciar este archivo, añada <%= javascript_pack_tag 'application' %>
// al archivo de maquetación adecuado, como 
// app/views/layouts/application.html.erb


// Quite comentario para copiar todas las imágenes estáticas de ../images 
// a la carpeta de salida y referenciarlas con la función auxiliar
// image_pack_tag helper en las vistas (e.g <%= image_pack_tag 'rails.png' %>)
// o mediante el auxiliar de Javascript `imagePath`.
//
// const imagenes = require.context('../images', true)
// const rutaImagenes = (nombre) => images(nombre, true)

console.log('Hola Mundo desde Webpacker')

import Rails from "@rails/ujs"
Rails.start()

import Turbolinks from "turbolinks"
Turbolinks.start()

import $ from "expose-loader?exposes=$,jQuery!jquery";
import 'jquery-ui'
import 'jquery-ui/ui/widgets/autocomplete' 
import 'jquery-ui/ui/data' 
import 'jquery-ui/ui/focusable' 
import 'jquery-ui/ui/widgets/tooltip' 

import 'popper.js'              // Dialogos emergentes usados por bootstrap
import * as bootstrap from 'bootstrap'              // Maquetacion y elementos de diseño
import 'chosen-js/chosen.jquery';       // Cuadros de seleccion potenciados
import 'bootstrap-datepicker'
import 'bootstrap-datepicker/dist/locales/bootstrap-datepicker.es.min.js'

import ApexCharts from 'apexcharts'
window.ApexCharts = ApexCharts
import apexes from 'apexcharts/dist/locales/es.json'
Apex.chart = {
  locales: [apexes],
  defaultLocale: 'es',
}
