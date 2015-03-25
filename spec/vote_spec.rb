

describe Vote do 
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        valid = Vote.new(value: 1)
        expect(v.valid?).to eq(true)

        valid2 = Vote.new(value: -1)
        expect(v.valid).to eq(true)

        invalid_3 = Vote.new(value: 2)
        expect(invalid_3.valid).to eq(false)
      end
    end
  end
end