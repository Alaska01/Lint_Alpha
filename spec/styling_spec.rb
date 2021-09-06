require_relative '../lib/styles/styling'
describe StylingRules do
  let(:stylingrules) { StylingRules.new('../css/test_bug.css') }
  let(:clearing_msg) { stylingrules.clear_message }
  let(:error_msg) { stylingrules.error_message }
  let(:file) do
    [".test4 {
      color: yellow;
        margin-top: 20px;
    hieght: 20px;
    }"]
  end

  let(:file2) do
    [".test4 {
      color: yellow;
        margin-top: 20px; :;;
    hieght: 20px;
    }", '.here {}']
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

  describe '#multiple_colomn' do
    it 'Pushes error message about multiple columns into the array of errors' do
      stylingrules.multiple_colomn(file)
      expect(stylingrules.error.size).not_to eq(0)
    end
  end

  describe '#multiple_semicolomn' do
    it 'Pushes error message about multiple semicolumns into the array of errors' do
      stylingrules.multiple_semicolomn(file)
      expect(stylingrules.error.size).not_to eq(0)
    end
  end

  describe '#colomn_semi_wrong_position' do
    it 'Pushes error message about wrong combination of multiple semicolumns and columns into the array of errors according to possition' do
      stylingrules.multiple_semicolomn(file)
      expect(stylingrules.error.size).not_to eq(0)
    end
  end

  describe '#multiple_colomn_semicolomn' do
    it 'Pushes error message about wrong combination of multiple semicolumns and columns into the array of errors' do
      stylingrules.multiple_colomn_semicolomn(file)
      expect(stylingrules.error.size).not_to eq(0)
    end
  end

  describe '#clear_message' do
    it 'Tells the user there are no errors in code' do
      expect(clearing_msg).to eq('Kudos, You did a great job removing all the error')
    end
  end

  describe '#error_message' do
    it 'The array size should be equal the number of errors' do
      expect(error_msg).to be_a(Array)
    end
  end
end
