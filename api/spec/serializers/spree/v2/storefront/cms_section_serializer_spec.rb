require 'spec_helper'

describe Spree::V2::Storefront::CmsSectionSerializer do
  let(:cms_section) { create(:cms_section, name: 'Test Name') }

  subject { described_class.new(cms_section) }

  it { expect(subject.serializable_hash).to be_kind_of(Hash) }

  it do
    expect(subject.serializable_hash).to eq(
      {
        data:
          { attributes:
            { content: nil,
              fit: nil,
              img_one_lg: nil,
              img_one_md: nil,
              img_one_sm: nil,
              img_one_xl: nil,
              img_three_lg: nil,
              img_three_md: nil,
              img_three_sm: nil,
              img_three_xl: nil,
              img_two_lg: nil,
              img_two_md: nil,
              img_two_sm: nil,
              img_two_xl: nil,
              is_fullscreen: false,
              link: nil,
              name: cms_section.name,
              position: cms_section.position,
              settings: nil,
              type: nil },
            id: cms_section.id.to_s,
            relationships: { linked_resource: { data: nil } },
            type: :cms_section }
      }
    )
  end
end
