###### Class com.google.android.gms.internal.ads.zzdma (com.google.android.gms.internal.ads.zzdma)
.class public final Lcom/google/android/gms/internal/ads/zzdma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final c:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdma;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdma;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdma;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdma;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdma;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdma;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcuf;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcuf;->a()Lcom/google/android/gms/internal/ads/zzeyx;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzeyx;->o:Lcom/google/android/gms/internal/ads/zzeyk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzeyk;->a:I

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_24

    if-eqz v3, :cond_1d

    check-cast v1, Lcom/google/android/gms/internal/ads/zzefx;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefx;->a()Lcom/google/android/gms/internal/ads/zzefw;

    move-result-object v0

    goto :goto_23

    .line 3
    :cond_1d
    check-cast v0, Lcom/google/android/gms/internal/ads/zzefx;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefx;->a()Lcom/google/android/gms/internal/ads/zzefw;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    .line 5
    throw v0
.end method
