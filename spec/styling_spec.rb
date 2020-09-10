require_relative '../lib/styling'
describe StylingRules do

  let(:stylingrules) { StylingRules.new('../bin/kab.rb') }
  let(:file) { File.open(ARGV[0]).to_a }
  
  describe '#initialize' do
    it 'initialize styling rules default error variable' do
      expect(stylingrules.error).to be_a(Array)
    end

    it 'initialize styling rules default file' do
      expect(stylingrules.file).not_to eql(nil)
    end    
  end
end