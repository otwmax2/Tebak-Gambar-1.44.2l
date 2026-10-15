###### Class com.google.android.gms.internal.ads.zzfro (com.google.android.gms.internal.ads.zzfro)
.class final Lcom/google/android/gms/internal/ads/zzfro;
.super Lcom/google/android/gms/internal/ads/zzfoo;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final transient t:Lcom/google/android/gms/internal/ads/zzfok;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzfok;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfoo;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfro;->t:Lcom/google/android/gms/internal/ads/zzfok;

    return-void
.end method


# virtual methods
.method final d()Ljava/util/Map;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpf;->r()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/util/Set;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpf;->s()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic h()Ljava/util/Collection;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfro;->t:Lcom/google/android/gms/internal/ads/zzfok;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfok;->zza()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
