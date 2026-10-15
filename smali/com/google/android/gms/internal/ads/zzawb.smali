###### Class com.google.android.gms.internal.ads.zzawb (com.google.android.gms.internal.ads.zzawb)
.class public final Lcom/google/android/gms/internal/ads/zzawb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavq;)Ljava/util/concurrent/Future;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzawa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawa;->c(Lcom/google/android/gms/internal/ads/zzavq;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
