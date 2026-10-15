###### Class com.tebakgambar.levelselection.r (com.tebakgambar.levelselection.r)
.class public Lcom/tebakgambar/levelselection/r;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "LevelSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/levelselection/r$i;,
        Lcom/tebakgambar/levelselection/r$e;,
        Lcom/tebakgambar/levelselection/r$h;,
        Lcom/tebakgambar/levelselection/r$g;,
        Lcom/tebakgambar/levelselection/r$d;,
        Lcom/tebakgambar/levelselection/r$f;,
        Lcom/tebakgambar/levelselection/r$c;,
        Lcom/tebakgambar/levelselection/r$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Landroidx/recyclerview/widget/RecyclerView$e0;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/tebakgambar/levelselection/r$j;

.field private e:Lcom/tebakgambar/levelselection/r$c;

.field private f:Landroid/os/Handler;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/nativead/NativeAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/levelselection/r;->g:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/levelselection/r;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/levelselection/r;->e:Lcom/tebakgambar/levelselection/r$c;

    return-object p0
.end method

.method static synthetic w(Lcom/tebakgambar/levelselection/r;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/r;->y()V

    return-void
.end method

.method private y()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r;->f:Landroid/os/Handler;

    new-instance v1, Lcom/tebakgambar/levelselection/q;

    invoke-direct {v1, p0}, Lcom/tebakgambar/levelselection/q;-><init>(Lcom/tebakgambar/levelselection/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public A(Lcom/tebakgambar/levelselection/r$j;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r;->d:Lcom/tebakgambar/levelselection/r$j;

    .line 2
    iget-object p1, p1, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    new-instance v0, Lcom/tebakgambar/levelselection/r$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/r$a;-><init>(Lcom/tebakgambar/levelselection/r;)V

    invoke-virtual {p1, v0}, Landroidx/databinding/a;->h(Landroidx/databinding/j$a;)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r;->d:Lcom/tebakgambar/levelselection/r$j;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/r$j;->a:Landroidx/databinding/n;

    new-instance v0, Lcom/tebakgambar/levelselection/r$b;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/r$b;-><init>(Lcom/tebakgambar/levelselection/r;)V

    invoke-virtual {p1, v0}, Landroidx/databinding/a;->h(Landroidx/databinding/j$a;)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->i()V

    return-void
.end method

.method public d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r;->d:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_1a

    :cond_c
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r;->d:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1a
    return v0
.end method

.method public f(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r;->d:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/tebakgambar/model/BaseEvent;

    if-eqz v1, :cond_14

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/tebakgambar/model/Level;

    if-eqz v1, :cond_2c

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Level;

    .line 5
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->isUpcomingLevel()Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x4

    return p1

    :cond_2a
    const/4 p1, 0x1

    return p1

    .line 6
    :cond_2c
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/tebakgambar/levelselection/r$j$b;

    if-eqz v1, :cond_36

    const/4 p1, 0x2

    return p1

    .line 7
    :cond_36
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v1, :cond_40

    const/4 p1, 0x3

    return p1

    .line 8
    :cond_40
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/tebakgambar/levelselection/r$j$a;

    if-eqz p1, :cond_4a

    const/4 p1, 0x5

    return p1

    :cond_4a
    const/4 p1, -0x1

    return p1
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$e0;I)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/tebakgambar/levelselection/r$d;

    if-eqz v0, :cond_1a

    .line 2
    check-cast p1, Lcom/tebakgambar/levelselection/r$d;

    iget-object v0, p0, Lcom/tebakgambar/levelselection/r;->d:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/BaseEvent;

    invoke-virtual {p1, p2}, Lcom/tebakgambar/levelselection/r$d;->W(Lcom/tebakgambar/model/BaseEvent;)V

    goto :goto_67

    .line 3
    :cond_1a
    instance-of v0, p1, Lcom/tebakgambar/levelselection/r$f;

    if-eqz v0, :cond_34

    .line 4
    check-cast p1, Lcom/tebakgambar/levelselection/r$f;

    iget-object v0, p0, Lcom/tebakgambar/levelselection/r;->d:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/Level;

    invoke-virtual {p1, p2}, Lcom/tebakgambar/levelselection/r$f;->W(Lcom/tebakgambar/model/Level;)V

    goto :goto_67

    .line 5
    :cond_34
    instance-of v0, p1, Lcom/tebakgambar/levelselection/r$i;

    if-eqz v0, :cond_4e

    .line 6
    check-cast p1, Lcom/tebakgambar/levelselection/r$i;

    iget-object v0, p0, Lcom/tebakgambar/levelselection/r;->d:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/Level;

    invoke-virtual {p1, p2}, Lcom/tebakgambar/levelselection/r$i;->W(Lcom/tebakgambar/model/Level;)V

    goto :goto_67

    .line 7
    :cond_4e
    instance-of v0, p1, Lcom/tebakgambar/levelselection/r$h;

    if-eqz v0, :cond_67

    .line 8
    check-cast p1, Lcom/tebakgambar/levelselection/r$h;

    iget-object v0, p0, Lcom/tebakgambar/levelselection/r;->d:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {p1, p2}, Lcom/tebakgambar/levelselection/r$h;->W(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$e0;
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a3

    const/4 v2, 0x0

    if-nez p2, :cond_18

    .line 2
    new-instance p2, Lcom/tebakgambar/levelselection/r$d;

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tebakgambar/levelselection/r$d;-><init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V

    return-object p2

    :cond_18
    const/4 v3, 0x1

    if-ne p2, v3, :cond_25

    .line 3
    new-instance p2, Lcom/tebakgambar/levelselection/r$f;

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tebakgambar/levelselection/r$f;-><init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V

    return-object p2

    :cond_25
    const/4 v3, 0x4

    if-ne p2, v3, :cond_35

    .line 4
    new-instance p2, Lcom/tebakgambar/levelselection/r$i;

    const v1, 0x7f0d00a7

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tebakgambar/levelselection/r$i;-><init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V

    return-object p2

    :cond_35
    const/4 v3, 0x2

    const v4, 0x7f0d00a4

    if-ne p2, v3, :cond_45

    .line 5
    new-instance p2, Lcom/tebakgambar/levelselection/r$g;

    invoke-virtual {v0, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tebakgambar/levelselection/r$g;-><init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V

    return-object p2

    :cond_45
    const/4 v3, 0x3

    if-ne p2, v3, :cond_5b

    .line 6
    new-instance p2, Lcom/tebakgambar/levelselection/r$h;

    invoke-virtual {v0, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tebakgambar/levelselection/r$h;-><init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r;->g:Ljava/util/List;

    iget-object v0, p2, Lcom/tebakgambar/levelselection/r$h;->I:Lo8/w0;

    iget-object v0, v0, Lo8/w0;->O:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_5b
    const/4 v3, 0x5

    if-ne p2, v3, :cond_68

    .line 8
    new-instance p2, Lcom/tebakgambar/levelselection/r$e;

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/tebakgambar/levelselection/r$e;-><init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V

    return-object p2

    :cond_68
    const/4 p1, 0x0

    return-object p1
.end method

.method public x()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public z(Lcom/tebakgambar/levelselection/r$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r;->e:Lcom/tebakgambar/levelselection/r$c;

    return-void
.end method

###### Class com.tebakgambar.levelselection.r.a (com.tebakgambar.levelselection.r$a)
.class Lcom/tebakgambar/levelselection/r$a;
.super Landroidx/databinding/j$a;
.source "LevelSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/r;->A(Lcom/tebakgambar/levelselection/r$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/levelselection/r;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$a;->a:Lcom/tebakgambar/levelselection/r;

    invoke-direct {p0}, Landroidx/databinding/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/databinding/j;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$a;->a:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->w(Lcom/tebakgambar/levelselection/r;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.r.b (com.tebakgambar.levelselection.r$b)
.class Lcom/tebakgambar/levelselection/r$b;
.super Landroidx/databinding/j$a;
.source "LevelSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/r;->A(Lcom/tebakgambar/levelselection/r$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/levelselection/r;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$b;->a:Lcom/tebakgambar/levelselection/r;

    invoke-direct {p0}, Landroidx/databinding/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/databinding/j;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$b;->a:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->w(Lcom/tebakgambar/levelselection/r;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.r.c (com.tebakgambar.levelselection.r$c)
.class public interface abstract Lcom/tebakgambar/levelselection/r$c;
.super Ljava/lang/Object;
.source "LevelSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Lcom/tebakgambar/model/Level;)V
.end method

.method public abstract o(Lcom/tebakgambar/model/BaseEvent;)V
.end method

.method public abstract p(Lcom/tebakgambar/model/Level;)V
.end method

.method public abstract u()V
.end method

###### Class com.tebakgambar.levelselection.r.d (com.tebakgambar.levelselection.r$d)
.class Lcom/tebakgambar/levelselection/r$d;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "LevelSelectionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field I:Lo8/y0;

.field J:Lcom/tebakgambar/model/BaseEvent;

.field final synthetic K:Lcom/tebakgambar/levelselection/r;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$d;->K:Lcom/tebakgambar/levelselection/r;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/y0;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$d;->I:Lo8/y0;

    .line 4
    iget-object p1, p1, Lo8/y0;->V:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$d;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->W:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$d;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->X:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$d;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method W(Lcom/tebakgambar/model/BaseEvent;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$d;->J:Lcom/tebakgambar/model/BaseEvent;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$d;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->c0:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p1, Lcom/tebakgambar/model/BaseEvent;->title_event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$d;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->V:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/tebakgambar/model/BaseEvent;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p1, Lcom/tebakgambar/model/BaseEvent;->sub_title_event:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$d;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->b0:Lcom/tebakgambar/component/CustomTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_39

    .line 6
    :cond_28
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$d;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->b0:Lcom/tebakgambar/component/CustomTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$d;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->b0:Lcom/tebakgambar/component/CustomTextView;

    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->sub_title_event:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$d;->K:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$d;->K:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$d;->J:Lcom/tebakgambar/model/BaseEvent;

    invoke-interface {p1, v0}, Lcom/tebakgambar/levelselection/r$c;->o(Lcom/tebakgambar/model/BaseEvent;)V

    :cond_13
    return-void
.end method

###### Class com.tebakgambar.levelselection.r.e (com.tebakgambar.levelselection.r$e)
.class Lcom/tebakgambar/levelselection/r$e;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "LevelSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field I:Lo8/y0;

.field final synthetic J:Lcom/tebakgambar/levelselection/r;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->J:Lcom/tebakgambar/levelselection/r;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/y0;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->I:Lo8/y0;

    .line 4
    iget-object p1, p1, Lo8/y0;->V:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->W:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->X:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->c0:Lcom/tebakgambar/component/CustomTextView;

    const v1, 0x7f120147

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->b0:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->b0:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f120146

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->V:Landroid/widget/RelativeLayout;

    const-string v0, "#03877A"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 12
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->c0:Lcom/tebakgambar/component/CustomTextView;

    const-string v0, "#feff00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->I:Lo8/y0;

    iget-object p1, p1, Lo8/y0;->b0:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    new-instance p1, Lcom/tebakgambar/levelselection/s;

    invoke-direct {p1, p0}, Lcom/tebakgambar/levelselection/s;-><init>(Lcom/tebakgambar/levelselection/r$e;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic W(Lcom/tebakgambar/levelselection/r$e;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/r$e;->X(Landroid/view/View;)V

    return-void
.end method

.method private synthetic X(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->J:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$e;->J:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/tebakgambar/levelselection/r$c;->a()V

    :cond_11
    return-void
.end method

###### Class com.tebakgambar.levelselection.s (com.tebakgambar.levelselection.s)
.class public final synthetic Lcom/tebakgambar/levelselection/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/levelselection/r$e;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/r$e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/s;->o:Lcom/tebakgambar/levelselection/r$e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/s;->o:Lcom/tebakgambar/levelselection/r$e;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/r$e;->W(Lcom/tebakgambar/levelselection/r$e;Landroid/view/View;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.r.f (com.tebakgambar.levelselection.r$f)
.class Lcom/tebakgambar/levelselection/r$f;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "LevelSelectionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field I:Lo8/y0;

.field J:Lcom/tebakgambar/model/Level;

.field final synthetic K:Lcom/tebakgambar/levelselection/r;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$f;->K:Lcom/tebakgambar/levelselection/r;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/y0;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method W(Lcom/tebakgambar/model/Level;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$f;->J:Lcom/tebakgambar/model/Level;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->X:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->W:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->V:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    new-instance v0, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 7
    iget-object v3, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 8
    iget-object v3, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080113

    invoke-static {v3, v4}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 11
    iget-object v3, p1, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p1, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    const/16 v6, 0x11

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_85

    .line 12
    :cond_7a
    iget-object v3, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 13
    :goto_85
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->isNew()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 14
    iget-object v3, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v3, v3, Lo8/y0;->P:Landroid/widget/ImageView;

    const v4, 0x7f080128

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    iget-object v3, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v3, v3, Lo8/y0;->P:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ae

    .line 16
    :cond_9d
    iget-object v3, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v3, v3, Lo8/y0;->P:Landroid/widget/ImageView;

    const v4, 0x7f080129

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object v3, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v3, v3, Lo8/y0;->P:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    :goto_ae
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->isSpecial()Z

    move-result v3

    if-nez v3, :cond_d5

    .line 19
    iget-object v3, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v3, v3, Lo8/y0;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v2, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v2, v2, Lo8/y0;->Y:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v1, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v1, v1, Lo8/y0;->Y:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->Y:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_109

    .line 23
    :cond_d5
    iget-object v3, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v3, v3, Lo8/y0;->Y:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object v2, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v2, v2, Lo8/y0;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object v1, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v1, v1, Lo8/y0;->Z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->a0:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p1, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->Z:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->a0:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    :goto_109
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/tebakgambar/model/Level;->getBackgroundColor(Landroid/content/Context;)I

    move-result v1

    .line 31
    iget-object v2, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v2, v2, Lo8/y0;->V:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 32
    iget-object v2, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v2, v2, Lo8/y0;->X:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 33
    iget-object v2, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v2, v2, Lo8/y0;->W:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 34
    invoke-static {v0}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v1

    iget-object v2, p1, Lcom/tebakgambar/model/Level;->iconUrl:Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v2}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object v1

    .line 36
    invoke-virtual {p1, v0}, Lcom/tebakgambar/model/Level;->getDefaultIconResource(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lv1/c;->Q(I)Lv1/c;

    move-result-object v1

    .line 37
    invoke-virtual {p1, v0}, Lcom/tebakgambar/model/Level;->getDefaultIconResource(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p1}, Lv1/c;->J(I)Lv1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$f;->I:Lo8/y0;

    iget-object v0, v0, Lo8/y0;->O:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {p1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$f;->K:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$f;->K:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$f;->J:Lcom/tebakgambar/model/Level;

    invoke-interface {p1, v0}, Lcom/tebakgambar/levelselection/r$c;->b(Lcom/tebakgambar/model/Level;)V

    :cond_13
    return-void
.end method

###### Class com.tebakgambar.levelselection.r.g (com.tebakgambar.levelselection.r$g)
.class Lcom/tebakgambar/levelselection/r$g;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "LevelSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field I:Lo8/w0;

.field final synthetic J:Lcom/tebakgambar/levelselection/r;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$g;->J:Lcom/tebakgambar/levelselection/r;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/w0;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$g;->I:Lo8/w0;

    .line 4
    iget-object p1, p1, Lo8/w0;->S:Lcom/tebakgambar/component/CustomTextView;

    const p2, 0x7f1201a0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$g;->I:Lo8/w0;

    iget-object p1, p1, Lo8/w0;->P:Lcom/tebakgambar/component/CustomButton;

    const p2, 0x7f120197

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$g;->I:Lo8/w0;

    iget-object p1, p1, Lo8/w0;->P:Lcom/tebakgambar/component/CustomButton;

    new-instance p2, Lcom/tebakgambar/levelselection/t;

    invoke-direct {p2, p0}, Lcom/tebakgambar/levelselection/t;-><init>(Lcom/tebakgambar/levelselection/r$g;)V

    invoke-virtual {p1, p2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic W(Lcom/tebakgambar/levelselection/r$g;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/r$g;->X(Landroid/view/View;)V

    return-void
.end method

.method private synthetic X(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$g;->J:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$g;->J:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/tebakgambar/levelselection/r$c;->u()V

    :cond_11
    return-void
.end method

###### Class com.tebakgambar.levelselection.t (com.tebakgambar.levelselection.t)
.class public final synthetic Lcom/tebakgambar/levelselection/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/levelselection/r$g;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/r$g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/t;->o:Lcom/tebakgambar/levelselection/r$g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/t;->o:Lcom/tebakgambar/levelselection/r$g;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/r$g;->W(Lcom/tebakgambar/levelselection/r$g;Landroid/view/View;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.r.h (com.tebakgambar.levelselection.r$h)
.class Lcom/tebakgambar/levelselection/r$h;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "LevelSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field I:Lo8/w0;

.field final synthetic J:Lcom/tebakgambar/levelselection/r;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$h;->J:Lcom/tebakgambar/levelselection/r;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/w0;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$h;->I:Lo8/w0;

    .line 4
    iget-object p2, p1, Lo8/w0;->O:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object p1, p1, Lo8/w0;->S:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$h;->I:Lo8/w0;

    iget-object p2, p1, Lo8/w0;->O:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object p1, p1, Lo8/w0;->P:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method W(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$h;->I:Lo8/w0;

    iget-object v0, v0, Lo8/w0;->S:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$h;->I:Lo8/w0;

    iget-object v0, v0, Lo8/w0;->P:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$h;->I:Lo8/w0;

    iget-object v0, v0, Lo8/w0;->O:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.r.i (com.tebakgambar.levelselection.r$i)
.class Lcom/tebakgambar/levelselection/r$i;
.super Landroidx/recyclerview/widget/RecyclerView$e0;
.source "LevelSelectionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field I:Lo8/c1;

.field J:Lcom/tebakgambar/model/Level;

.field final synthetic K:Lcom/tebakgambar/levelselection/r;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/levelselection/r;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$i;->K:Lcom/tebakgambar/levelselection/r;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/c1;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$i;->I:Lo8/c1;

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public W(Lcom/tebakgambar/model/Level;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/r$i;->J:Lcom/tebakgambar/model/Level;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$i;->I:Lo8/c1;

    iget-object v0, v0, Lo8/c1;->S:Lcom/tebakgambar/component/CustomTextView;

    iget-object v1, p1, Lcom/tebakgambar/model/Level;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    if-eqz v0, :cond_27

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/levelselection/r$i;->I:Lo8/c1;

    iget-object v1, v1, Lo8/c1;->R:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0}, Lcom/tebakgambar/model/ComingSoon;->displayReleaseBackground()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$i;->I:Lo8/c1;

    iget-object v0, v0, Lo8/c1;->R:Lcom/tebakgambar/component/CustomTextView;

    iget-object p1, p1, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    invoke-virtual {p1}, Lcom/tebakgambar/model/ComingSoon;->displayReleaseMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$i;->K:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/levelselection/r$i;->K:Lcom/tebakgambar/levelselection/r;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/r;->v(Lcom/tebakgambar/levelselection/r;)Lcom/tebakgambar/levelselection/r$c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/levelselection/r$i;->J:Lcom/tebakgambar/model/Level;

    invoke-interface {p1, v0}, Lcom/tebakgambar/levelselection/r$c;->p(Lcom/tebakgambar/model/Level;)V

    :cond_13
    return-void
.end method

###### Class com.tebakgambar.levelselection.r.j (com.tebakgambar.levelselection.r$j)
.class public Lcom/tebakgambar/levelselection/r$j;
.super Ljava/lang/Object;
.source "LevelSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/levelselection/r$j$a;,
        Lcom/tebakgambar/levelselection/r$j$b;
    }
.end annotation


# instance fields
.field a:Landroidx/databinding/n;

.field b:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/n;

    invoke-direct {v0}, Landroidx/databinding/n;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/levelselection/r$j;->a:Landroidx/databinding/n;

    .line 3
    new-instance v0, Landroidx/databinding/m;

    invoke-direct {v0}, Landroidx/databinding/m;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    return-void
.end method

###### Class com.tebakgambar.levelselection.r.j.a (com.tebakgambar.levelselection.r$j$a)
.class Lcom/tebakgambar/levelselection/r$j$a;
.super Ljava/lang/Object;
.source "LevelSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/r$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tebakgambar.levelselection.r.j.b (com.tebakgambar.levelselection.r$j$b)
.class Lcom/tebakgambar/levelselection/r$j$b;
.super Ljava/lang/Object;
.source "LevelSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/r$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tebakgambar.levelselection.q (com.tebakgambar.levelselection.q)
.class public final synthetic Lcom/tebakgambar/levelselection/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/levelselection/r;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/r;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/q;->o:Lcom/tebakgambar/levelselection/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/levelselection/q;->o:Lcom/tebakgambar/levelselection/r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->i()V

    return-void
.end method
