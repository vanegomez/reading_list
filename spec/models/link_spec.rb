require 'rails_helper'

RSpec.describe Link, type: :model do
  let(:link) { Link.create(url: "https://www.google.com/") }

  it 'is valid' do
    expect(link).to be_valid
  end

  it 'is invalid without a url' do
    link.url = nil
    expect(link).to_not be_valid
  end
end
