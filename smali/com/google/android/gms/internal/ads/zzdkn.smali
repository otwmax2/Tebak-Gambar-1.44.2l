###### Class com.google.android.gms.internal.ads.zzdkn (com.google.android.gms.internal.ads.zzdkn)
.class public final Lcom/google/android/gms/internal/ads/zzdkn;
.super Lcom/google/android/gms/internal/ads/zzbeq;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Lcom/google/android/gms/internal/ads/zzdgi;

.field private q:Lcom/google/android/gms/internal/ads/zzdhi;

.field private r:Lcom/google/android/gms/internal/ads/zzdgd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdgi;Lcom/google/android/gms/internal/ads/zzdhi;Lcom/google/android/gms/internal/ads/zzdgd;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbeq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkn;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkn;->q:Lcom/google/android/gms/internal/ads/zzdhi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdkn;->r:Lcom/google/android/gms/internal/ads/zzdgd;

    return-void
.end method

.method static bridge synthetic Ta(Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdgd;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->r:Lcom/google/android/gms/internal/ads/zzdgd;

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzbdu;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->r:Lcom/google/android/gms/internal/ads/zzdgd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgd;->N()Lcom/google/android/gms/internal/ads/zzdgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgf;->a()Lcom/google/android/gms/internal/ads/zzbdu;

    move-result-object v0

    return-object v0
.end method

.method public final c0(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->q:Lcom/google/android/gms/internal/ads/zzdhi;

    if-eqz v0, :cond_26

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhi;->f(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgi;->b0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;)V

    .line 6
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcei;->K(Lcom/google/android/gms/internal/ads/zzbdk;)V

    const/4 p1, 0x1

    return p1

    :cond_26
    return v1
.end method

.method public final c6(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->e0()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->r:Lcom/google/android/gms/internal/ads/zzdgd;

    if-eqz v0, :cond_1b

    .line 4
    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgd;->p(Landroid/view/View;)V

    :cond_1b
    return-void
.end method

.method public final c9(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->S()Lo/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final d0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbdx;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->R()Lo/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdx;

    return-object p1
.end method

.method public final f()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->j0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->R()Lo/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdgi;->S()Lo/g;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lo/g;->size()I

    move-result v2

    invoke-virtual {v1}, Lo/g;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_1a
    invoke-virtual {v0}, Lo/g;->size()I

    move-result v6

    if-ge v4, v6, :cond_2d

    .line 5
    invoke-virtual {v0, v4}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 6
    :cond_2d
    :goto_2d
    invoke-virtual {v1}, Lo/g;->size()I

    move-result v0

    if-ge v3, v0, :cond_40

    .line 7
    invoke-virtual {v1, v3}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 8
    :cond_40
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->r:Lcom/google/android/gms/internal/ads/zzdgd;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->a()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->r:Lcom/google/android/gms/internal/ads/zzdgd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->q:Lcom/google/android/gms/internal/ads/zzdhi;

    return-void
.end method

.method public final l()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, "Illegal argument specified for omid partner name."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "Not starting OMID session. OM partner name has not been configured."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkn;->r:Lcom/google/android/gms/internal/ads/zzdgd;

    if-eqz v1, :cond_28

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdgd;->Y(Ljava/lang/String;Z)V

    :cond_28
    return-void
.end method

.method public final m()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->r:Lcom/google/android/gms/internal/ads/zzdgd;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgd;->o()V

    :cond_7
    return-void
.end method

.method public final q()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->e0()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->a()Lcom/google/android/gms/internal/ads/zzeaq;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzeaq;->x0(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->a0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->a0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    new-instance v1, Lo/a;

    invoke-direct {v1}, Lo/a;-><init>()V

    const-string v2, "onSdkLoaded"

    .line 5
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbki;->v0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_27
    const/4 v0, 0x1

    return v0

    :cond_29
    const-string v0, "Trying to start OMID session before creation."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->r:Lcom/google/android/gms/internal/ads/zzdgd;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgd;->C()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    return v1

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->a0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->p:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->b0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    if-eqz v0, :cond_1f

    return v1

    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public final s0(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkn;->r:Lcom/google/android/gms/internal/ads/zzdgd;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgd;->l(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
