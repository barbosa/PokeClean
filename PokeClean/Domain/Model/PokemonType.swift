enum PokemonType {
    case poison
}

extension PokemonType: EntityDecodable {
    init?(entity: PokemonTypeEntity) {
        switch entity.name {
        case "poison":
            self = .poison
        default:
            return nil
        }
    }
}
