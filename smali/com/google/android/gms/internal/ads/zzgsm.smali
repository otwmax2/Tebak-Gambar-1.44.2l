###### Class com.google.android.gms.internal.ads.zzgsm (com.google.android.gms.internal.ads.zzgsm)
.class final Lcom/google/android/gms/internal/ads/zzgsm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final o:Ljava/util/ArrayDeque;

.field private p:Lcom/google/android/gms/internal/ads/zzgoz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgsl;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzgso;

    if-eqz p2, :cond_22

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgso;

    new-instance p2, Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgso;->q()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgsm;->o:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgso;->T(Lcom/google/android/gms/internal/ads/zzgso;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgsm;->b(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsm;->p:Lcom/google/android/gms/internal/ads/zzgoz;

    return-void

    :cond_22
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgsm;->o:Ljava/util/ArrayDeque;

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgoz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsm;->p:Lcom/google/android/gms/internal/ads/zzgoz;

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgoz;
    .registers 3

    .line 1
    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgso;

    if-eqz v0, :cond_10

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgso;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsm;->o:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgso;->T(Lcom/google/android/gms/internal/ads/zzgso;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgoz;

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzgoz;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsm;->p:Lcom/google/android/gms/internal/ads/zzgoz;

    if-eqz v0, :cond_29

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsm;->o:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_26

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsm;->o:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgso;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgso;->P(Lcom/google/android/gms/internal/ads/zzgso;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgsm;->b(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->j()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5
    :cond_26
    :goto_26
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgsm;->p:Lcom/google/android/gms/internal/ads/zzgoz;

    return-object v0

    .line 6
    :cond_29
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_30

    :goto_2f
    throw v0

    :goto_30
    goto :goto_2f
.end method

.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsm;->p:Lcom/google/android/gms/internal/ads/zzgoz;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsm;->a()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
