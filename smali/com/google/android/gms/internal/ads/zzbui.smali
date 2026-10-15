###### Class com.google.android.gms.internal.ads.zzbui (com.google.android.gms.internal.ads.zzbui)
.class public abstract Lcom/google/android/gms/internal/ads/zzbui;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuj;


# direct methods
.method public static Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbuj;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbuj;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbuj;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbuh;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
