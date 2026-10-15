###### Class com.google.android.gms.internal.ads.zzgmj (com.google.android.gms.internal.ads.zzgmj)
.class public final Lcom/google/android/gms/internal/ads/zzgmj;
.super Lcom/google/android/gms/internal/ads/zzgqi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmk;->K()Lcom/google/android/gms/internal/ads/zzgmk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgmi;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmk;->K()Lcom/google/android/gms/internal/ads/zzgmk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method


# virtual methods
.method public final o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgmj;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgmk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgmk;->O(Lcom/google/android/gms/internal/ads/zzgmk;Lcom/google/android/gms/internal/ads/zzgpe;)V

    return-object p0
.end method

.method public final p(I)Lcom/google/android/gms/internal/ads/zzgmj;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgmk;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgmk;->N(Lcom/google/android/gms/internal/ads/zzgmk;I)V

    return-object p0
.end method
