struct Pokemon {
    let id: Int
    let name: String
    let types: [PokemonType]
}

extension Pokemon: EntityDecodable {
    init?(entity: PokemonEntity) {
        self.id = entity.id
        self.name = entity.name
        self.types = entity.typeWrappers
            .map { $0.type }
            .flatMap { PokemonType(entity: $0) }
    }
}
