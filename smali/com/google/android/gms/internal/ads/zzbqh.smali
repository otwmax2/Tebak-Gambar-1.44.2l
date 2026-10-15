###### Class com.google.android.gms.internal.ads.zzbqh (com.google.android.gms.internal.ads.zzbqh)
.class public final Lcom/google/android/gms/internal/ads/zzbqh;
.super Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Ljava/util/List;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdp;)V
    .registers 6

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqh;->a:Ljava/util/List;

    .line 2
    :try_start_c
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdp;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqh;->b:Ljava/lang/String;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqh;->b:Ljava/lang/String;

    .line 4
    :goto_19
    :try_start_19
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdp;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_36

    .line 6
    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbdw;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    if-eqz v1, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqh;->a:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbqj;

    .line 7
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbqj;-><init>(Lcom/google/android/gms/internal/ads/zzbdx;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_43} :catch_45

    goto :goto_21

    :cond_44
    return-void

    :catch_45
    move-exception p1

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
