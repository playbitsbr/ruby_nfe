require 'spec_helper'

describe RubyNfe::Models::TaxpayerUse, type: :model do
  subject { build(:taxpayer_use) }

  it { is_expected.to be_valid                                }
  it { is_expected.to_not allow_value('A' * 21).for(:field)   }
  it { is_expected.to_not allow_value('').for(:field)         }
  it { is_expected.to_not allow_value(nil).for(:field)        }
  it { is_expected.to_not allow_value('A' * 61).for(:content) }
  it { is_expected.to_not allow_value('').for(:content)       }
  it { is_expected.to_not allow_value(nil).for(:content)      }
end
