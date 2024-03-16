require '../lib/vendingmachine'

RSpec.describe VendingMachine do
    let(:invent) {VendingMachine.new}

    describe ".purchase" do
        it "correctly subtract bottles from amount" do
        invent.purchase(3)
        expect(invent.get_inventory).to eq(17)
        end
    end

    describe ".restock" do
        it "correctly adds bottles to amount" do
        invent.restock(5)
        expect(invent.get_inventory).to eq(25)
        end
    end

    describe ".get_inventory" do
        it "correctly show the inventory amount" do
        expect(invent.get_inventory).to eq(20)
        end
    end
end