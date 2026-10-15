###### Class com.google.android.gms.internal.ads.zzdhv (com.google.android.gms.internal.ads.zzdhv)
.class public final Lcom/google/android/gms/internal/ads/zzdhv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final c:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final d:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhv;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhv;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhv;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdhv;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhv;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdmq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhv;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdfm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdfm;->a()Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhv;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcnq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdhv;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdfl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdfl;->a()Lcom/google/android/gms/internal/ads/zzdgq;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdhu;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdhu;-><init>(Lcom/google/android/gms/internal/ads/zzdmq;Lcom/google/android/gms/internal/ads/zzdlf;Lcom/google/android/gms/internal/ads/zzcnq;Lcom/google/android/gms/internal/ads/zzdgq;)V

    return-object v4
.end method
