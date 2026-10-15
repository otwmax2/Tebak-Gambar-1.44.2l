###### Class com.google.android.gms.internal.ads.zzcpj (com.google.android.gms.internal.ads.zzcpj)
.class public final Lcom/google/android/gms/internal/ads/zzcpj;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpj;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpj;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpj;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpj;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcpp;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpp;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpj;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeeb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeeb;->a()Lcom/google/android/gms/internal/ads/zzeea;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpj;->c:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzefx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzefx;->a()Lcom/google/android/gms/internal/ads/zzefw;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v3, v0, :cond_20

    return-object v2

    :cond_20
    return-object v1
.end method
