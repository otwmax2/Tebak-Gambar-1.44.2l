###### Class com.tebakgambar.sticker.StickerCampaignListActivity$$ExtraInjector (com.tebakgambar.sticker.StickerCampaignListActivity$$ExtraInjector)
.class public Lcom/tebakgambar/sticker/StickerCampaignListActivity$$ExtraInjector;
.super Ljava/lang/Object;
.source "StickerCampaignListActivity$$ExtraInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Ly2/a$b;Lcom/tebakgambar/sticker/StickerCampaignListActivity;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "stickerCampaignResult"

    .line 1
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 2
    check-cast p0, Lcom/tebakgambar/model/response/StickerCampaignResult;

    iput-object p0, p1, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->stickerCampaignResult:Lcom/tebakgambar/model/response/StickerCampaignResult;

    :cond_c
    return-void
.end method
