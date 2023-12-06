import { Controller } from "@hotwired/stimulus";
import TomSelect from "tom-select";

// Connects to data-controller="tom-select"
export default class extends Controller {
  connect() {
    this.select = new TomSelect(this.element, {
      persist: false,
      createOnBlur: true,
      create: true
    });
  }

  clear() {
    this.select.clear();
    this.select.clearOptions();
  }

  reload() {
    this.select.sync();
  }
}