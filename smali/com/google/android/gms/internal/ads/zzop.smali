###### Class com.google.android.gms.internal.ads.zzop (com.google.android.gms.internal.ads.zzop)
.class final Lcom/google/android/gms/internal/ads/zzop;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzor;)V
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    .line 1
    :cond_4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzor;->a:Landroid/media/AudioDeviceInfo;

    :goto_6
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method
