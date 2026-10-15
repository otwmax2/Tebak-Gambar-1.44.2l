###### Class com.google.android.gms.internal.ads.zzsk (com.google.android.gms.internal.ads.zzsk)
.class public final Lcom/google/android/gms/internal/ads/zzsk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsq;
.implements Lcom/google/android/gms/internal/ads/zzsp;


# instance fields
.field public final o:Lcom/google/android/gms/internal/ads/zzss;

.field private final p:J

.field private q:Lcom/google/android/gms/internal/ads/zzsu;

.field private r:Lcom/google/android/gms/internal/ads/zzsq;

.field private s:Lcom/google/android/gms/internal/ads/zzsp;

.field private t:J

.field private final u:Lcom/google/android/gms/internal/ads/zzwt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzwt;J[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->o:Lcom/google/android/gms/internal/ads/zzss;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsk;->u:Lcom/google/android/gms/internal/ads/zzwt;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsk;->p:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->t:J

    return-void
.end method

.method private final t(J)J
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->t:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    return-wide v0

    :cond_c
    return-wide p1
.end method


# virtual methods
.method public final D(J)J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->D(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->b(J)V

    return-void
.end method

.method public final c(J)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->c(J)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final d()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->s:Lcom/google/android/gms/internal/ads/zzsp;

    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzsp;->e(Lcom/google/android/gms/internal/ads/zzsq;)V

    return-void
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzur;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->f()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g(Lcom/google/android/gms/internal/ads/zzul;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzsq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->s:Lcom/google/android/gms/internal/ads/zzsp;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzuk;->g(Lcom/google/android/gms/internal/ads/zzul;)V

    return-void
.end method

.method public final h(JZ)V
    .registers 5

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

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
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->i()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->q:Lcom/google/android/gms/internal/ads/zzsu;

    if-eqz v0, :cond_f

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsu;->E()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    return-void

    :catch_10
    move-exception v0

    .line 3
    throw v0
.end method

.method public final j([Lcom/google/android/gms/internal/ads/zzwe;[Z[Lcom/google/android/gms/internal/ads/zzuj;[ZJ)J
    .registers 22

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzsk;->t:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_16

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzsk;->p:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_16

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzsk;->t:J

    move-wide v13, v1

    goto :goto_18

    :cond_16
    move-wide/from16 v13, p5

    :goto_18
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 2
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzsq;->j([Lcom/google/android/gms/internal/ads/zzwe;[Z[Lcom/google/android/gms/internal/ads/zzuj;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final k()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->t:J

    return-wide v0
.end method

.method public final l()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->p:J

    return-wide v0
.end method

.method public final m(Lcom/google/android/gms/internal/ads/zzsp;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->s:Lcom/google/android/gms/internal/ads/zzsp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz p1, :cond_f

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzsk;->p:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzsk;->t(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzsq;->m(Lcom/google/android/gms/internal/ads/zzsp;J)V

    :cond_f
    return-void
.end method

.method public final n()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->n()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final o(JLcom/google/android/gms/internal/ads/zzkq;)J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsq;->o(JLcom/google/android/gms/internal/ads/zzkq;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzss;)V
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->p:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzsk;->t(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->q:Lcom/google/android/gms/internal/ads/zzsu;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsk;->u:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzsu;->i(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzwt;J)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->s:Lcom/google/android/gms/internal/ads/zzsp;

    if-eqz v2, :cond_1a

    .line 4
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzsq;->m(Lcom/google/android/gms/internal/ads/zzsp;J)V

    :cond_1a
    return-void
.end method

.method public final q(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->t:J

    return-void
.end method

.method public final r()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsk;->q:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzsu;->a(Lcom/google/android/gms/internal/ads/zzsq;)V

    :cond_c
    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzsu;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->q:Lcom/google/android/gms/internal/ads/zzsu;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->q:Lcom/google/android/gms/internal/ads/zzsu;

    return-void
.end method

.method public final zzb()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->r:Lcom/google/android/gms/internal/ads/zzsq;

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzb()J

    move-result-wide v0

    return-wide v0
.end method
