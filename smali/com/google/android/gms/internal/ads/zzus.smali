###### Class com.google.android.gms.internal.ads.zzus (com.google.android.gms.internal.ads.zzus)
.class public final Lcom/google/android/gms/internal/ads/zzus;
.super Lcom/google/android/gms/internal/ads/zzbu;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final q:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzus;->q:Landroid/net/Uri;

    return-void
.end method
