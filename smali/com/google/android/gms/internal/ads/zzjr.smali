###### Class com.google.android.gms.internal.ads.zzjr (com.google.android.gms.internal.ads.zzjr)
.class final Lcom/google/android/gms/internal/ads/zzjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzsq;

.field public final b:Ljava/lang/Object;

.field public final c:[Lcom/google/android/gms/internal/ads/zzuj;

.field public d:Z

.field public e:Z

.field public f:Lcom/google/android/gms/internal/ads/zzjs;

.field public g:Z

.field private final h:[Z

.field private final i:[Lcom/google/android/gms/internal/ads/zzko;

.field private final j:Lcom/google/android/gms/internal/ads/zzwk;

.field private final k:Lcom/google/android/gms/internal/ads/zzkg;

.field private l:Lcom/google/android/gms/internal/ads/zzjr;

.field private m:Lcom/google/android/gms/internal/ads/zzur;

.field private n:Lcom/google/android/gms/internal/ads/zzwl;

.field private o:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzko;JLcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzkg;Lcom/google/android/gms/internal/ads/zzjs;Lcom/google/android/gms/internal/ads/zzwl;[B)V
    .registers 18

    move-object v0, p0

    move-object v1, p6

    move-object v2, p7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzjr;->i:[Lcom/google/android/gms/internal/ads/zzko;

    move-wide v3, p2

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzjr;->o:J

    move-object v3, p4

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzjr;->j:Lcom/google/android/gms/internal/ads/zzwk;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjr;->k:Lcom/google/android/gms/internal/ads/zzkg;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzjr;->b:Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzur;->d:Lcom/google/android/gms/internal/ads/zzur;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzjr;->m:Lcom/google/android/gms/internal/ads/zzur;

    move-object/from16 v4, p8

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzjr;->n:Lcom/google/android/gms/internal/ads/zzwl;

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/google/android/gms/internal/ads/zzuj;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzjr;->c:[Lcom/google/android/gms/internal/ads/zzuj;

    new-array v4, v4, [Z

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzjr;->h:[Z

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzjs;->d:J

    move-object v2, p5

    .line 2
    invoke-virtual {p6, v3, p5, v4, v5}, Lcom/google/android/gms/internal/ads/zzkg;->o(Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzwt;J)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v2

    if-eqz v4, :cond_4a

    new-instance v2, Lcom/google/android/gms/internal/ads/zzrx;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object p1, v2

    move-object p2, v1

    move p3, v3

    move-wide p4, v4

    move-wide p6, v6

    invoke-direct/range {p1 .. p7}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzsq;ZJJ)V

    move-object v1, v2

    :cond_4a
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    return-void
.end method

.method private final s()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjr;->u()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->n:Lcom/google/android/gms/internal/ads/zzwl;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzwl;->a:I

    if-ge v0, v2, :cond_19

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzwl;->b(I)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->n:Lcom/google/android/gms/internal/ads/zzwl;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwl;->c:[Lcom/google/android/gms/internal/ads/zzwe;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method private final t()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjr;->u()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->n:Lcom/google/android/gms/internal/ads/zzwl;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzwl;->a:I

    if-ge v0, v2, :cond_19

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzwl;->b(I)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->n:Lcom/google/android/gms/internal/ads/zzwl;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwl;->c:[Lcom/google/android/gms/internal/ads/zzwe;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method private final u()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->l:Lcom/google/android/gms/internal/ads/zzjr;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzwl;JZ)J
    .registers 11

    const/4 p4, 0x2

    new-array v5, p4, [Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzjr;->b(Lcom/google/android/gms/internal/ads/zzwl;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzwl;JZ[Z)J
    .registers 20

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_4
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzwl;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1c

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjr;->h:[Z

    if-nez p4, :cond_16

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjr;->n:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-virtual {p1, v6, v3}, Lcom/google/android/gms/internal/ads/zzwl;->a(Lcom/google/android/gms/internal/ads/zzwl;I)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_17

    :cond_16
    const/4 v5, 0x0

    :goto_17
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjr;->i:[Lcom/google/android/gms/internal/ads/zzko;

    const/4 v6, 0x2

    if-ge v3, v6, :cond_2a

    .line 2
    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzko;->zzb()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 3
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjr;->s()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjr;->n:Lcom/google/android/gms/internal/ads/zzwl;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjr;->t()V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzwl;->c:[Lcom/google/android/gms/internal/ads/zzwe;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjr;->h:[Z

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjr;->c:[Lcom/google/android/gms/internal/ads/zzuj;

    move-object/from16 v11, p5

    move-wide/from16 v12, p2

    .line 5
    invoke-interface/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzsq;->j([Lcom/google/android/gms/internal/ads/zzwe;[Z[Lcom/google/android/gms/internal/ads/zzuj;[ZJ)J

    move-result-wide v3

    const/4 v7, 0x0

    :goto_43
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzjr;->i:[Lcom/google/android/gms/internal/ads/zzko;

    if-ge v7, v6, :cond_4f

    .line 6
    aget-object v8, v8, v7

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzko;->zzb()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    :cond_4f
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzjr;->e:Z

    const/4 v7, 0x0

    :goto_52
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzjr;->c:[Lcom/google/android/gms/internal/ads/zzuj;

    if-ge v7, v6, :cond_7a

    aget-object v8, v8, v7

    if-eqz v8, :cond_6b

    .line 7
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzwl;->b(I)Z

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzjr;->i:[Lcom/google/android/gms/internal/ads/zzko;

    aget-object v8, v8, v7

    .line 8
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzko;->zzb()I

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzjr;->e:Z

    goto :goto_77

    :cond_6b
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzwl;->c:[Lcom/google/android/gms/internal/ads/zzwe;

    .line 9
    aget-object v8, v8, v7

    if-nez v8, :cond_73

    const/4 v8, 0x1

    goto :goto_74

    :cond_73
    const/4 v8, 0x0

    :goto_74
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    :goto_77
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    :cond_7a
    return-wide v3
.end method

.method public final c()J
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->d:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    return-wide v0

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzb()J

    move-result-wide v3

    goto :goto_17

    :cond_16
    move-wide v3, v1

    :goto_17
    cmp-long v0, v3, v1

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    return-wide v0

    :cond_20
    return-wide v3
.end method

.method public final d()J
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->d:Z

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->o:J

    return-wide v0
.end method

.method public final f()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjr;->o:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzjr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->l:Lcom/google/android/gms/internal/ads/zzjr;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/zzur;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->m:Lcom/google/android/gms/internal/ads/zzur;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/zzwl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->n:Lcom/google/android/gms/internal/ads/zzwl;

    return-object v0
.end method

.method public final j(FLcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzwl;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->j:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->i:[Lcom/google/android/gms/internal/ads/zzko;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->m:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzwk;->d([Lcom/google/android/gms/internal/ads/zzko;Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzwl;->c:[Lcom/google/android/gms/internal/ads/zzwe;

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_19

    aget-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_19
    return-object p1
.end method

.method public final k(J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjr;->u()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->o:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->c(J)Z

    return-void
.end method

.method public final l(FLcom/google/android/gms/internal/ads/zzcn;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->f()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->m:Lcom/google/android/gms/internal/ads/zzur;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzjr;->j(FLcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 3
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    .line 4
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2b

    cmp-long p2, v0, v2

    if-ltz p2, :cond_2b

    const-wide/16 v0, 0x0

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_2b
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzjr;->a(Lcom/google/android/gms/internal/ads/zzwl;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->o:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 7
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    sub-long/2addr v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->o:J

    .line 8
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzjs;->b(J)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    return-void
.end method

.method public final m(J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjr;->u()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->d:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->o:J

    sub-long/2addr p1, v1

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->b(J)V

    :cond_13
    return-void
.end method

.method public final n()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjr;->s()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->k:Lcom/google/android/gms/internal/ads/zzkg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    :try_start_7
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzrx;

    if-eqz v2, :cond_13

    .line 3
    check-cast v1, Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzrx;->o:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzkg;->h(Lcom/google/android/gms/internal/ads/zzsq;)V

    return-void

    .line 4
    :cond_13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzkg;->h(Lcom/google/android/gms/internal/ads/zzsq;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/ads/zzjr;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->l:Lcom/google/android/gms/internal/ads/zzjr;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjr;->s()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->l:Lcom/google/android/gms/internal/ads/zzjr;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjr;->t()V

    return-void
.end method

.method public final p(J)V
    .registers 3

    const-wide p1, 0xe8d4a51000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->o:J

    return-void
.end method

.method public final q()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzrx;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 2
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzjs;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_15

    const-wide/high16 v1, -0x8000000000000000L

    .line 3
    :cond_15
    check-cast v0, Lcom/google/android/gms/internal/ads/zzrx;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzrx;->k(JJ)V

    :cond_1c
    return-void
.end method

.method public final r()Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->e:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzb()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return v1

    :cond_18
    :goto_18
    const/4 v1, 0x0

    :cond_19
    return v1
.end method
