###### Class com.google.android.gms.internal.ads.zzahw (com.google.android.gms.internal.ads.zzahw)
.class public final Lcom/google/android/gms/internal/ads/zzahw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaio;

.field private final b:Lcom/google/android/gms/internal/ads/zzaic;

.field private final c:Lcom/google/android/gms/internal/ads/zzaic;

.field private final d:Lcom/google/android/gms/internal/ads/zzaic;

.field private e:J

.field private final f:[Z

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/internal/ads/zzabb;

.field private i:Lcom/google/android/gms/internal/ads/zzahv;

.field private j:Z

.field private k:J

.field private l:Z

.field private final m:Lcom/google/android/gms/internal/ads/zzen;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaio;ZZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->a:Lcom/google/android/gms/internal/ads/zzaio;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->f:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaic;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaic;

    const/16 p2, 0x8

    .line 2
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaic;

    const/4 p2, 0x6

    .line 3
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->d:Lcom/google/android/gms/internal/ads/zzaic;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->k:J

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->m:Lcom/google/android/gms/internal/ads/zzen;

    return-void
.end method

.method private final f([BII)V
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->j:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->d:Lcom/google/android/gms/internal/ads/zzaic;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->l:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->k:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->f:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaar;->e([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->d:Lcom/google/android/gms/internal/ads/zzaic;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->i:Lcom/google/android/gms/internal/ads/zzahv;

    if-eqz v0, :cond_29

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahv;->c()V

    :cond_29
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->h:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahw;->e:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahw;->e:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahw;->h:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v5

    move-object/from16 v6, p1

    .line 3
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    :goto_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahw;->f:[Z

    .line 4
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaar;->a([BII[Z)I

    move-result v4

    if-eq v4, v2, :cond_185

    add-int/lit8 v5, v4, 0x3

    .line 5
    aget-byte v6, v3, v5

    and-int/lit8 v10, v6, 0x1f

    sub-int v6, v4, v1

    if-lez v6, :cond_3f

    .line 6
    invoke-direct {v0, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzahw;->f([BII)V

    :cond_3f
    sub-int v14, v2, v4

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzahw;->e:J

    int-to-long v11, v14

    sub-long v17, v7, v11

    if-gez v6, :cond_4a

    neg-int v4, v6

    goto :goto_4b

    :cond_4a
    const/4 v4, 0x0

    :goto_4b
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahw;->k:J

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzahw;->j:Z

    const/4 v9, 0x4

    if-eqz v8, :cond_54

    goto/16 :goto_12b

    .line 7
    :cond_54
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    .line 8
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzaic;->d(I)Z

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    .line 9
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzaic;->d(I)Z

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzahw;->j:Z

    if-nez v8, :cond_f4

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaic;->e()Z

    move-result v8

    if-eqz v8, :cond_12b

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaic;->e()Z

    move-result v8

    if-eqz v8, :cond_12b

    new-instance v8, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 11
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 12
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 13
    invoke-static {v12, v9, v11}, Lcom/google/android/gms/internal/ads/zzaar;->d([BII)Lcom/google/android/gms/internal/ads/zzaaq;

    move-result-object v11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 14
    invoke-static {v13, v9, v12}, Lcom/google/android/gms/internal/ads/zzaar;->c([BII)Lcom/google/android/gms/internal/ads/zzaap;

    move-result-object v12

    iget v13, v11, Lcom/google/android/gms/internal/ads/zzaaq;->a:I

    iget v15, v11, Lcom/google/android/gms/internal/ads/zzaaq;->b:I

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzaaq;->c:I

    .line 15
    invoke-static {v13, v15, v1}, Lcom/google/android/gms/internal/ads/zzdn;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahw;->h:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahw;->g:Ljava/lang/String;

    .line 16
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string v9, "video/avc"

    .line 17
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 18
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzad;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzaaq;->e:I

    .line 19
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzad;->x(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzaaq;->f:I

    .line 20
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzad;->f(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzaaq;->g:F

    .line 21
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzad;->p(F)Lcom/google/android/gms/internal/ads/zzad;

    .line 22
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    .line 23
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v1

    .line 24
    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->j:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->i:Lcom/google/android/gms/internal/ads/zzahv;

    .line 25
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzahv;->b(Lcom/google/android/gms/internal/ads/zzaaq;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->i:Lcom/google/android/gms/internal/ads/zzahv;

    .line 26
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzahv;->a(Lcom/google/android/gms/internal/ads/zzaap;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    goto :goto_12b

    :cond_f4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaic;->e()Z

    move-result v8

    if-eqz v8, :cond_110

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    const/4 v9, 0x4

    .line 29
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzaar;->d([BII)Lcom/google/android/gms/internal/ads/zzaaq;

    move-result-object v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahw;->i:Lcom/google/android/gms/internal/ads/zzahv;

    .line 30
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzahv;->b(Lcom/google/android/gms/internal/ads/zzaaq;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    goto :goto_12b

    :cond_110
    const/4 v9, 0x4

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaic;->e()Z

    move-result v8

    if-eqz v8, :cond_12b

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 32
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzaar;->c([BII)Lcom/google/android/gms/internal/ads/zzaap;

    move-result-object v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahw;->i:Lcom/google/android/gms/internal/ads/zzahv;

    .line 33
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzahv;->a(Lcom/google/android/gms/internal/ads/zzaap;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    .line 35
    :cond_12b
    :goto_12b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->d:Lcom/google/android/gms/internal/ads/zzaic;

    .line 36
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaic;->d(I)Z

    move-result v1

    if-eqz v1, :cond_153

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->d:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 37
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzaar;->b([BI)I

    move-result v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahw;->m:Lcom/google/android/gms/internal/ads/zzen;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahw;->d:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    .line 38
    invoke-virtual {v4, v8, v1}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->m:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v4, 0x4

    .line 39
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->a:Lcom/google/android/gms/internal/ads/zzaio;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahw;->m:Lcom/google/android/gms/internal/ads/zzen;

    .line 40
    invoke-virtual {v1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzaio;->a(JLcom/google/android/gms/internal/ads/zzen;)V

    :cond_153
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzahw;->i:Lcom/google/android/gms/internal/ads/zzahv;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzahw;->j:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->l:Z

    move-wide/from16 v12, v17

    move/from16 v16, v1

    .line 41
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzahv;->e(JIZZ)Z

    move-result v1

    if-eqz v1, :cond_166

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->l:Z

    :cond_166
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzahw;->k:J

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->j:Z

    if-nez v1, :cond_176

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:Lcom/google/android/gms/internal/ads/zzaic;

    .line 42
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzaic;->c(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lcom/google/android/gms/internal/ads/zzaic;

    .line 43
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzaic;->c(I)V

    :cond_176
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->d:Lcom/google/android/gms/internal/ads/zzaic;

    .line 44
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzaic;->c(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzahw;->i:Lcom/google/android/gms/internal/ads/zzahv;

    move-wide/from16 v8, v17

    .line 45
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzahv;->d(JIJ)V

    move v1, v5

    goto/16 :goto_2a

    .line 46
    :cond_185
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzahw;->f([BII)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->g:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->h:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzahv;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzahv;-><init>(Lcom/google/android/gms/internal/ads/zzabb;ZZ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzahw;->i:Lcom/google/android/gms/internal/ads/zzahv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->a:Lcom/google/android/gms/internal/ads/zzaio;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaio;->b(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V

    return-void
.end method

.method public final e(JI)V
    .registers 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->k:J

    :cond_b
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->l:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->l:Z

    return-void
.end method
