require 'spec_helper'

describe Comment do

  it 'should not have body longer than 30 chars' do
    comment = Comment.new(body: "This is a looooooooooooooooong body")
    comment.save
    comment.body.should eq "This is a looooooooooooooooong"
  end
end
