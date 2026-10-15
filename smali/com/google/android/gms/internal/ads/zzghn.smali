###### Class com.google.android.gms.internal.ads.zzghn (com.google.android.gms.internal.ads.zzghn)
.class public final Lcom/google/android/gms/internal/ads/zzghn;
.super Lcom/google/android/gms/internal/ads/zzgqi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgho;->K()Lcom/google/android/gms/internal/ads/zzgho;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzghm;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgho;->K()Lcom/google/android/gms/internal/ads/zzgho;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method


# virtual methods
.method public final o(I)Lcom/google/android/gms/internal/ads/zzghn;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgho;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgho;->P(Lcom/google/android/gms/internal/ads/zzgho;I)V

    return-object p0
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzghr;)Lcom/google/android/gms/internal/ads/zzghn;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgho;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgho;->O(Lcom/google/android/gms/internal/ads/zzgho;Lcom/google/android/gms/internal/ads/zzghr;)V

    return-object p0
.end method
