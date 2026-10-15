###### Class com.google.android.gms.internal.ads.zzdoz (com.google.android.gms.internal.ads.zzdoz)
.class final Lcom/google/android/gms/internal/ads/zzdoz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzdpa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdpa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoz;->a:Lcom/google/android/gms/internal/ads/zzdpa;

    return-void
.end method

.method static bridge synthetic a()Lcom/google/android/gms/internal/ads/zzdpa;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdoz;->a:Lcom/google/android/gms/internal/ads/zzdpa;

    return-object v0
.end method
