require 'bookmark'

describe Bookmark do
  truncate_test_table
  populate_table

  describe '#all' do
    it 'returns an array' do
      expect(described_class.all).to be_an_instance_of(Array)
    end

    it 'returns an array which contains instances of Bookmark' do
      test = "bookmark_manager_test"
      expect(described_class.all(test)).to include('http://www.makersacademy.com')
      expect(described_class.all(test)).to include('http://www.destroyallsoftware.com')
      expect(described_class.all(test)).to include('http://www.google.com')
    end
  end
end
