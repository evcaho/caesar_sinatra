require 'cipher'

describe "encrypt" do
  it "changes by three" do
    expect(cipher("whalerz rule", 3)).to eq("zkdohucuxoh")
  end

  it "changes by five" do
  	expect(cipher("evie caldwellhornez", 5)).to eq("janjhfqibjqqmtwsje")
  end

  it "takes out spaces and dashes" do 
  	expect(cipher("evie caldwell-horne", 5)).to eq("janjhfqibjqqmtwsj")
  end

  it "keeps things lowercase" do 
  	expect(cipher("Evie CaHo", 0)).to eq("eviecaho")
  end
end

