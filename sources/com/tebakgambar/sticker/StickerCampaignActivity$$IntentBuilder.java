package com.tebakgambar.sticker;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class StickerCampaignActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    /* JADX INFO: compiled from: StickerCampaignActivity$$IntentBuilder.java */
    public class a {
        public a() {
        }

        public Intent a() {
            StickerCampaignActivity$$IntentBuilder.this.intent.putExtras(StickerCampaignActivity$$IntentBuilder.this.bundler.b());
            return StickerCampaignActivity$$IntentBuilder.this.intent;
        }
    }

    public StickerCampaignActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) StickerCampaignActivity.class);
    }

    public a campaignDetailId(Integer num) {
        this.bundler.e("campaignDetailId", num);
        return new a();
    }
}
