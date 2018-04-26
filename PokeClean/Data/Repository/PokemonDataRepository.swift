import RxSwift

struct PokemonDataRepository {
    let pokemonAPI: PokemonAPI
    
    init(pokemonAPI: PokemonAPI) {
        self.pokemonAPI = pokemonAPI
    }
}

extension PokemonDataRepository: PokemonRepository {
    
    func fetch(id: Int) -> Single<Pokemon> {
        return pokemonAPI
            .fetch(id: id)
            .map { Pokemon(id: $0, name: "Bulbasaur", types: [.poison]) }
    }
}
