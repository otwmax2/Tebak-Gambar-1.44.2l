###### Class com.tebakgambar.sticker.StickerCampaignListActivity$$IntentBuilder (com.tebakgambar.sticker.StickerCampaignListActivity$$IntentBuilder)
.class public Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;
.super Ljava/lang/Object;
.source "StickerCampaignListActivity$$IntentBuilder.java"


# instance fields
.field private bundler:Lz2/a;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lz2/a;->a()Lz2/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;->bundler:Lz2/a;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tebakgambar/sticker/StickerCampaignListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;->bundler:Lz2/a;

    invoke-virtual {v1}, Lz2/a;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public stickerCampaignResult(Lcom/tebakgambar/model/response/StickerCampaignResult;)Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;->bundler:Lz2/a;

    const-string v1, "stickerCampaignResult"

    invoke-virtual {v0, v1, p1}, Lz2/a;->d(Ljava/lang/String;Landroid/os/Parcelable;)Lz2/a;

    return-object p0
.end method
