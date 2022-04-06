import { HttpClient } from '@angular/common/http';
import { Component, Inject, OnInit } from '@angular/core';
import { map } from 'rxjs/operators';

@Component({
  selector: 'app-pizzas',
  templateUrl: './pizzas.component.html',
  styleUrls: ['./pizzas.component.css']
})
export class PizzasComponent implements OnInit {

  public pizzas: Pizza[];

  public name: string;
  public toppings: string;
  public price: number;

  constructor(http: HttpClient, @Inject('API_BASE_URL') apiBaseUrl: string) {

    http.get<Pizza[]>(apiBaseUrl + 'pizzas').subscribe(results => {
      this.pizzas = results;
    }, error => console.error(error));

  }

  ngOnInit() {
  }

  search() {
    
  }

}

class Pizza {
  id: number;
  name: string;
  description: string;
  retailPrice: number;
}
