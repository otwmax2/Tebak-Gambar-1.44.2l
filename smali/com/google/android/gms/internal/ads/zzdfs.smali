###### Class com.google.android.gms.internal.ads.zzdfs (com.google.android.gms.internal.ads.zzdfs)
.class public final Lcom/google/android/gms/internal/ads/zzdfs;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfs;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzdfr;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfs;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdhb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhb;->a()Lcom/google/android/gms/internal/ads/zzdgi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdfr;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdfr;-><init>(Lcom/google/android/gms/internal/ads/zzdgi;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdfs;->a()Lcom/google/android/gms/internal/ads/zzdfr;

    move-result-object v0

    return-object v0
.end method
