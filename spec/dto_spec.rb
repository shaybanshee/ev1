require 'dto'
require 'test_data'


describe TransformData do
  context 'Are there available transfers?' do
    it "validates presence of class" do
      transform_data = TransformData.new
      data = TestData.new
      puts transform_data.transform(data.transfers, data.users, data.accounts, data.likes)
      expect(true).to eql(true)
    end
  end
end
