###### Class com.google.android.gms.internal.ads.zzfrw (com.google.android.gms.internal.ads.zzfrw)
.class final Lcom/google/android/gms/internal/ads/zzfrw;
.super Lcom/google/android/gms/internal/ads/zzfqp;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final transient q:Lcom/google/android/gms/internal/ads/zzfqn;

.field private final transient r:Lcom/google/android/gms/internal/ads/zzfqk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfqn;Lcom/google/android/gms/internal/ads/zzfqk;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrw;->q:Lcom/google/android/gms/internal/ads/zzfqn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrw;->r:Lcom/google/android/gms/internal/ads/zzfqk;

    return-void
.end method


# virtual methods
.method final c([Ljava/lang/Object;I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrw;->r:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqf;->c([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrw;->q:Lcom/google/android/gms/internal/ads/zzfqn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrw;->r:Lcom/google/android/gms/internal/ads/zzfqk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqk;->C(I)Lcom/google/android/gms/internal/ads/zzfsk;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrw;->r:Lcom/google/android/gms/internal/ads/zzfqk;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/zzfsj;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrw;->r:Lcom/google/android/gms/internal/ads/zzfqk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqk;->C(I)Lcom/google/android/gms/internal/ads/zzfsk;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrw;->q:Lcom/google/android/gms/internal/ads/zzfqn;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
