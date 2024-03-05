//
//  PokemonManager.swift
//  MVCEjercicio1
//
//  Created by User on 04/03/24.
//

import Foundation

class PokemonManager{
    
    private var pokemons : [Pokemon] = []
    
    //data source array :P
    let pokemonsArray = [
            ["image":"0", "name": "Wartortle", "hab": "Chilling Water"],
            ["image":"1", "name": "Bulbasaur", "hab": "Petal Dance"],
            ["image":"2", "name": "Blastoise", "hab": "Hydro Pump"],
            ["image":"3", "name":"Butterfree", "hab": "Bug Bite"],
            ["image":"4", "name":"Ivysaur", "hab": "Seed Bomb"],
            ["image":"5", "name":"Jigglypuf", "hab": "Sing"],
            ["image":"6", "name":"Charmander", "hab": "Fire Fang"],
            ["image":"7", "name":"Meowth", "hab": "Pay Day"],
            ["image":"8", "name":"Alakazam", "hab": "Psybeam"],
            ["image":"9", "name":"Pidgey", "hab": "Gust"],
            ["image":"10", "name":"Raichu", "hab": "Thunder Shock"],
            ["image":"11", "name":"Rattata", "hab": "Tackle"],
            ["image":"12", "name":"Vaporeon", "hab": "Aqua Ring"],
            ["image":"13", "name":"Jynx", "hab": "Confusion"],
            ["image":"14", "name":"Venusaur", "hab": "Solar Beam"],
            ["image":"15", "name":"Vulpix", "hab": "Ember"],
            ["image":"16", "name":"Slowbro", "hab": "Amnesia"],
            ["image":"17", "name":"Dewgong", "hab": "Aurora Beam"],
            ["image":"19", "name":"Wigglytuff", "hab": "Charm"],
            ["image":"20", "name":"Scyther", "hab": "X-Scissor"],
            ["image":"21", "name":"Golduk", "hab": "Zen Headbutt"],
            ["image":"22", "name":"Lapras", "hab": "Brine"],
            ["image":"23", "name":"Sandshrew", "hab": "Fury Swipes"]
            ]

    
    func fetch() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemon(at index : Int) -> Pokemon {
        return pokemons[index]
    }
    
    func countPokemons() -> Int {
        return pokemons.count
    }
}
