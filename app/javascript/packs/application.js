import { initFlatpickr } from "./plugins/flatpickr";
import { flexPanel } from "./plugins/panel";
import { playMusic } from "./plugins/music";
import { multipleSelect } from "./plugins/init_select2";

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import "controllers";
import "bootstrap";
import "select2/dist/css/select2.css";

document.addEventListener("turbolinks:load", () => {
  initFlatpickr();
  flexPanel();
  playMusic();
  multipleSelect();
});
