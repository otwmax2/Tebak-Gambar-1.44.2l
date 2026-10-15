###### Class com.google.android.gms.internal.ads.zzehc (com.google.android.gms.internal.ads.zzehc)
.class public final Lcom/google/android/gms/internal/ads/zzehc;
.super Lcom/google/android/gms/ads/internal/client/zzbt;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Lcom/google/android/gms/ads/internal/client/zzbh;

.field private final q:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final r:Lcom/google/android/gms/internal/ads/zzcok;

.field private final s:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzbh;Lcom/google/android/gms/internal/ads/zzeyx;Lcom/google/android/gms/internal/ads/zzcok;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehc;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehc;->p:Lcom/google/android/gms/ads/internal/client/zzbh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehc;->q:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    new-instance p2, Landroid/widget/FrameLayout;

    .line 2
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcok;->i()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 p4, -0x1

    .line 5
    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzehc;->e()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zzq;->q:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzehc;->e()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zzq;->t:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehc;->s:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final A4(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final B()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcok;->m()V

    return-void
.end method

.method public final D3(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .registers 3

    return-void
.end method

.method public final D7(Lcom/google/android/gms/ads/internal/client/zzcf;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final D8(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final Da(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final E7(Lcom/google/android/gms/ads/internal/client/zzw;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final F0()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final G6(Lcom/google/android/gms/internal/ads/zzbuj;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final Ha(Lcom/google/android/gms/internal/ads/zzbro;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final K7(Lcom/google/android/gms/ads/internal/client/zzby;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final M3(Lcom/google/android/gms/ads/internal/client/zzbe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAdClickListener is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final N()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->d()Lcom/google/android/gms/internal/ads/zzcvn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvn;->c1(Landroid/content/Context;)V

    return-void
.end method

.method public final O1(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final P9(Lcom/google/android/gms/ads/internal/client/zzl;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "loadAd is not supported for an Ad Manager AdView returned from AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final R()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->d()Lcom/google/android/gms/internal/ads/zzcvn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvn;->d1(Landroid/content/Context;)V

    return-void
.end method

.method public final Z9()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final aa(Lcom/google/android/gms/internal/ads/zzavb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final d()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "getAdMetadata is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final d6(Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->q:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->c:Lcom/google/android/gms/internal/ads/zzeib;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->C(Lcom/google/android/gms/ads/internal/client/zzcb;)V

    :cond_9
    return-void
.end method

.method public final e()Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 3

    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcok;->k()Lcom/google/android/gms/internal/ads/zzeyd;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzezb;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final e8(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehc;->s:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcok;->n(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzq;)V

    :cond_e
    return-void
.end method

.method public final g()Lcom/google/android/gms/ads/internal/client/zzbh;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->p:Lcom/google/android/gms/ads/internal/client/zzbh;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/internal/client/zzcb;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->q:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->n:Lcom/google/android/gms/ads/internal/client/zzcb;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/ads/internal/client/zzdn;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcok;->j()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->s:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final l5(Lcom/google/android/gms/internal/ads/zzbbp;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final m3(Lcom/google/android/gms/ads/internal/client/zzdu;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final n1()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final o6(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setAdListener is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final p()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->q:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuh;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q2(Lcom/google/android/gms/ads/internal/client/zzci;)V
    .registers 2

    return-void
.end method

.method public final s3(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->J9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->q:Lcom/google/android/gms/internal/ads/zzeyx;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->c:Lcom/google/android/gms/internal/ads/zzeib;

    if-eqz v0, :cond_1b

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->w(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    :cond_1b
    return-void

    :cond_1c
    const-string p1, "setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final t6(Lcom/google/android/gms/ads/internal/client/zzfl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setVideoOptions is not supported in Ad Manager AdView returned by AdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final v2(Lcom/google/android/gms/internal/ads/zzbrl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final x()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuh;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final y()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehc;->r:Lcom/google/android/gms/internal/ads/zzcok;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->a()V

    return-void
.end method

.method public final y4(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method
