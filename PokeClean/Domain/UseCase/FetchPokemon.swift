import RxSwift

struct FetchPokemon: UseCase {
    private let repository: PokemonRepository
    
    init(repository: PokemonRepository) {
        self.repository = repository
    }
    
    func execute(with params: Int?) -> Observable<Pokemon> {
        guard let id = params else {
            return Observable.error(Errors.nullIdError)
        }
        
        if id < 1 || id > 150 {
            return Observable.error(Errors.outOfRangeIdError)
        }
        
        return repository.fetch(id: params!).asObservable()
    }
}
