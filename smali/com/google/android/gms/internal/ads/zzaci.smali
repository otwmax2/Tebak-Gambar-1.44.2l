###### Class com.google.android.gms.internal.ads.zzaci (com.google.android.gms.internal.ads.zzaci)
.class public final Lcom/google/android/gms/internal/ads/zzaci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzen;

.field private b:Lcom/google/android/gms/internal/ads/zzzx;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Lcom/google/android/gms/internal/ads/zzaef;

.field private h:Lcom/google/android/gms/internal/ads/zzzv;

.field private i:Lcom/google/android/gms/internal/ads/zzacl;

.field private j:Lcom/google/android/gms/internal/ads/zzagc;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->f:J

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/zzzv;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result p1

    return p1
.end method

.method private final c()V
    .registers 7

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbp;

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaci;->d([Lcom/google/android/gms/internal/ads/zzbp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->b:Lcom/google/android/gms/internal/ads/zzzx;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->b:Lcom/google/android/gms/internal/ads/zzzx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaw;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->c:I

    return-void
.end method

.method private final varargs d([Lcom/google/android/gms/internal/ads/zzbp;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->b:Lcom/google/android/gms/internal/ads/zzzx;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x400

    const/4 v2, 0x4

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    const-string v2, "image/jpeg"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzad;->h0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbq;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzbq;-><init>(J[Lcom/google/android/gms/internal/ads/zzbp;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzad;->m(Lcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzad;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaci;->b(Lcom/google/android/gms/internal/ads/zzzv;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_b

    return v1

    .line 2
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaci;->b(Lcom/google/android/gms/internal/ads/zzzv;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->d:I

    const v2, 0xffe0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzk;

    .line 4
    invoke-virtual {v2, v0, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaci;->b(Lcom/google/android/gms/internal/ads/zzzv;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->d:I

    :cond_39
    const v2, 0xffe1

    if-ne v0, v2, :cond_69

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 8
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x6

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966    # 5.758429993E-315

    cmp-long p1, v2, v4

    if-nez p1, :cond_69

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result p1

    if-nez p1, :cond_69

    const/4 p1, 0x1

    return p1

    :cond_69
    return v1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->c:I

    const/4 v4, 0x4

    const-wide/16 v5, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_18c

    if-eq v3, v8, :cond_16e

    const/4 v10, -0x1

    if-eq v3, v7, :cond_ac

    const/4 v5, 0x5

    if-eq v3, v4, :cond_4c

    if-eq v3, v5, :cond_24

    const/4 v1, 0x6

    if-ne v3, v1, :cond_1e

    return v10

    .line 2
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 4
    :cond_24
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->i:Lcom/google/android/gms/internal/ads/zzacl;

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->h:Lcom/google/android/gms/internal/ads/zzzv;

    if-eq v1, v3, :cond_37

    :cond_2c
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->h:Lcom/google/android/gms/internal/ads/zzzv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzacl;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaci;->f:J

    .line 5
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzacl;-><init>(Lcom/google/android/gms/internal/ads/zzzv;J)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->i:Lcom/google/android/gms/internal/ads/zzacl;

    :cond_37
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->j:Lcom/google/android/gms/internal/ads/zzagc;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->i:Lcom/google/android/gms/internal/ads/zzacl;

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzagc;->e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I

    move-result v1

    if-ne v1, v8, :cond_4b

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaci;->f:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    :cond_4b
    return v1

    .line 9
    :cond_4c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v3

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaci;->f:J

    cmp-long v10, v3, v6

    if-nez v10, :cond_a9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    .line 10
    invoke-interface {v1, v2, v9, v8, v8}, Lcom/google/android/gms/internal/ads/zzzv;->k([BIIZ)Z

    move-result v2

    if-nez v2, :cond_66

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaci;->c()V

    goto :goto_a8

    .line 12
    :cond_66
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->j:Lcom/google/android/gms/internal/ads/zzagc;

    if-nez v2, :cond_74

    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagc;

    .line 14
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzagc;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->j:Lcom/google/android/gms/internal/ads/zzagc;

    :cond_74
    new-instance v2, Lcom/google/android/gms/internal/ads/zzacl;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->f:J

    .line 15
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzacl;-><init>(Lcom/google/android/gms/internal/ads/zzzv;J)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->i:Lcom/google/android/gms/internal/ads/zzacl;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->j:Lcom/google/android/gms/internal/ads/zzagc;

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzagc;->a(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result v1

    if-eqz v1, :cond_a5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->j:Lcom/google/android/gms/internal/ads/zzagc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzacn;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->f:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaci;->b:Lcom/google/android/gms/internal/ads/zzzx;

    .line 17
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-direct {v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzacn;-><init>(JLcom/google/android/gms/internal/ads/zzzx;)V

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzagc;->g(Lcom/google/android/gms/internal/ads/zzzx;)V

    new-array v1, v8, [Lcom/google/android/gms/internal/ads/zzbp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->g:Lcom/google/android/gms/internal/ads/zzaef;

    .line 20
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, v1, v9

    .line 21
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->d([Lcom/google/android/gms/internal/ads/zzbp;)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaci;->c:I

    goto :goto_a8

    .line 22
    :cond_a5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaci;->c()V

    :goto_a8
    return v9

    :cond_a9
    iput-wide v6, v2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    return v8

    :cond_ac
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->d:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_163

    .line 23
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->e:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaci;->e:I

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzzk;

    .line 24
    invoke-virtual {v8, v3, v9, v4, v9}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->g:Lcom/google/android/gms/internal/ads/zzaef;

    if-nez v3, :cond_161

    .line 25
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzen;->D(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_161

    .line 27
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzen;->D(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_161

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v3

    cmp-long v8, v3, v5

    if-nez v8, :cond_e7

    :cond_e4
    :goto_e4
    const/4 v1, 0x0

    goto/16 :goto_159

    .line 28
    :cond_e7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaco;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzack;

    move-result-object v2

    if-nez v2, :cond_ee

    goto :goto_e4

    :cond_ee
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzack;->b:Ljava/util/List;

    .line 29
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v7, :cond_f7

    goto :goto_e4

    :cond_f7
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzack;->b:Ljava/util/List;

    .line 30
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v10

    move-wide v11, v5

    move-wide v13, v11

    move-wide/from16 v17, v13

    move-wide/from16 v19, v17

    const/4 v8, 0x0

    :goto_105
    if-ltz v7, :cond_13f

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzack;->b:Ljava/util/List;

    .line 31
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzacj;

    .line 32
    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzacj;->a:Ljava/lang/String;

    const-string v1, "video/mp4"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v8

    if-nez v7, :cond_120

    .line 33
    iget-wide v9, v10, Lcom/google/android/gms/internal/ads/zzacj;->d:J

    sub-long/2addr v3, v9

    const-wide/16 v8, 0x0

    goto :goto_124

    .line 34
    :cond_120
    iget-wide v8, v10, Lcom/google/android/gms/internal/ads/zzacj;->c:J

    sub-long v8, v3, v8

    :goto_124
    move-wide/from16 v21, v3

    move-wide v3, v8

    move-wide/from16 v8, v21

    if-eqz v1, :cond_134

    cmp-long v10, v3, v8

    if-eqz v10, :cond_134

    sub-long v19, v8, v3

    move-wide/from16 v17, v3

    const/4 v1, 0x0

    :cond_134
    if-nez v7, :cond_137

    move-wide v13, v8

    :cond_137
    if-nez v7, :cond_13a

    move-wide v11, v3

    :cond_13a
    add-int/lit8 v7, v7, -0x1

    move v8, v1

    const/4 v9, 0x0

    goto :goto_105

    :cond_13f
    cmp-long v1, v17, v5

    if-eqz v1, :cond_e4

    cmp-long v1, v19, v5

    if-eqz v1, :cond_e4

    cmp-long v1, v11, v5

    if-eqz v1, :cond_e4

    cmp-long v1, v13, v5

    if-nez v1, :cond_150

    goto :goto_e4

    :cond_150
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaef;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzack;->a:J

    move-object v10, v1

    move-wide v15, v2

    invoke-direct/range {v10 .. v20}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(JJJJJ)V

    .line 35
    :goto_159
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->g:Lcom/google/android/gms/internal/ads/zzaef;

    if-eqz v1, :cond_161

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzaef;->r:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->f:J

    :cond_161
    const/4 v3, 0x0

    goto :goto_16b

    .line 36
    :cond_163
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->e:I

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 38
    :goto_16b
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->c:I

    return v3

    :cond_16e
    const/4 v3, 0x0

    .line 39
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 40
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 41
    invoke-virtual {v1, v2, v3, v7, v3}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->e:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaci;->c:I

    return v3

    :cond_18c
    const/4 v3, 0x0

    .line 43
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 44
    invoke-virtual {v1, v2, v3, v7, v3}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->d:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1b7

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->f:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_1b3

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaci;->c:I

    goto :goto_1c8

    .line 46
    :cond_1b3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaci;->c()V

    goto :goto_1c8

    :cond_1b7
    const v2, 0xffd0

    if-lt v1, v2, :cond_1c1

    const v2, 0xffd9

    if-le v1, v2, :cond_1c8

    :cond_1c1
    const v2, 0xff01

    if-eq v1, v2, :cond_1c8

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaci;->c:I

    :cond_1c8
    :goto_1c8
    const/4 v1, 0x0

    return v1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->b:Lcom/google/android/gms/internal/ads/zzzx;

    return-void
.end method

.method public final h(JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->j:Lcom/google/android/gms/internal/ads/zzagc;

    return-void

    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->j:Lcom/google/android/gms/internal/ads/zzagc;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzagc;->h(JJ)V

    :cond_1a
    return-void
.end method
