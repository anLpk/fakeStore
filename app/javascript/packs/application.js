import { initFlatpickr } from "./plugins/flatpickr";

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import "controllers";
import "bootstrap";

document.addEventListener("turbolinks:load", () => {
  initFlatpickr();
});
