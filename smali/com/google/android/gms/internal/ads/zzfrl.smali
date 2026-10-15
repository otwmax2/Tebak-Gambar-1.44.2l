###### Class com.google.android.gms.internal.ads.zzfrl (com.google.android.gms.internal.ads.zzfrl)
.class final Lcom/google/android/gms/internal/ads/zzfrl;
.super Lcom/google/android/gms/internal/ads/zzfrk;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzfrm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrm;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrl;->a:Lcom/google/android/gms/internal/ads/zzfrm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfrk;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/ads/zzfqv;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrl;->a:Lcom/google/android/gms/internal/ads/zzfrm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrm;->a()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrj;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfrj;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfro;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfro;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzfok;)V

    return-object v2
.end method
