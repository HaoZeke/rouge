# -*- coding: utf-8 -*- #

describe Rouge::Lexers::SAS do
  let(:subject) { Rouge::Lexers::SAS.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.sas'
      assert_guess :filename => 'FOO.SAS', :source => 'foo'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-sas'
      assert_guess :mimetype => 'text/sas'
      assert_guess :mimetype => 'application/x-sas'
    end
  end
end
