###### Class com.google.android.gms.internal.ads.zzfre (com.google.android.gms.internal.ads.zzfre)
.class abstract Lcom/google/android/gms/internal/ads/zzfre;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private transient o:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient p:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient q:Ljava/util/Collection;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/Set;
.end method

.method b()Ljava/util/Set;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfrc;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfre;->o:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfre;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfre;->o:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfre;->p:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfre;->b()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfre;->p:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfre;->q:Ljava/util/Collection;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfrd;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfre;->q:Ljava/util/Collection;

    :cond_b
    return-object v0
.end method
