###### Class com.google.android.gms.internal.ads.zztg (com.google.android.gms.internal.ads.zztg)
.class final Lcom/google/android/gms/internal/ads/zztg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsq;
.implements Lcom/google/android/gms/internal/ads/zzsp;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzsq;

.field private final p:J

.field private q:Lcom/google/android/gms/internal/ads/zzsp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsq;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    return-void
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/ads/zztg;)Lcom/google/android/gms/internal/ads/zzsq;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    return-object p0
.end method


# virtual methods
.method public final D(J)J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->D(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final a()J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->a()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    return-wide v2

    :cond_d
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->b(J)V

    return-void
.end method

.method public final c(J)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->d()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    return-wide v2

    :cond_10
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->q:Lcom/google/android/gms/internal/ads/zzsp;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzsp;->e(Lcom/google/android/gms/internal/ads/zzsq;)V

    return-void
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzur;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->f()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g(Lcom/google/android/gms/internal/ads/zzul;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzsq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->q:Lcom/google/android/gms/internal/ads/zzsp;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzuk;->g(Lcom/google/android/gms/internal/ads/zzul;)V

    return-void
.end method

.method public final h(JZ)V
    .registers 6

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzsq;->h(JZ)V

    return-void
.end method

.method public final i()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->i()V

    return-void
.end method

.method public final j([Lcom/google/android/gms/internal/ads/zzwe;[Z[Lcom/google/android/gms/internal/ads/zzuj;[ZJ)J
    .registers 19

    move-object v0, p0

    move-object v1, p3

    .line 1
    array-length v2, v1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzuj;

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_7
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1a

    aget-object v4, v1, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzth;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzth;->c()Lcom/google/android/gms/internal/ads/zzuj;

    move-result-object v11

    .line 2
    :cond_15
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    sub-long v8, p5, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    .line 3
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzsq;->j([Lcom/google/android/gms/internal/ads/zzwe;[Z[Lcom/google/android/gms/internal/ads/zzuj;[ZJ)J

    move-result-wide v3

    :goto_29
    array-length v5, v1

    if-ge v10, v5, :cond_4b

    .line 4
    aget-object v5, v2, v10

    if-nez v5, :cond_33

    .line 5
    aput-object v11, v1, v10

    goto :goto_48

    .line 6
    :cond_33
    aget-object v6, v1, v10

    if-eqz v6, :cond_3f

    check-cast v6, Lcom/google/android/gms/internal/ads/zzth;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzth;->c()Lcom/google/android/gms/internal/ads/zzuj;

    move-result-object v6

    if-eq v6, v5, :cond_48

    :cond_3f
    new-instance v6, Lcom/google/android/gms/internal/ads/zzth;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    invoke-direct {v6, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzth;-><init>(Lcom/google/android/gms/internal/ads/zzuj;J)V

    .line 7
    aput-object v6, v1, v10

    :cond_48
    :goto_48
    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    :cond_4b
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method public final m(Lcom/google/android/gms/internal/ads/zzsp;J)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->q:Lcom/google/android/gms/internal/ads/zzsp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    sub-long/2addr p2, v0

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzsq;->m(Lcom/google/android/gms/internal/ads/zzsp;J)V

    return-void
.end method

.method public final n()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->n()Z

    move-result v0

    return v0
.end method

.method public final o(JLcom/google/android/gms/internal/ads/zzkq;)J
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsq;->o(JLcom/google/android/gms/internal/ads/zzkq;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final zzb()J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzb()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    return-wide v2

    :cond_d
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zztg;->p:J

    add-long/2addr v0, v2

    return-wide v0
.end method
