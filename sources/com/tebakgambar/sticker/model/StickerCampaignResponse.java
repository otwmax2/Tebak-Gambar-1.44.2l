package com.tebakgambar.sticker.model;

import b7.c;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class StickerCampaignResponse {
    public Data data;

    public static class Data {

        @c("button_image_url")
        public String buttonImageUrl;

        @c("campaign_details")
        public List<StickerCampaignDetail> campaignDetails;
        public String title;
        public int version;
    }
}
