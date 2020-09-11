require_relative '../lib/styling'
describe StylingRules do
  let(:stylingrules) { StylingRules.new('../css/test_bug.css') }
  let(:file) do
    [".test1{ /*wrong close of openning curly brace*/
    color: red;
     margin: 0; /*Wrong indentation, only one space given, Two space required.*/
    height: 9px;
    width: 50px;
  }"]
  end

  describe '#initialize' do
    it 'initialize styling rules default error variable' do
      expect(stylingrules.error).to be_a(Array)
    end

    it 'initialize styling rules default file' do
      expect(stylingrules.file).not_to eql(nil)
    end
  end

  describe '#indentation' do
    it 'Pushes error message into the array of errors' do
      stylingrules.indentation(file)
      expect(stylingrules.error.size).not_to eq(0)
    end
  end
end
