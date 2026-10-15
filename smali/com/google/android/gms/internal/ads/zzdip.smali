###### Class com.google.android.gms.internal.ads.zzdip (com.google.android.gms.internal.ads.zzdip)
.class public final Lcom/google/android/gms/internal/ads/zzdip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdij;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdij;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdip;->a:Lcom/google/android/gms/internal/ads/zzdij;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzbnu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdip;->a:Lcom/google/android/gms/internal/ads/zzdij;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdij;->a()Lcom/google/android/gms/internal/ads/zzbnu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdip;->a:Lcom/google/android/gms/internal/ads/zzdij;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdij;->a()Lcom/google/android/gms/internal/ads/zzbnu;

    move-result-object v0

    return-object v0
.end method
