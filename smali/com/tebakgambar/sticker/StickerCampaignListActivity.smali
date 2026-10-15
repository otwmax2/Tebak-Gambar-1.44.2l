###### Class com.tebakgambar.sticker.StickerCampaignListActivity (com.tebakgambar.sticker.StickerCampaignListActivity)
.class public Lcom/tebakgambar/sticker/StickerCampaignListActivity;
.super Lj8/t;
.source "StickerCampaignListActivity.java"


# instance fields
.field public stickerCampaignResult:Lcom/tebakgambar/model/response/StickerCampaignResult;

.field private y:Lo8/y;

.field private z:Lcom/tebakgambar/sticker/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/sticker/StickerCampaignListActivity;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->V0(Ljava/lang/Integer;)V

    return-void
.end method

.method private V0(Ljava/lang/Integer;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->l()Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;->campaignDetailId(Ljava/lang/Integer;)Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private W0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->y:Lo8/y;

    iget-object v0, v0, Lo8/y;->Q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 2
    new-instance v0, Lcom/tebakgambar/sticker/g;

    invoke-direct {v0}, Lcom/tebakgambar/sticker/g;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->z:Lcom/tebakgambar/sticker/i;

    iget-object v1, v1, Lcom/tebakgambar/sticker/i;->w:Lcom/tebakgambar/sticker/g$d;

    invoke-virtual {v0, v1}, Lcom/tebakgambar/sticker/g;->z(Lcom/tebakgambar/sticker/g$d;)V

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->z:Lcom/tebakgambar/sticker/i;

    invoke-virtual {v0, v1}, Lcom/tebakgambar/sticker/g;->y(Lcom/tebakgambar/sticker/g$b;)V

    .line 5
    iget-object v1, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->y:Lo8/y;

    iget-object v1, v1, Lo8/y;->Q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/sticker/i;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/sticker/i;

    iput-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->z:Lcom/tebakgambar/sticker/i;

    const p1, 0x7f0d002e

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/y;

    iput-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->y:Lo8/y;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->z:Lcom/tebakgambar/sticker/i;

    invoke-virtual {p1, v0}, Lo8/y;->u0(Lcom/tebakgambar/sticker/i;)V

    .line 5
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 6
    invoke-direct {p0}, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->W0()V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->z:Lcom/tebakgambar/sticker/i;

    iget-object p1, p1, Lcom/tebakgambar/sticker/i;->v:Ly8/u;

    new-instance v0, Lcom/tebakgambar/sticker/f;

    invoke-direct {v0, p0}, Lcom/tebakgambar/sticker/f;-><init>(Lcom/tebakgambar/sticker/StickerCampaignListActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->stickerCampaignResult:Lcom/tebakgambar/model/response/StickerCampaignResult;

    if-eqz p1, :cond_3c

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->z:Lcom/tebakgambar/sticker/i;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/sticker/i;->p(Lcom/tebakgambar/model/response/StickerCampaignResult;)V

    .line 10
    :cond_3c
    iget-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->z:Lcom/tebakgambar/sticker/i;

    invoke-virtual {p1}, Lcom/tebakgambar/sticker/i;->n()V

    const p1, 0x7f0a0120

    .line 11
    invoke-virtual {p0, p1}, Lj8/t;->D0(I)V

    return-void
.end method

###### Class com.tebakgambar.sticker.f (com.tebakgambar.sticker.f)
.class public final synthetic Lcom/tebakgambar/sticker/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/sticker/StickerCampaignListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/sticker/StickerCampaignListActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/f;->a:Lcom/tebakgambar/sticker/StickerCampaignListActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/sticker/f;->a:Lcom/tebakgambar/sticker/StickerCampaignListActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tebakgambar/sticker/StickerCampaignListActivity;->U0(Lcom/tebakgambar/sticker/StickerCampaignListActivity;Ljava/lang/Integer;)V

    return-void
.end method
