###### Class com.tebakgambar.sticker.StickerCampaignActivity$$ExtraInjector (com.tebakgambar.sticker.StickerCampaignActivity$$ExtraInjector)
.class public Lcom/tebakgambar/sticker/StickerCampaignActivity$$ExtraInjector;
.super Ljava/lang/Object;
.source "StickerCampaignActivity$$ExtraInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Ly2/a$b;Lcom/tebakgambar/sticker/StickerCampaignActivity;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "campaignDetailId"

    .line 1
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 2
    check-cast p0, Ljava/lang/Integer;

    iput-object p0, p1, Lcom/tebakgambar/sticker/StickerCampaignActivity;->campaignDetailId:Ljava/lang/Integer;

    return-void

    .line 3
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required extra with key \'campaignDetailId\' for field \'campaignDetailId\' was not found. If this extra is optional add \'@Nullable\' annotation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
