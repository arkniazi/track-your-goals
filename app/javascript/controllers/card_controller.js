import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ['myCard', 'hideButton'];

    connect(){
        console.log("Connectede");
    }

    hide(){
        console.log("Hidden")
        this.myCardTarget.classList.add('hidden');
    }
}
