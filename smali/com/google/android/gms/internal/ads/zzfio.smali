###### Class com.google.android.gms.internal.ads.zzfio (com.google.android.gms.internal.ads.zzfio)
.class public final Lcom/google/android/gms/internal/ads/zzfio;
.super Lcom/google/android/gms/internal/ads/zzgqi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfiq;->J()Lcom/google/android/gms/internal/ads/zzfiq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfin;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfiq;->J()Lcom/google/android/gms/internal/ads/zzfiq;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfio;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfiq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfiq;->K(Lcom/google/android/gms/internal/ads/zzfiq;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzfil;)Lcom/google/android/gms/internal/ads/zzfio;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfiq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfim;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfiq;->L(Lcom/google/android/gms/internal/ads/zzfiq;Lcom/google/android/gms/internal/ads/zzfim;)V

    return-object p0
.end method

.method public final q(I)Lcom/google/android/gms/internal/ads/zzfio;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfiq;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfiq;->M(Lcom/google/android/gms/internal/ads/zzfiq;I)V

    return-object p0
.end method
