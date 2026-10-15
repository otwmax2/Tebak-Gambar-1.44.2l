###### Class com.google.android.gms.internal.ads.zzggy (com.google.android.gms.internal.ads.zzggy)
.class public final Lcom/google/android/gms/internal/ads/zzggy;
.super Lcom/google/android/gms/internal/ads/zzgqi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggz;->K()Lcom/google/android/gms/internal/ads/zzggz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzggx;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggz;->K()Lcom/google/android/gms/internal/ads/zzggz;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method


# virtual methods
.method public final o(I)Lcom/google/android/gms/internal/ads/zzggy;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzggz;

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzggz;->N(Lcom/google/android/gms/internal/ads/zzggz;I)V

    return-object p0
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzghc;)Lcom/google/android/gms/internal/ads/zzggy;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzggz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzggz;->O(Lcom/google/android/gms/internal/ads/zzggz;Lcom/google/android/gms/internal/ads/zzghc;)V

    return-object p0
.end method
