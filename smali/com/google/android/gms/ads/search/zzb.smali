###### Class com.google.android.gms.ads.search.zzb (com.google.android.gms.ads.search.zzb)
.class public final Lcom/google/android/gms/ads/search/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/client/zzdw;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzdw;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzdw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/zzb;->a:Lcom/google/android/gms/ads/internal/client/zzdw;

    return-void
.end method
