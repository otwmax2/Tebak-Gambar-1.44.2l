###### Class com.tebakgambar.sticker.model.StickerCampaignResponse (com.tebakgambar.sticker.model.StickerCampaignResponse)
.class public Lcom/tebakgambar/sticker/model/StickerCampaignResponse;
.super Ljava/lang/Object;
.source "StickerCampaignResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/sticker/model/StickerCampaignResponse$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/tebakgambar/sticker/model/StickerCampaignResponse$Data;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tebakgambar.sticker.model.StickerCampaignResponse.Data (com.tebakgambar.sticker.model.StickerCampaignResponse$Data)
.class public Lcom/tebakgambar/sticker/model/StickerCampaignResponse$Data;
.super Ljava/lang/Object;
.source "StickerCampaignResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/model/StickerCampaignResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public buttonImageUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "button_image_url"
    .end annotation
.end field

.field public campaignDetails:Ljava/util/List;
    .annotation runtime Lb7/c;
        value = "campaign_details"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tebakgambar/sticker/model/StickerCampaignDetail;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
