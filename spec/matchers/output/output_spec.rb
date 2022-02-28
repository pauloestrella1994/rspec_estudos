describe "Matcher output" do
  it { expect{ puts "Paulo" }.to output.to_stdout }
  it { expect{ print "Paulo" }.to output("Paulo").to_stdout }
  it { expect{ puts "Paulo Netto" }.to output(/Paulo/).to_stdout } # Regex

  # Error messages
  it { expect{ warn "Paulo" }.to output.to_stderr } 
  it { expect{ warn "Paulo" }.to output("Paulo\n").to_stderr } # Warn as outs jump one line '\n'
  it { expect{ warn "Paulo Netto" }.to output(/Paulo/).to_stderr } # Regex
end
