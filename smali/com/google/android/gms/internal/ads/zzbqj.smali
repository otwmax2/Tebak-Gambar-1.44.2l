###### Class com.google.android.gms.internal.ads.zzbqj (com.google.android.gms.internal.ads.zzbqj)
.class public final Lcom/google/android/gms/internal/ads/zzbqj;
.super Lcom/google/android/gms/ads/nativead/NativeAd$Image;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbdx;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/net/Uri;

.field private final d:D


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdx;)V
    .registers 5

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqj;->a:Lcom/google/android/gms/internal/ads/zzbdx;

    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->c()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception p1

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    move-object p1, v1

    .line 4
    :goto_1a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqj;->b:Landroid/graphics/drawable/Drawable;

    :try_start_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqj;->a:Lcom/google/android/gms/internal/ads/zzbdx;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->b()Landroid/net/Uri;

    move-result-object v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqj;->c:Landroid/net/Uri;

    :try_start_29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqj;->a:Lcom/google/android/gms/internal/ads/zzbdx;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zzb()D

    move-result-wide v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception p1

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 10
    :goto_36
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbqj;->d:D

    :try_start_38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqj;->a:Lcom/google/android/gms/internal/ads/zzbdx;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->d()I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p1

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_42
    :try_start_42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqj;->a:Lcom/google/android/gms/internal/ads/zzbdx;

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdx;->a()I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p1

    .line 15
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
