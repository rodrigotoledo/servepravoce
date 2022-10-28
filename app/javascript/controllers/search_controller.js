import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  showSearchBoxFilter(){
    let search_box = document.getElementById('search_box')
    search_box.classList.remove('hidden')
  }

  hideSearchBoxFilter(event){
    let term = document.getElementById('term')
    let search_box = document.getElementById('search_box')
    let search_form = document.getElementById('search_form')
    search_box.classList.add('hidden')
    term.value = ''
    search_form.requestSubmit();
  }
}
