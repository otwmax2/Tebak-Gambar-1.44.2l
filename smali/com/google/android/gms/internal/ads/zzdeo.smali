###### Class com.google.android.gms.internal.ads.zzdeo (com.google.android.gms.internal.ads.zzdeo)
.class public final Lcom/google/android/gms/internal/ads/zzdeo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzden;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzden;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdeo;->a:Lcom/google/android/gms/internal/ads/zzden;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/client/zzbh;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdeo;->a:Lcom/google/android/gms/internal/ads/zzden;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzden;->a()Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdeo;->a:Lcom/google/android/gms/internal/ads/zzden;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzden;->a()Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    return-object v0
.end method
