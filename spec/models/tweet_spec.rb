require 'spec_helper'

describe Tweet do
  it { should validate_presence_of(:body) }
end
