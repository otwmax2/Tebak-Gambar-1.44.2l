###### Class com.tebakgambar.sticker.StickerCampaignActivity$$IntentBuilder (com.tebakgambar.sticker.StickerCampaignActivity$$IntentBuilder)
.class public Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;
.super Ljava/lang/Object;
.source "StickerCampaignActivity$$IntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;
    }
.end annotation


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

    iput-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;->bundler:Lz2/a;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tebakgambar/sticker/StickerCampaignActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;)Lz2/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;->bundler:Lz2/a;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;)Landroid/content/Intent;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public campaignDetailId(Ljava/lang/Integer;)Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;->bundler:Lz2/a;

    const-string v1, "campaignDetailId"

    invoke-virtual {v0, v1, p1}, Lz2/a;->e(Ljava/lang/String;Ljava/io/Serializable;)Lz2/a;

    .line 2
    new-instance p1, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;

    invoke-direct {p1, p0}, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;-><init>(Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;)V

    return-object p1
.end method

###### Class com.tebakgambar.sticker.StickerCampaignActivity$$IntentBuilder.a (com.tebakgambar.sticker.StickerCampaignActivity$$IntentBuilder$a)
.class public Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;
.super Ljava/lang/Object;
.source "StickerCampaignActivity$$IntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;->a:Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;->a:Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;

    invoke-static {v0}, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;->access$100(Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;->a:Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;

    invoke-static {v1}, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;->access$000(Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;)Lz2/a;

    move-result-object v1

    invoke-virtual {v1}, Lz2/a;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;->a:Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;

    invoke-static {v0}, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;->access$100(Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
