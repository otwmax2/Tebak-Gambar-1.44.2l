###### Class com.google.android.gms.internal.ads.zzbdq (com.google.android.gms.internal.ads.zzbdq)
.class public final Lcom/google/android/gms/internal/ads/zzbdq;
.super Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbdp;

.field private final b:Ljava/util/List;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdp;)V
    .registers 6

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->a:Lcom/google/android/gms/internal/ads/zzbdp;

    .line 2
    :try_start_e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdp;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->c:Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->c:Ljava/lang/String;

    .line 4
    :goto_1b
    :try_start_1b
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdp;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Landroid/os/IBinder;

    const/4 v3, 0x0

    if-eqz v2, :cond_4a

    .line 6
    check-cast v1, Landroid/os/IBinder;

    if-nez v1, :cond_37

    goto :goto_4a

    :cond_37
    const-string v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 7
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz v3, :cond_45

    .line 9
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbdx;

    goto :goto_4a

    :cond_45
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdv;-><init>(Landroid/os/IBinder;)V

    :cond_4a
    :goto_4a
    if-eqz v3, :cond_23

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->b:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbdy;

    .line 11
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Lcom/google/android/gms/internal/ads/zzbdx;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_56} :catch_58

    goto :goto_23

    :cond_57
    return-void

    :catch_58
    move-exception p1

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
