###### Class com.google.android.gms.internal.ads.zzfmg (com.google.android.gms.internal.ads.zzfmg)
.class public abstract Lcom/google/android/gms/internal/ads/zzfmg;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmh;


# direct methods
.method public static Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzfmh;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.play.core.lmd.protocol.ILmdOverlayService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzfmh;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfmh;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfmf;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
