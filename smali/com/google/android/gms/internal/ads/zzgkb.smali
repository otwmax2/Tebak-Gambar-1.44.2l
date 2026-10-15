###### Class com.google.android.gms.internal.ads.zzgkb (com.google.android.gms.internal.ads.zzgkb)
.class public final Lcom/google/android/gms/internal/ads/zzgkb;
.super Lcom/google/android/gms/internal/ads/zzgqi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkc;->K()Lcom/google/android/gms/internal/ads/zzgkc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgka;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkc;->K()Lcom/google/android/gms/internal/ads/zzgkc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method


# virtual methods
.method public final o(I)Lcom/google/android/gms/internal/ads/zzgkb;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgkc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkc;->P(Lcom/google/android/gms/internal/ads/zzgkc;I)V

    return-object p0
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzgkf;)Lcom/google/android/gms/internal/ads/zzgkb;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgkc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkc;->O(Lcom/google/android/gms/internal/ads/zzgkc;Lcom/google/android/gms/internal/ads/zzgkf;)V

    return-object p0
.end method
