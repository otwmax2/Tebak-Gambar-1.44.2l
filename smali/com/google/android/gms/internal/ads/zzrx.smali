###### Class com.google.android.gms.internal.ads.zzrx (com.google.android.gms.internal.ads.zzrx)
.class public final Lcom/google/android/gms/internal/ads/zzrx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsq;
.implements Lcom/google/android/gms/internal/ads/zzsp;


# instance fields
.field public final o:Lcom/google/android/gms/internal/ads/zzsq;

.field private p:Lcom/google/android/gms/internal/ads/zzsp;

.field private q:[Lcom/google/android/gms/internal/ads/zzrw;

.field private r:J

.field s:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsq;ZJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzrw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->q:[Lcom/google/android/gms/internal/ads/zzrw;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->r:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzrx;->s:J

    return-void
.end method


# virtual methods
.method public final D(J)J
    .registers 10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->r:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->q:[Lcom/google/android/gms/internal/ads/zzrw;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    if-eqz v4, :cond_15

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzrw;->c()V

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->D(J)J

    move-result-wide v0

    const/4 v3, 0x1

    cmp-long v4, v0, p1

    if-eqz v4, :cond_35

    const-wide/16 p1, 0x0

    cmp-long v4, v0, p1

    if-ltz v4, :cond_36

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->s:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_35

    cmp-long v4, v0, p1

    if-gtz v4, :cond_36

    :cond_35
    const/4 v2, 0x1

    .line 4
    :cond_36
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    return-wide v0
.end method

.method public final a()J
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->a()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzrx;->s:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17

    goto :goto_18

    :cond_17
    return-wide v0

    :cond_18
    :goto_18
    return-wide v2
.end method

.method public final b(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->b(J)V

    return-void
.end method

.method public final c(J)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrx;->l()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_19

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzrx;->r:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrx;->r:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrx;->d()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_18

    return-wide v5

    :cond_18
    return-wide v3

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->d()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_24

    return-wide v1

    :cond_24
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    cmp-long v6, v3, v0

    if-ltz v6, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 3
    :goto_2f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->s:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_3e

    cmp-long v6, v3, v0

    if-gtz v6, :cond_3f

    :cond_3e
    const/4 v2, 0x1

    .line 4
    :cond_3f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    return-wide v3
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->p:Lcom/google/android/gms/internal/ads/zzsp;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzsp;->e(Lcom/google/android/gms/internal/ads/zzsq;)V

    return-void
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzur;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->f()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g(Lcom/google/android/gms/internal/ads/zzul;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzsq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->p:Lcom/google/android/gms/internal/ads/zzsp;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzuk;->g(Lcom/google/android/gms/internal/ads/zzul;)V

    return-void
.end method

.method public final h(JZ)V
    .registers 5

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->i()V

    return-void
.end method

.method public final j([Lcom/google/android/gms/internal/ads/zzwe;[Z[Lcom/google/android/gms/internal/ads/zzuj;[ZJ)J
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p3

    .line 1
    array-length v2, v1

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzrw;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzrx;->q:[Lcom/google/android/gms/internal/ads/zzrw;

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzuj;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    array-length v5, v1

    const/4 v11, 0x0

    if-ge v4, v5, :cond_21

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzrx;->q:[Lcom/google/android/gms/internal/ads/zzrw;

    aget-object v6, v1, v4

    check-cast v6, Lcom/google/android/gms/internal/ads/zzrw;

    aput-object v6, v5, v4

    if-eqz v6, :cond_1c

    iget-object v11, v6, Lcom/google/android/gms/internal/ads/zzrw;->a:Lcom/google/android/gms/internal/ads/zzuj;

    .line 2
    :cond_1c
    aput-object v11, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_21
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    move-object v5, p1

    move-object/from16 v6, p2

    move-object v7, v2

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    .line 3
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsq;->j([Lcom/google/android/gms/internal/ads/zzwe;[Z[Lcom/google/android/gms/internal/ads/zzuj;[ZJ)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrx;->l()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_3d

    cmp-long v6, p5, v7

    if-nez v6, :cond_3d

    move-wide v9, v7

    goto :goto_3f

    :cond_3d
    move-wide/from16 v9, p5

    :goto_3f
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzrx;->r:J

    const/4 v6, 0x1

    cmp-long v12, v4, v9

    if-eqz v12, :cond_5d

    cmp-long v9, v4, v7

    if-ltz v9, :cond_5c

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzrx;->s:J

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v12, v7, v9

    if-eqz v12, :cond_5d

    cmp-long v9, v4, v7

    if-gtz v9, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v6, 0x0

    .line 4
    :cond_5d
    :goto_5d
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    :goto_60
    array-length v6, v1

    if-ge v3, v6, :cond_86

    .line 5
    aget-object v6, v2, v3

    if-nez v6, :cond_6c

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzrx;->q:[Lcom/google/android/gms/internal/ads/zzrw;

    .line 6
    aput-object v11, v6, v3

    goto :goto_7d

    .line 7
    :cond_6c
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzrx;->q:[Lcom/google/android/gms/internal/ads/zzrw;

    .line 8
    aget-object v8, v7, v3

    if-eqz v8, :cond_76

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzrw;->a:Lcom/google/android/gms/internal/ads/zzuj;

    if-eq v8, v6, :cond_7d

    :cond_76
    new-instance v8, Lcom/google/android/gms/internal/ads/zzrw;

    invoke-direct {v8, p0, v6}, Lcom/google/android/gms/internal/ads/zzrw;-><init>(Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzuj;)V

    .line 9
    aput-object v8, v7, v3

    .line 10
    :cond_7d
    :goto_7d
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzrx;->q:[Lcom/google/android/gms/internal/ads/zzrw;

    .line 11
    aget-object v6, v6, v3

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    :cond_86
    return-wide v4
.end method

.method public final k(JJ)V
    .registers 5

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzrx;->s:J

    return-void
.end method

.method final l()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->r:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final m(Lcom/google/android/gms/internal/ads/zzsp;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->p:Lcom/google/android/gms/internal/ads/zzsp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzsq;->m(Lcom/google/android/gms/internal/ads/zzsp;J)V

    return-void
.end method

.method public final n()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->n()Z

    move-result v0

    return v0
.end method

.method public final o(JLcom/google/android/gms/internal/ads/zzkq;)J
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3f

    .line 1
    iget-wide v3, p3, Lcom/google/android/gms/internal/ads/zzkq;->a:J

    const-wide/16 v5, 0x0

    move-wide v7, p1

    .line 2
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzew;->c0(JJJ)J

    move-result-wide v0

    .line 3
    iget-wide v2, p3, Lcom/google/android/gms/internal/ads/zzkq;->b:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzrx;->s:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_1f

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_20

    :cond_1f
    sub-long/2addr v4, p1

    :goto_20
    move-wide v6, v4

    const-wide/16 v4, 0x0

    .line 4
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzew;->c0(JJJ)J

    move-result-wide v2

    .line 5
    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/zzkq;->a:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_33

    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/zzkq;->b:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_38

    :cond_33
    new-instance p3, Lcom/google/android/gms/internal/ads/zzkq;

    .line 6
    invoke-direct {p3, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzkq;-><init>(JJ)V

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsq;->o(JLcom/google/android/gms/internal/ads/zzkq;)J

    move-result-wide p1

    return-wide p1

    :cond_3f
    return-wide v0
.end method

.method public final zzb()J
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzb()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzrx;->s:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17

    goto :goto_18

    :cond_17
    return-wide v0

    :cond_18
    :goto_18
    return-wide v2
.end method
