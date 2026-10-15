###### Class com.google.android.gms.internal.ads.zzfpq (com.google.android.gms.internal.ads.zzfpq)
.class abstract Lcom/google/android/gms/internal/ads/zzfpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field o:I

.field p:I

.field q:I

.field final synthetic r:Lcom/google/android/gms/internal/ads/zzfpu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfpu;Lcom/google/android/gms/internal/ads/zzfpm;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpq;->r:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpu;->a(Lcom/google/android/gms/internal/ads/zzfpu;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfpq;->o:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpu;->e()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfpq;->p:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfpq;->q:I

    return-void
.end method

.method private final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpq;->r:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->a(Lcom/google/android/gms/internal/ads/zzfpu;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfpq;->o:I

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpq;->p:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpq;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpq;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpq;->p:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfpq;->q:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfpq;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpq;->r:Lcom/google/android/gms/internal/ads/zzfpu;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfpq;->p:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfpu;->f(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfpq;->p:I

    return-object v0

    .line 4
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 5
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpq;->b()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpq;->q:I

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "no calls to next() since the last call to remove()"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnu;->i(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpq;->o:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfpq;->o:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpq;->r:Lcom/google/android/gms/internal/ads/zzfpu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfpq;->q:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    aget-object v1, v2, v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfpu;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfpq;->p:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfpq;->p:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfpq;->q:I

    return-void
.end method
