###### Class com.google.android.gms.internal.ads.zzdmc (com.google.android.gms.internal.ads.zzdmc)
.class public final Lcom/google/android/gms/internal/ads/zzdmc;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcuf;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuf;->a()Lcom/google/android/gms/internal/ads/zzeyx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->o:Lcom/google/android/gms/internal/ads/zzeyk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzeyk;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawo;->A:Lcom/google/android/gms/internal/ads/zzawo;

    goto :goto_14

    .line 3
    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawo;->w:Lcom/google/android/gms/internal/ads/zzawo;

    .line 4
    :goto_14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
