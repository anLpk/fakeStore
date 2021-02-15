import { initFlatpickr } from "./plugins/flatpickr";
import { flexPanel } from "./plugins/panel";
import { playMusic } from "./plugins/music";

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import "controllers";
import "bootstrap";

document.addEventListener("turbolinks:load", () => {
  initFlatpickr();
  flexPanel();
  playMusic();
});
