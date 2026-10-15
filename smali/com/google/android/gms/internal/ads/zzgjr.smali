###### Class com.google.android.gms.internal.ads.zzgjr (com.google.android.gms.internal.ads.zzgjr)
.class public final Lcom/google/android/gms/internal/ads/zzgjr;
.super Lcom/google/android/gms/internal/ads/zzgqi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjs;->J()Lcom/google/android/gms/internal/ads/zzgjs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgjq;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjs;->J()Lcom/google/android/gms/internal/ads/zzgjs;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method


# virtual methods
.method public final o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgjr;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgjs;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgjs;->M(Lcom/google/android/gms/internal/ads/zzgjs;Lcom/google/android/gms/internal/ads/zzgpe;)V

    return-object p0
.end method

.method public final p(I)Lcom/google/android/gms/internal/ads/zzgjr;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjs;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjs;->P(Lcom/google/android/gms/internal/ads/zzgjs;I)V

    return-object p0
.end method

.method public final q(I)Lcom/google/android/gms/internal/ads/zzgjr;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjs;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjs;->Q(Lcom/google/android/gms/internal/ads/zzgjs;I)V

    return-object p0
.end method
