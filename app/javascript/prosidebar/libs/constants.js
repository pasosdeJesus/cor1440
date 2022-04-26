export const ANIMATION_DURATION = 300;

export const sidebarEl = () => document.getElementById('sidebar');

export const subMenuEls = () => document.querySelectorAll(
  '.menu > ul > .menu-item.sub-menu'
);

export const firstSubMenusBtn = () => document.querySelectorAll(
  '.menu > ul > .menu-item.sub-menu > a'
);

export const innerSubMenusBtn = () => document.querySelectorAll(
  '.menu > ul > .menu-item.sub-menu .menu-item.sub-menu > a'
);
