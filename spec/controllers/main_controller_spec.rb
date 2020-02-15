require 'rails_helper'

RSpec.describe MainController, type: :controller do
  describe 'Get #index' do 
      let(:brands) { create_list :brand, 3}
      let(:hits)   { create_list :products, 8}

        before { get :index }

        context 'required output per page' do
            it 'render to ingdex templete' do 
                is_expected.to render_template :index 
            end
            it 'instanse var brands include only brands' do 
                expect(assings( key :brands)).to match_array(brands)
            end
            it 'instanse var hits include only hit' do 
                expect(assings( key :hits)).to match_array(hits)
            end
        end    
      end
  end
