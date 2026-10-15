package com.tebakgambar.sticker;

import android.content.Context;
import android.content.Intent;
import com.tebakgambar.model.response.StickerCampaignResult;

/* JADX INFO: loaded from: classes2.dex */
public class StickerCampaignListActivity$$IntentBuilder {
    private z2.a bundler = z2.a.a();
    private Intent intent;

    public StickerCampaignListActivity$$IntentBuilder(Context context) {
        this.intent = new Intent(context, (Class<?>) StickerCampaignListActivity.class);
    }

    public Intent build() {
        this.intent.putExtras(this.bundler.b());
        return this.intent;
    }

    public StickerCampaignListActivity$$IntentBuilder stickerCampaignResult(StickerCampaignResult stickerCampaignResult) {
        this.bundler.d("stickerCampaignResult", stickerCampaignResult);
        return this;
    }
}
