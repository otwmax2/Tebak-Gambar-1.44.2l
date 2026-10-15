###### Class com.google.android.gms.internal.ads.zzfmb (com.google.android.gms.internal.ads.zzfmb)
.class public abstract Lcom/google/android/gms/internal/ads/zzfmb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/ads/zzfma;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzflh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzflh;-><init>()V

    const/16 v1, 0x1fd6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzflh;->b(I)Lcom/google/android/gms/internal/ads/zzfma;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/lang/String;
.end method
