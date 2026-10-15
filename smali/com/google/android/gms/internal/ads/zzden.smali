###### Class com.google.android.gms.internal.ads.zzden (com.google.android.gms.internal.ads.zzden)
.class public final Lcom/google/android/gms/internal/ads/zzden;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdgt;

.field private final b:Lcom/google/android/gms/ads/internal/client/zzbh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgt;Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzden;->a:Lcom/google/android/gms/internal/ads/zzdgt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzden;->b:Lcom/google/android/gms/ads/internal/client/zzbh;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/client/zzbh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzden;->b:Lcom/google/android/gms/ads/internal/client/zzbh;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzdgt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzden;->a:Lcom/google/android/gms/internal/ads/zzdgt;

    return-object v0
.end method
