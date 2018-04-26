import RxSwift

class PokemonAPI {
    
    func fetch(id: Int) -> Single<Int> {
        return Single.just(1)
    }
}
