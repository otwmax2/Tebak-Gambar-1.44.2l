###### Class com.google.android.gms.internal.ads.zzfai (com.google.android.gms.internal.ads.zzfai)
.class final Lcom/google/android/gms/internal/ads/zzfai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/gms/internal/ads/zzfbh;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->a:Ljava/util/LinkedList;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfai;->b:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfai;->c:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbh;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfbh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfai;->d:Lcom/google/android/gms/internal/ads/zzfbh;

    return-void
.end method

.method private final i()V
    .registers 6

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->a:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfas;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzfas;->d:J

    sub-long/2addr v1, v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->c:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->d:Lcom/google/android/gms/internal/ads/zzfbh;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbh;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->a:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_2d
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->d:Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbh;->a()I

    move-result v0

    return v0
.end method

.method public final b()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfai;->i()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->a:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final c()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->d:Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbh;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->d:Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbh;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzfas;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->d:Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbh;->f()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfai;->i()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->a:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->a:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfas;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfai;->d:Lcom/google/android/gms/internal/ads/zzfbh;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfbh;->h()V

    :cond_21
    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzfbg;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->d:Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbh;->d()Lcom/google/android/gms/internal/ads/zzfbg;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->d:Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbh;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzfas;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->d:Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbh;->f()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfai;->i()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->a:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfai;->b:I

    if-ne v0, v1, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfai;->a:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
