###### Class com.google.android.gms.internal.ads.zzgkv (com.google.android.gms.internal.ads.zzgkv)
.class public final Lcom/google/android/gms/internal/ads/zzgkv;
.super Lcom/google/android/gms/internal/ads/zzgqi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgky;->K()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgku;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgky;->K()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method


# virtual methods
.method public final o(Lcom/google/android/gms/internal/ads/zzgkx;)Lcom/google/android/gms/internal/ads/zzgkv;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgky;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgky;->Q(Lcom/google/android/gms/internal/ads/zzgky;Lcom/google/android/gms/internal/ads/zzgkx;)V

    return-object p0
.end method

.method public final p(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgkv;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgky;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgky;->O(Lcom/google/android/gms/internal/ads/zzgky;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgkv;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgky;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgky;->P(Lcom/google/android/gms/internal/ads/zzgky;Lcom/google/android/gms/internal/ads/zzgpe;)V

    return-object p0
.end method
