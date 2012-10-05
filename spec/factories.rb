
FactoryGirl.define do
  factory :quote do |q|
    sequence(:body) {|n| "some quote #{n}"}
  end     
end
