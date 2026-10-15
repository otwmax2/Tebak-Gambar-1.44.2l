###### Class com.google.android.gms.internal.ads.zzehd (com.google.android.gms.internal.ads.zzehd)
.class public final Lcom/google/android/gms/internal/ads/zzehd;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehd;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehd;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehd;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehd;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehd;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehd;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdeo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdeo;->a()Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehd;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcuf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcuf;->a()Lcom/google/android/gms/internal/ads/zzeyx;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehd;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcow;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcow;->a()Lcom/google/android/gms/internal/ads/zzcok;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzehc;

    .line 2
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzbh;Lcom/google/android/gms/internal/ads/zzeyx;Lcom/google/android/gms/internal/ads/zzcok;)V

    return-object v4
.end method
