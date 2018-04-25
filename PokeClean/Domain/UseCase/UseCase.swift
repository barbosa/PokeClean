import RxSwift

protocol UseCase {
    associatedtype P
    associatedtype T
    
    func execute(with params: P?) -> Observable<T>
}
