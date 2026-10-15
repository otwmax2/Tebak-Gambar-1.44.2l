###### Class com.google.android.gms.internal.ads.zzdgg (com.google.android.gms.internal.ads.zzdgg)
.class public final Lcom/google/android/gms/internal/ads/zzdgg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgg;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgg;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdfs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfs;->a()Lcom/google/android/gms/internal/ads/zzdfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdgf;-><init>(Lcom/google/android/gms/internal/ads/zzdfr;)V

    return-object v1
.end method
