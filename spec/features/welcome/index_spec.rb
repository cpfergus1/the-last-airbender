require 'rails_helper'

RSpec.describe "As a user," do
  describe 'When I visit "/"' do
    describe 'And I Select "Fire Nation" from the select field' do
      describe 'And I click "Search For Members"' do
        it  'I should be on page "/search"' do
          visit '/'
          select 'Fire Nation', from: 'nation'
          click_on 'Search For Members'
          expect(current_path).to eq('/search')
        end

        it 'I should see the total number of people who live in the Fire Nation. (i.e. 20)' do
          visit '/'
          select 'Fire Nation', from: 'nation'
          click_on 'Search For Members'
          within('.search-title') do
            expect(page).to have_content('20 characters live in Fire Nation')
          end
        end

        it 'And for each of the members I should see: name/photo, allies, enemies, affiliation' do
          visit '/'
          select 'Fire Nation', from: 'nation'
          click_on 'Search For Members'
          within(first('.character')) do
            expect(find(:css, '.name').text).to_not be_empty
            expect(find(:css, '.allies').text).to_not be_empty
            expect(find(:css, '.enemies').text).to_not be_empty
            expect(find(:css, '.affiliation').text).to_not be_empty
          end
        end
      end
    end
  end
end
