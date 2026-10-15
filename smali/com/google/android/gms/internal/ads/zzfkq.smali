###### Class com.google.android.gms.internal.ads.zzfkq (com.google.android.gms.internal.ads.zzfkq)
.class public final Lcom/google/android/gms/internal/ads/zzfkq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzfkn;

.field private static volatile b:Lcom/google/android/gms/internal/ads/zzfkn;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkp;-><init>(Lcom/google/android/gms/internal/ads/zzfko;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkq;->a:Lcom/google/android/gms/internal/ads/zzfkn;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkq;->b:Lcom/google/android/gms/internal/ads/zzfkn;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/zzfkn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkq;->b:Lcom/google/android/gms/internal/ads/zzfkn;

    return-object v0
.end method
