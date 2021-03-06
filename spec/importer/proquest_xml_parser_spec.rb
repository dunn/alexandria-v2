require 'rails_helper'
require 'importer/proquest_xml_parser'

describe Importer::ProquestXmlParser do
  let(:parser) { described_class.new(File.read(file)) }
  let(:attributes) { parser.attributes }

  describe '#attributes' do
    context 'a record that has <embargo_code>' do
      let(:file) { 'spec/fixtures/proquest/Johnson_ucsb_0035N_12164_DATA.xml' }

      it 'collects attributes for the ETD record' do
        expect(attributes[:embargo_code]).to eq '3'
        expect(attributes[:DISS_accept_date]).to eq '01/01/2014'
        expect(attributes[:DISS_agreement_decision_date]).to eq '2014-06-11 23:12:18'
        expect(attributes[:DISS_delayed_release]).to eq '2 years'
        expect(attributes[:embargo_remove_date]).to eq nil
        expect(attributes[:DISS_access_option]).to eq 'Campus use only'
      end
    end

    context 'a record that has <DISS_sales_restriction>' do
      let(:file) { 'spec/fixtures/proquest/Shockey_ucsb_0035D_11990_DATA.xml' }

      it 'collects attributes for the ETD record' do
        expect(attributes[:embargo_code]).to eq '4'
        expect(attributes[:DISS_accept_date]).to eq '01/01/2013'
        expect(attributes[:embargo_remove_date]).to eq '2017-04-24 00:00:00'
      end
    end

    describe 'copyright fields' do
      let(:file) { 'spec/fixtures/proquest/MartinezRodriguez_ucsb_0035D_12446_DATA.xml' }
      it 'collects attributes for the ETD record' do
        expect(attributes[:rights_holder]).to eq ['Nadine Martinez Rodriguez']
        expect(attributes[:date_copyrighted]).to eq [2014]
      end
    end
  end # describe #attributes
end
