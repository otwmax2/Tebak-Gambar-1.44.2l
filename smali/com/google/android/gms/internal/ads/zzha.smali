###### Class com.google.android.gms.internal.ads.zzha (com.google.android.gms.internal.ads.zzha)
.class public abstract Lcom/google/android/gms/internal/ads/zzha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkn;
.implements Lcom/google/android/gms/internal/ads/zzko;


# instance fields
.field private final o:I

.field private final p:Lcom/google/android/gms/internal/ads/zzjo;

.field private q:Lcom/google/android/gms/internal/ads/zzkp;

.field private r:I

.field private s:Lcom/google/android/gms/internal/ads/zzno;

.field private t:I

.field private u:Lcom/google/android/gms/internal/ads/zzuj;

.field private v:[Lcom/google/android/gms/internal/ads/zzaf;

.field private w:J

.field private x:J

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzha;->o:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzjo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzjo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzha;->p:Lcom/google/android/gms/internal/ads/zzjo;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzha;->x:J

    return-void
.end method

.method private final v(JZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzha;->y:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzha;->x:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzha;->F(JZ)V

    return-void
.end method


# virtual methods
.method protected final A()Lcom/google/android/gms/internal/ads/zzkp;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->q:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final B()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzha;->t:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->p:Lcom/google/android/gms/internal/ads/zzjo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjo;->b:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->G()V

    return-void
.end method

.method protected final C()Lcom/google/android/gms/internal/ads/zzno;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->s:Lcom/google/android/gms/internal/ads/zzno;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected D()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method protected E(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    return-void
.end method

.method protected F(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected G()V
    .registers 1

    return-void
.end method

.method public final H()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzha;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzha;->t:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->I()V

    return-void
.end method

.method protected I()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    return-void
.end method

.method protected K()V
    .registers 1

    return-void
.end method

.method public final L()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzha;->t:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzha;->t:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->K()V

    return-void
.end method

.method protected M([Lcom/google/android/gms/internal/ads/zzaf;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final V()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzha;->x:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzha;->x:J

    return-wide v0
.end method

.method public final d(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzha;->v(JZ)V

    return-void
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzha;->t:I

    return v0
.end method

.method public final f0()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzha;->y:Z

    return-void
.end method

.method public g()Lcom/google/android/gms/internal/ads/zzjq;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/zzko;
    .registers 1

    return-object p0
.end method

.method public final h0()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzha;->y:Z

    return v0
.end method

.method public synthetic i(FF)V
    .registers 3

    return-void
.end method

.method public final k()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzha;->t:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->p:Lcom/google/android/gms/internal/ads/zzjo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjo;->b:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzha;->t:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzha;->u:Lcom/google/android/gms/internal/ads/zzuj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzha;->v:[Lcom/google/android/gms/internal/ads/zzaf;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzha;->y:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->D()V

    return-void
.end method

.method public final l()Lcom/google/android/gms/internal/ads/zzuj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->u:Lcom/google/android/gms/internal/ads/zzuj;

    return-object v0
.end method

.method public final m([Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzuj;JJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzha;->y:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzha;->u:Lcom/google/android/gms/internal/ads/zzuj;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzha;->x:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_13

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzha;->x:J

    :cond_13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzha;->v:[Lcom/google/android/gms/internal/ads/zzaf;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzha;->w:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzha;->M([Lcom/google/android/gms/internal/ads/zzaf;JJ)V

    return-void
.end method

.method public n(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/ads/zzkp;[Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzuj;JZZJJ)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    move-object v7, p0

    move v8, p6

    .line 1
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzha;->t:I

    const/4 v1, 0x1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    move-object v0, p1

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzha;->q:Lcom/google/android/gms/internal/ads/zzkp;

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzha;->t:I

    move/from16 v0, p7

    .line 2
    invoke-virtual {p0, p6, v0}, Lcom/google/android/gms/internal/ads/zzha;->E(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzha;->m([Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzuj;JJ)V

    move-wide v0, p4

    .line 4
    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzha;->v(JZ)V

    return-void
.end method

.method public final p()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->u:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuj;->d()V

    return-void
.end method

.method public final r(ILcom/google/android/gms/internal/ads/zzno;)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzha;->r:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzha;->s:Lcom/google/android/gms/internal/ads/zzno;

    return-void
.end method

.method protected final t()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->V()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzha;->y:Z

    goto :goto_12

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->u:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuj;->b()Z

    move-result v0

    :goto_12
    return v0
.end method

.method protected final u()[Lcom/google/android/gms/internal/ads/zzaf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->v:[Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final w(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->u:Lcom/google/android/gms/internal/ads/zzuj;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzuj;->a(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2d

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgl;->g()Z

    move-result p1

    if-eqz p1, :cond_1d

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzha;->x:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzha;->y:Z

    if-eqz p1, :cond_1b

    return v0

    :cond_1b
    const/4 p1, -0x3

    return p1

    :cond_1d
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzha;->w:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzha;->x:J

    .line 4
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzha;->x:J

    goto :goto_51

    :cond_2d
    const/4 p2, -0x5

    if-ne p3, p2, :cond_51

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaf;->p:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_51

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaf;->b()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzha;->w:J

    add-long/2addr v1, v3

    .line 8
    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzad;->w(J)Lcom/google/android/gms/internal/ads/zzad;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    return p2

    :cond_51
    :goto_51
    return p3
.end method

.method protected final x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;
    .registers 14

    const/4 v0, 0x4

    if-eqz p2, :cond_1b

    .line 1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzha;->z:Z

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzha;->z:Z

    const/4 v1, 0x0

    :try_start_b
    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzko;->j(Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v0
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzhj; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_15

    and-int/lit8 v0, v0, 0x7

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzha;->z:Z

    move v6, v0

    goto :goto_1c

    :catchall_15
    move-exception p1

    .line 2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzha;->z:Z

    .line 3
    throw p1

    :catch_19
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzha;->z:Z

    :cond_1b
    const/4 v6, 0x4

    .line 4
    :goto_1c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzkn;->s()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzha;->r:I

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzhj;->b(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzaf;IZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object p1

    return-object p1
.end method

.method protected final y(J)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->u:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzha;->w:J

    sub-long/2addr p1, v1

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuj;->W(J)I

    move-result p1

    return p1
.end method

.method protected final z()Lcom/google/android/gms/internal/ads/zzjo;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzha;->p:Lcom/google/android/gms/internal/ads/zzjo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjo;->b:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    return-object v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzha;->o:I

    return v0
.end method
