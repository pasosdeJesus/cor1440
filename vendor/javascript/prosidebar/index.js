//Adaptado de https://github.com/azouaoui-med/pro-sidebar-template

//import './styles/styles.scss';
import { slideToggle, slideUp, slideDown } from './libs/slide';
import {
  ANIMATION_DURATION,
  firstSubMenusBtn,
  innerSubMenusBtn,
  sidebarEl
} from './libs/constants';
import Poppers from './libs/poppers';


var inicializaProsidebar = () => {

  const PoppersInstance = new Poppers();

  /**
   * wait for the current animation to finish and update poppers position
   */
  const updatePoppersTimeout = () => {
    setTimeout(() => {
      PoppersInstance.updatePoppers();
    }, ANIMATION_DURATION);
  };

  /**
   * sidebar collapse handler
   */
  document.getElementById('btn-collapse').addEventListener('click', () => {
    sidebarEl().classList.toggle('collapsed');
    PoppersInstance.closePoppers();
    if (sidebarEl().classList.contains('collapsed'))
      firstSubMenusBtn().forEach((element) => {
        element.parentElement.classList.remove('open');
      });

    updatePoppersTimeout();
  });

  /**
   * sidebar toggle handler (on break point )
   */
  document.getElementById('btn-toggle').addEventListener('click', () => {
    sidebarEl().classList.toggle('toggled');
    updatePoppersTimeout();
  });

  /**
   * toggle sidebar on overlay click
   */
  document.getElementById('overlay').addEventListener('click', () => {
    sidebarEl().classList.toggle('toggled');
  });

  const defaultOpenMenus = document.querySelectorAll('.menu-item.sub-menu.open');

  defaultOpenMenus.forEach((element) => {
    element.lastElementChild.style.display = 'block';
  });

  /**
   * handle top level submenu click
   */
  firstSubMenusBtn().forEach((element) => {
    element.addEventListener('click', () => {
      if (sidebarEl().classList.contains('collapsed'))
        PoppersInstance.togglePopper(element.nextElementSibling);
      else {
        /**
         * if menu has "open-current-only" class then only one submenu opens at a time
         */
        const parentMenu = element.closest('.menu.open-current-submenu');
        if (parentMenu)
          parentMenu
            .querySelectorAll(':scope > ul > .menu-item.sub-menu > a')
            .forEach(
              (el) =>
                window.getComputedStyle(el.nextElementSibling).display !==
                  'none' && slideUp(el.nextElementSibling)
            );
        slideToggle(element.nextElementSibling);
      }
    });
  });

  /**
   * handle inner submenu click
   */
  innerSubMenusBtn().forEach((element) => {
    element.addEventListener('click', () => {
      slideToggle(element.nextElementSibling);
    });
  });
}

export default inicializaProsidebar;
