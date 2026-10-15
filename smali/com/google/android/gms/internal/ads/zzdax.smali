###### Class com.google.android.gms.internal.ads.zzdax (com.google.android.gms.internal.ads.zzdax)
.class public final Lcom/google/android/gms/internal/ads/zzdax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdab;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdax;->a:Lcom/google/android/gms/internal/ads/zzdab;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzevq;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdax;->a:Lcom/google/android/gms/internal/ads/zzdab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdab;->b()Lcom/google/android/gms/internal/ads/zzevq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdax;->a:Lcom/google/android/gms/internal/ads/zzdab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdab;->b()Lcom/google/android/gms/internal/ads/zzevq;

    move-result-object v0

    return-object v0
.end method
