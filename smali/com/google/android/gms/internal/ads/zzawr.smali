###### Class com.google.android.gms.internal.ads.zzawr (com.google.android.gms.internal.ads.zzawr)
.class public final Lcom/google/android/gms/internal/ads/zzawr;
.super Lcom/google/android/gms/internal/ads/zzgqi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaws;->J()Lcom/google/android/gms/internal/ads/zzaws;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzawl;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaws;->J()Lcom/google/android/gms/internal/ads/zzaws;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method


# virtual methods
.method public final o(Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/zzawr;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaww;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaws;->K(Lcom/google/android/gms/internal/ads/zzaws;Lcom/google/android/gms/internal/ads/zzaww;)V

    return-object p0
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzaww;)Lcom/google/android/gms/internal/ads/zzawr;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaws;->K(Lcom/google/android/gms/internal/ads/zzaws;Lcom/google/android/gms/internal/ads/zzaww;)V

    return-object p0
.end method

.method public final q(Lcom/google/android/gms/internal/ads/zzawx;)Lcom/google/android/gms/internal/ads/zzawr;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawy;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaws;->L(Lcom/google/android/gms/internal/ads/zzaws;Lcom/google/android/gms/internal/ads/zzawy;)V

    return-object p0
.end method

.method public final r(I)Lcom/google/android/gms/internal/ads/zzawr;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaws;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaws;->M(Lcom/google/android/gms/internal/ads/zzaws;I)V

    return-object p0
.end method
