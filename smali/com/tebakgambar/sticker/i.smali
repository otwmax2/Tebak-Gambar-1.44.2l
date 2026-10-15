###### Class com.tebakgambar.sticker.i (com.tebakgambar.sticker.i)
.class public Lcom/tebakgambar/sticker/i;
.super Landroidx/lifecycle/a;
.source "StickerCampaignListViewModel.java"

# interfaces
.implements Lcom/tebakgambar/sticker/g$b;


# instance fields
.field public s:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Landroidx/databinding/l;

.field public u:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lcom/tebakgambar/sticker/g$d;

.field private x:Lcom/tebakgambar/model/response/StickerCampaignResult;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/i;->s:Landroidx/databinding/m;

    .line 3
    new-instance p1, Landroidx/databinding/l;

    invoke-direct {p1}, Landroidx/databinding/l;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/i;->t:Landroidx/databinding/l;

    .line 4
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/i;->u:Landroidx/databinding/m;

    .line 5
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/i;->v:Ly8/u;

    .line 6
    new-instance p1, Lcom/tebakgambar/sticker/g$d;

    invoke-direct {p1}, Lcom/tebakgambar/sticker/g$d;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/i;->w:Lcom/tebakgambar/sticker/g$d;

    return-void
.end method

.method public static synthetic k(Lcom/tebakgambar/sticker/i;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/sticker/i;->l()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->getCampaign()Lwa/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/sticker/i$a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/sticker/i$a;-><init>(Lcom/tebakgambar/sticker/i;)V

    .line 2
    invoke-interface {v0, v1}, Lwa/b;->v3(Lwa/d;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private o()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2
    invoke-virtual {v0}, Lg5/s;->c4()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_20

    .line 3
    :cond_11
    iget-object v0, p0, Lcom/tebakgambar/sticker/i;->u:Landroidx/databinding/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/tebakgambar/sticker/h;

    invoke-direct {v0, p0}, Lcom/tebakgambar/sticker/h;-><init>(Lcom/tebakgambar/sticker/i;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void

    .line 5
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/tebakgambar/sticker/i;->t:Landroidx/databinding/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/databinding/l;->z(Z)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/sticker/i;->u:Landroidx/databinding/m;

    const-string v1, "Invalid User. Please try again"

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;)V
    .registers 6

    .line 1
    iget-boolean v0, p1, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->isEnabled:Z

    if-eqz v0, :cond_2b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WA - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickStickerListPage"

    const-string v2, "sticker list"

    const-string v3, "click on item sticker"

    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/sticker/i;->v:Ly8/u;

    iget p1, p1, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly8/u;->n(Ljava/lang/Object;)V

    :cond_2b
    return-void
.end method

.method public m()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/sticker/i;->o()V

    return-void
.end method

.method public n()V
    .registers 5

    const-string v0, "viewStickerListPage"

    const-string v1, "sticker list"

    const-string v2, "view on sticker list"

    const-string v3, "WA"

    .line 1
    invoke-static {v0, v1, v2, v3}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/sticker/i;->x:Lcom/tebakgambar/model/response/StickerCampaignResult;

    if-nez v0, :cond_12

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/sticker/i;->o()V

    :cond_12
    return-void
.end method

.method p(Lcom/tebakgambar/model/response/StickerCampaignResult;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/sticker/i;->x:Lcom/tebakgambar/model/response/StickerCampaignResult;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/sticker/i;->s:Landroidx/databinding/m;

    iget-object v1, p1, Lcom/tebakgambar/model/response/StickerCampaignResult;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/sticker/i;->w:Lcom/tebakgambar/sticker/g$d;

    iget-object v0, v0, Lcom/tebakgambar/sticker/g$d;->a:Landroidx/databinding/m;

    iget-object p1, p1, Lcom/tebakgambar/model/response/StickerCampaignResult;->campaignDetails:Ljava/util/List;

    invoke-virtual {v0, p1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.i.a (com.tebakgambar.sticker.i$a)
.class Lcom/tebakgambar/sticker/i$a;
.super Ljava/lang/Object;
.source "StickerCampaignListViewModel.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/sticker/i;->l()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/response/ApiResponse3<",
        "Lcom/tebakgambar/model/response/StickerCampaignResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/sticker/i;


# direct methods
.method constructor <init>(Lcom/tebakgambar/sticker/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/sticker/i$a;->a:Lcom/tebakgambar/sticker/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/sticker/i$a;->a:Lcom/tebakgambar/sticker/i;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p2, Lcom/tebakgambar/model/response/StickerCampaignResult;

    invoke-virtual {p1, p2}, Lcom/tebakgambar/sticker/i;->p(Lcom/tebakgambar/model/response/StickerCampaignResult;)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/sticker/i$a;->a:Lcom/tebakgambar/sticker/i;

    iget-object p1, p1, Lcom/tebakgambar/sticker/i;->t:Landroidx/databinding/l;

    invoke-virtual {p1, v0}, Landroidx/databinding/l;->z(Z)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/sticker/i$a;->a:Lcom/tebakgambar/sticker/i;

    iget-object p1, p1, Lcom/tebakgambar/sticker/i;->u:Landroidx/databinding/m;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    goto :goto_3c

    .line 5
    :cond_2c
    iget-object p1, p0, Lcom/tebakgambar/sticker/i$a;->a:Lcom/tebakgambar/sticker/i;

    iget-object p1, p1, Lcom/tebakgambar/sticker/i;->t:Landroidx/databinding/l;

    invoke-virtual {p1, v0}, Landroidx/databinding/l;->z(Z)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/sticker/i$a;->a:Lcom/tebakgambar/sticker/i;

    iget-object p1, p1, Lcom/tebakgambar/sticker/i;->u:Landroidx/databinding/m;

    const-string p2, "Invalid response. Please try again."

    invoke-virtual {p1, p2}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    :goto_3c
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/sticker/i$a;->a:Lcom/tebakgambar/sticker/i;

    iget-object p1, p1, Lcom/tebakgambar/sticker/i;->t:Landroidx/databinding/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/databinding/l;->z(Z)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/sticker/i$a;->a:Lcom/tebakgambar/sticker/i;

    iget-object p1, p1, Lcom/tebakgambar/sticker/i;->u:Landroidx/databinding/m;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.h (com.tebakgambar.sticker.h)
.class public final synthetic Lcom/tebakgambar/sticker/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/sticker/i;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/sticker/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/h;->a:Lcom/tebakgambar/sticker/i;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/sticker/h;->a:Lcom/tebakgambar/sticker/i;

    invoke-static {v0}, Lcom/tebakgambar/sticker/i;->k(Lcom/tebakgambar/sticker/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
