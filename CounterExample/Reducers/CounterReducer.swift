import ReSwift

// the reducer is responsible for evolving the application state based
// on the actions it receives
struct CounterReducer: Reducer {
    typealias ReducerStateType = AppState

    
    func handleAction(action: Action, state: AppState?) -> AppState {
        
        // if no state has been provided, create the default state
        var state = state ?? AppState()
        
        switch action {
        case _ as CounterActionAdd:
            state.counters += [0]
        case let increase as CounterActionIncrease:
            state.counters[increase.index] += 1
        case let decrease as CounterActionDecrease:
            state.counters[decrease.index] -= 1
        default:
            break
        }
        
        return state
    }
    
}
