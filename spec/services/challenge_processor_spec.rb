require  'rails_helper'

describe ChallengeProcessor do
  it '' do
    processor = ChallengeProcessor.new('/spec/support/challenges.csv')

    expect { processor.challenges }.to change { Challenge.count }
  end
end
