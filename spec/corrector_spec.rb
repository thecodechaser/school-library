require './corrector'

describe Corrector do
  context "When testing the Corrector class" do
    it "the method correct_name capitalize the name and trim to 10 length" do
      corrector = Corrector.new
      corrected_name = corrector.correct_name("ranjeetttttttt")
      expect(corrected_name).to eq "Ranjeetttt"
    end

    it "the method correct_name capitalize the name and trim to 10 length" do
      corrector = Corrector.new
      corrected_name = corrector.correct_name("bohandannnnnnn")
      expect(corrected_name).to eq "Bohandannn"
    end
  end
end