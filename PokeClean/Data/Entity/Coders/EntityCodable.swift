protocol EntityEncodable {
    associatedtype Entity
    func encode() -> Entity
}

protocol EntityDecodable {
    associatedtype Entity
    init?(entity: Entity)
}

typealias EntityCodable = EntityEncodable & EntityDecodable
