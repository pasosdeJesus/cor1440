/* eslint no-console:0 */

console.log('Hola Mundo desde ESM')



import Rails from "@rails/ujs";
import "@hotwired/turbo-rails";
Rails.start();
window.Rails = Rails

import 'gridstack'
import './jquery'
import '../../vendor/assets/javascripts/jquery-ui'

import { Tooltip, Toast, Popover } from 'bootstrap';

import PerfectScrollbar from 'perfect-scrollbar';
window.PerfectScrollbar=PerfectScrollbar

import 'popper.js'              // Dialogos emergentes usados por bootstrap
import * as bootstrap from 'bootstrap'              // Maquetacion y elementos de diseño
import 'chosen-js/chosen.jquery';       // Cuadros de seleccion potenciados
import 'bootstrap-datepicker'
import 'bootstrap-datepicker/dist/locales/bootstrap-datepicker.es.min.js'
import * as feather from 'feather-icons'
window.feather=feather

import './dk1'

import ApexCharts from 'apexcharts'
window.ApexCharts = ApexCharts
import apexes from 'apexcharts/dist/locales/es.json'
Apex.chart = {
  locales: [apexes],
  defaultLocale: 'es',
}
