import RxSwift

protocol PokemonRepository {
    func fetch(id: Int) -> Single<Pokemon>
}
