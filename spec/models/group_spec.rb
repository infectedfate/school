require 'rails_helper'

RSpec.describe Group, type: :model do

  before do
    @group = Group.new(character: "A", number: 1)
  end

  subject { @group }

  it {should respond_to :character}
  it {should respond_to :number}
end
