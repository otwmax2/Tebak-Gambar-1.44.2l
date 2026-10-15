###### Class com.google.android.gms.internal.ads.zzbfv (com.google.android.gms.internal.ads.zzbfv)
.class public final Lcom/google/android/gms/internal/ads/zzbfv;
.super Lcom/google/android/gms/ads/formats/UnifiedNativeAd;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbfu;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/gms/internal/ads/zzbdy;

.field private final d:Lcom/google/android/gms/ads/VideoController;

.field private final e:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfu;)V
    .registers 7

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->b:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->d:Lcom/google/android/gms/ads/VideoController;

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    const/4 v1, 0x0

    .line 3
    :try_start_1d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->v()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_4d

    .line 6
    check-cast v2, Landroid/os/IBinder;

    if-nez v2, :cond_3a

    goto :goto_4d

    :cond_3a
    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 7
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 8
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz v4, :cond_47

    .line 9
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbdx;

    goto :goto_4e

    :cond_47
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdv;-><init>(Landroid/os/IBinder;)V

    goto :goto_4e

    :cond_4d
    :goto_4d
    move-object v3, v1

    :goto_4e
    if-eqz v3, :cond_27

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->b:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbdy;

    .line 11
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Lcom/google/android/gms/internal/ads/zzbdx;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_5a} :catch_5b

    goto :goto_27

    :catch_5b
    move-exception p1

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_5f
    :try_start_5f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->t()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_92

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6b
    :goto_6b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 16
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_80

    .line 17
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzcv;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzcw;

    move-result-object v2

    goto :goto_81

    :cond_80
    move-object v2, v1

    :goto_81
    if-eqz v2, :cond_6b

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfv;->f:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzcx;

    .line 18
    invoke-direct {v4, v2}, Lcom/google/android/gms/ads/internal/client/zzcx;-><init>(Lcom/google/android/gms/ads/internal/client/zzcw;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_8d} :catch_8e

    goto :goto_6b

    :catch_8e
    move-exception p1

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_92
    :try_start_92
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->i()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object p1

    if-eqz p1, :cond_a4

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbdy;

    .line 22
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Lcom/google/android/gms/internal/ads/zzbdx;)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_9f} :catch_a0

    goto :goto_a5

    :catch_a0
    move-exception p1

    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a4
    move-object v2, v1

    .line 24
    :goto_a5
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->c:Lcom/google/android/gms/internal/ads/zzbdy;

    :try_start_a7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->g()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object p1

    if-eqz p1, :cond_c0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 26
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbfu;->g()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzbdq;-><init>(Lcom/google/android/gms/internal/ads/zzbdp;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ba} :catch_bc

    move-object v1, p1

    goto :goto_c0

    :catch_bc
    move-exception p1

    .line 27
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :cond_c0
    :goto_c0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->e:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->k()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->m()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->n()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->r()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->c:Lcom/google/android/gms/internal/ads/zzbdy;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->b:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->q()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfu;->b()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_e

    goto :goto_12

    .line 2
    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    const-string v2, ""

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->x()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/ads/VideoController;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->f()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->d:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfu;->f()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->c(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->d:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final k()Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->j()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
