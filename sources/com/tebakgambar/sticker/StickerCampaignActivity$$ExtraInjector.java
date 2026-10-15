package com.tebakgambar.sticker;

import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class StickerCampaignActivity$$ExtraInjector {
    public static void inject(a.b bVar, StickerCampaignActivity stickerCampaignActivity, Object obj) {
        Object objC = bVar.c(obj, "campaignDetailId");
        if (objC == null) {
            throw new IllegalStateException("Required extra with key 'campaignDetailId' for field 'campaignDetailId' was not found. If this extra is optional add '@Nullable' annotation.");
        }
        stickerCampaignActivity.campaignDetailId = (Integer) objC;
    }
}
