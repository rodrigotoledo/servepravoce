import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "query", "errorMessage", "searchBox" ]

  showSearchBoxFilter(event){
    this.searchBoxTarget.classList.remove('hidden')
  }

  hideSearchBoxFilter(event){
    this.searchBoxTarget.classList.add('hidden')
  }
}
