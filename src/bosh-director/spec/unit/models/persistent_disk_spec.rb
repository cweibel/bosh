require 'spec_helper'

module Bosh::Director::Models
  describe PersistentDisk do
    subject(:persistent_disk) { described_class.make }

    describe 'cloud_properties' do
      let(:disk_cloud_properties) do
        { 'fake-cloud-property-key' => 'fake-cloud-property-value' }
      end

      it 'updates cloud_properties' do
        persistent_disk.cloud_properties = disk_cloud_properties

        expect(persistent_disk.cloud_properties).to eq(disk_cloud_properties)
      end
    end
  end
end
