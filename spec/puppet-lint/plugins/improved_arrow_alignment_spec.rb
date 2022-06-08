require 'spec_helper'

describe 'improved_arrow_alignment' do
  context 'resource default with correctly alligned' do
    let(:code) do
      <<-EOS
        class imatest {
          File {
            ensure => present,
            mode   => '0755'
          }
        }
      EOS
    end

    it 'should not detect any problems' do
      expect(problems).to have(0).problems
    end
  end

  # and these should cause failiures

  context 'resource default with misaligned' do
    let(:msg) { 'indentation of => is not properly aligned (expected in column %d, but found it in column %d)' }

    let(:code) do
      <<-EOS
        class imatest {
          File {
            ensure => present,
            mode  => '0755',
            owner    => root,
          }
        }
      EOS
    end

    it 'should detect two problems' do
      expect(problems).to have(2).problem
    end

    it 'should create a warning' do
      expect(problems).to contain_warning(format(msg, 20, 19)).on_line(4).in_column(19)
      expect(problems).to contain_warning(format(msg, 20, 22)).on_line(5).in_column(22)
    end
  end

end
