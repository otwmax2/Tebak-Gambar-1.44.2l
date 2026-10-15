###### Class com.google.android.gms.internal.ads.zzazy (com.google.android.gms.internal.ads.zzazy)
.class public final Lcom/google/android/gms/internal/ads/zzazy;
.super Lcom/google/android/gms/internal/ads/zzgqi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazz;->J()Lcom/google/android/gms/internal/ads/zzazz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzawl;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazz;->J()Lcom/google/android/gms/internal/ads/zzazz;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method


# virtual methods
.method public final o(Z)Lcom/google/android/gms/internal/ads/zzazy;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzazz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazz;->K(Lcom/google/android/gms/internal/ads/zzazz;Z)V

    return-object p0
.end method

.method public final p(I)Lcom/google/android/gms/internal/ads/zzazy;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzazz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazz;->L(Lcom/google/android/gms/internal/ads/zzazz;I)V

    return-object p0
.end method

.method public final q()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazz;->M()Z

    move-result v0

    return v0
.end method
