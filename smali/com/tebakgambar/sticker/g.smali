###### Class com.tebakgambar.sticker.g (com.tebakgambar.sticker.g)
.class public Lcom/tebakgambar/sticker/g;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "StickerCampaignListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/sticker/g$c;,
        Lcom/tebakgambar/sticker/g$b;,
        Lcom/tebakgambar/sticker/g$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/tebakgambar/sticker/g$c;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/tebakgambar/sticker/g$d;

.field private e:Lcom/tebakgambar/sticker/g$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    return-void
.end method

.method static synthetic v(Lcom/tebakgambar/sticker/g;)Lcom/tebakgambar/sticker/g$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/sticker/g;->e:Lcom/tebakgambar/sticker/g$b;

    return-object p0
.end method


# virtual methods
.method public d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/g;->d:Lcom/tebakgambar/sticker/g$d;

    iget-object v0, v0, Lcom/tebakgambar/sticker/g$d;->a:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic k(Landroidx/recyclerview/widget/RecyclerView$e0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/tebakgambar/sticker/g$c;

    invoke-virtual {p0, p1, p2}, Lcom/tebakgambar/sticker/g;->w(Lcom/tebakgambar/sticker/g$c;I)V

    return-void
.end method

.method public bridge synthetic m(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$e0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tebakgambar/sticker/g;->x(Landroid/view/ViewGroup;I)Lcom/tebakgambar/sticker/g$c;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/tebakgambar/sticker/g$c;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/g;->d:Lcom/tebakgambar/sticker/g$d;

    iget-object v0, v0, Lcom/tebakgambar/sticker/g$d;->a:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;

    invoke-virtual {p1, p2}, Lcom/tebakgambar/sticker/g$c;->W(Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;)V

    return-void
.end method

.method public x(Landroid/view/ViewGroup;I)Lcom/tebakgambar/sticker/g$c;
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/tebakgambar/sticker/g$c;

    const v1, 0x7f0d00a0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/tebakgambar/sticker/g$c;-><init>(Lcom/tebakgambar/sticker/g;Landroid/view/View;)V

    return-object v0
.end method

.method public y(Lcom/tebakgambar/sticker/g$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/sticker/g;->e:Lcom/tebakgambar/sticker/g$b;

    return-void
.end method

.method public z(Lcom/tebakgambar/sticker/g$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/sticker/g;->d:Lcom/tebakgambar/sticker/g$d;

    .line 2
    iget-object p1, p1, Lcom/tebakgambar/sticker/g$d;->a:Landroidx/databinding/m;

    new-instance v0, Lcom/tebakgambar/sticker/g$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/sticker/g$a;-><init>(Lcom/tebakgambar/sticker/g;)V

    invoke-virtual {p1, v0}, Landroidx/databinding/a;->h(Landroidx/databinding/j$a;)V

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->i()V

    return-void
.end method

###### Class com.tebakgambar.sticker.g.a (com.tebakgambar.sticker.g$a)
.class Lcom/tebakgambar/sticker/g$a;
.super Landroidx/databinding/j$a;
.source "StickerCampaignListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/sticker/g;->z(Lcom/tebakgambar/sticker/g$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/sticker/g;


# direct methods
.method constructor <init>(Lcom/tebakgambar/sticker/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/sticker/g$a;->a:Lcom/tebakgambar/sticker/g;

    invoke-direct {p0}, Landroidx/databinding/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/databinding/j;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/sticker/g$a;->a:Lcom/tebakgambar/sticker/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->i()V

    return-void
.end method

###### Class com.tebakgambar.sticker.g.b (com.tebakgambar.sticker.g$b)
.class interface abstract Lcom/tebakgambar/sticker/g$b;
.super Ljava/lang/Object;
.source "StickerCampaignListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract c(Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;)V
.end method

###### Class com.tebakgambar.sticker.g.c (com.tebakgambar.sticker.g$c)
.class public Lcom/tebakgambar/sticker/g$c;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "StickerCampaignListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private I:Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;

.field private J:Lo8/s0;

.field final synthetic K:Lcom/tebakgambar/sticker/g;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/sticker/g;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/sticker/g$c;->K:Lcom/tebakgambar/sticker/g;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/s0;

    iput-object p1, p0, Lcom/tebakgambar/sticker/g$c;->J:Lo8/s0;

    .line 4
    iget-object p1, p1, Lo8/s0;->O:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method W(Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/sticker/g$c;->I:Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/sticker/g$c;->J:Lo8/s0;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v0

    iget-object p1, p1, Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;->coverImageUrl:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    const v0, 0x7f080179

    .line 4
    invoke-virtual {p1, v0}, Lv1/c;->Q(I)Lv1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/sticker/g$c;->J:Lo8/s0;

    iget-object v0, v0, Lo8/s0;->O:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/sticker/g$c;->K:Lcom/tebakgambar/sticker/g;

    invoke-static {p1}, Lcom/tebakgambar/sticker/g;->v(Lcom/tebakgambar/sticker/g;)Lcom/tebakgambar/sticker/g$b;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/tebakgambar/sticker/g$c;->I:Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;

    if-eqz p1, :cond_17

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/sticker/g$c;->K:Lcom/tebakgambar/sticker/g;

    invoke-static {p1}, Lcom/tebakgambar/sticker/g;->v(Lcom/tebakgambar/sticker/g;)Lcom/tebakgambar/sticker/g$b;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/sticker/g$c;->I:Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;

    invoke-interface {p1, v0}, Lcom/tebakgambar/sticker/g$b;->c(Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;)V

    :cond_17
    return-void
.end method

###### Class com.tebakgambar.sticker.g.d (com.tebakgambar.sticker.g$d)
.class public Lcom/tebakgambar/sticker/g$d;
.super Ljava/lang/Object;
.source "StickerCampaignListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field a:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult$CampaignDetail;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/m;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroidx/databinding/m;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tebakgambar/sticker/g$d;->a:Landroidx/databinding/m;

    return-void
.end method
