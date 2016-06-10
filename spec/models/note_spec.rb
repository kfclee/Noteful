require 'rails_helper'

RSpec.describe Note, :type => :model do
  
  it "returns content if less than 100 chars" do
     note = Note.create(title: "Note 1", content: "Less than 100")
     
     expect(note.preview).to eq("Less than 100")
  end
  
  it "returns content if more than 100 chars" do
     note = Note.create(title: "Note 1", content: "This is over 100 characters long. This is over 100 characters long. This is over 100 characters long. This is over 100 characters long. ")
     
     expect(note.preview).to eq("This is over 100 characters long. This is over 100 characters long. This is over 100 characters long....(read the rest)")
  end
  
end
