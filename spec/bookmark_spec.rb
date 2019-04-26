require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'returns an array' do
      expect(described_class.all).to be_an_instance_of(Array)
    end

    it 'returns an array which contains instances of Bookmark' do
      populate_table
      expect(described_class.all).to include('http://www.makersacademy.com')
      expect(described_class.all).to include('http://www.destroyallsoftware.com')
      expect(described_class.all).to include('http://www.google.com')
    end
  end

  describe '#create' do
    it 'adds bookmark to database' do
      Bookmark.create('www.example.com')
      expect(Bookmark.all).to include('www.example.com')
    end
  end

end
