package com.tebakgambar.sticker;

import com.tebakgambar.model.response.StickerCampaignResult;
import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class StickerCampaignListActivity$$ExtraInjector {
    public static void inject(a.b bVar, StickerCampaignListActivity stickerCampaignListActivity, Object obj) {
        Object objC = bVar.c(obj, "stickerCampaignResult");
        if (objC != null) {
            stickerCampaignListActivity.stickerCampaignResult = (StickerCampaignResult) objC;
        }
    }
}
