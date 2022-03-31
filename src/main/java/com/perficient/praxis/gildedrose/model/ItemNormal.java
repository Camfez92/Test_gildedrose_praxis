package com.perficient.praxis.gildedrose.model;

public class ItemNormal extends Item {
    public ItemNormal(int id, String name, int sellIn, int quality) {
        super(id,name,sellIn,quality);

    }

    public void updateQuality(){
        if (this.sellIn > 0 && this.quality<=50){
            this.quality-=1;
            this.sellIn-=1;

        }

    }
}
