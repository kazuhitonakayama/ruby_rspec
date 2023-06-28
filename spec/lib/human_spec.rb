describe Human do  
  example '#say_name' do
    human = instance_double(Human)
    allow(human).to receive(:say_name).and_return('Kazu')
    
    expect(human.say_name).to eq 'Kazu'
  end
end
