require 'spec_helper'

describe Spree::V2::Storefront::MenuItemSerializer do
  subject { described_class.new(menu_item) }

  let(:menu_item) { create(:menu_item) }

  it { expect(subject.serializable_hash).to be_kind_of(Hash) }

  it do
    expect(subject.serializable_hash).to eq(
      { data: { id: menu_item.id.to_s,
                type: :menu_item,
                attributes: { code: nil,
                              name: 'Link To Somewhere',
                              subtitle: nil,
                              link: nil,
                              new_window: false,
                              lft: 2,
                              rgt: 3,
                              depth: 1,
                              is_container: false,
                              is_root: false,
                              is_child: true,
                              is_leaf: true },
                relationships: { image: { data: nil },
                                 parent: { data: { id: menu_item.parent.id.to_s, type: :menu_item } },
                                 linked_resource: { data: nil },
                                 children: { data: [] } } } }
    )
  end
end
