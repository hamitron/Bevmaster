json.totalVotes @votes.count



json.state do |state|
state.positive @votes.where(state: 'positive').count
state.negative @votes.where(state: 'negative').count
state.meh @votes.where(state: 'meh').count
end
