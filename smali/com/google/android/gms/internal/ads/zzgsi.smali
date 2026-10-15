###### Class com.google.android.gms.internal.ads.zzgsi (com.google.android.gms.internal.ads.zzgsi)
.class final Lcom/google/android/gms/internal/ads/zzgsi;
.super Lcom/google/android/gms/internal/ads/zzgow;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final o:Lcom/google/android/gms/internal/ads/zzgsm;

.field p:Lcom/google/android/gms/internal/ads/zzgoy;

.field final synthetic q:Lcom/google/android/gms/internal/ads/zzgso;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgso;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsi;->q:Lcom/google/android/gms/internal/ads/zzgso;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgow;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgsm;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgsl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsi;->o:Lcom/google/android/gms/internal/ads/zzgsm;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgsi;->a()Lcom/google/android/gms/internal/ads/zzgoy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsi;->p:Lcom/google/android/gms/internal/ads/zzgoy;

    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/ads/zzgoy;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsi;->o:Lcom/google/android/gms/internal/ads/zzgsm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgsm;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgsm;->a()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->E()Lcom/google/android/gms/internal/ads/zzgoy;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsi;->p:Lcom/google/android/gms/internal/ads/zzgoy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsi;->p:Lcom/google/android/gms/internal/ads/zzgoy;

    if-eqz v0, :cond_17

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgoy;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsi;->p:Lcom/google/android/gms/internal/ads/zzgoy;

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgsi;->a()Lcom/google/android/gms/internal/ads/zzgoy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsi;->p:Lcom/google/android/gms/internal/ads/zzgoy;

    :cond_16
    return v0

    .line 5
    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
