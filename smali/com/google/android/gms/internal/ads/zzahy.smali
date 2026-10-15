###### Class com.google.android.gms.internal.ads.zzahy (com.google.android.gms.internal.ads.zzahy)
.class public final Lcom/google/android/gms/internal/ads/zzahy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaio;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/internal/ads/zzabb;

.field private d:Lcom/google/android/gms/internal/ads/zzahx;

.field private e:Z

.field private final f:[Z

.field private final g:Lcom/google/android/gms/internal/ads/zzaic;

.field private final h:Lcom/google/android/gms/internal/ads/zzaic;

.field private final i:Lcom/google/android/gms/internal/ads/zzaic;

.field private final j:Lcom/google/android/gms/internal/ads/zzaic;

.field private final k:Lcom/google/android/gms/internal/ads/zzaic;

.field private l:J

.field private m:J

.field private final n:Lcom/google/android/gms/internal/ads/zzen;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaio;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->a:Lcom/google/android/gms/internal/ads/zzaio;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->f:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaic;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->g:Lcom/google/android/gms/internal/ads/zzaic;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaic;

    const/16 v0, 0x21

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->h:Lcom/google/android/gms/internal/ads/zzaic;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaic;

    const/16 v0, 0x22

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->i:Lcom/google/android/gms/internal/ads/zzaic;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaic;

    const/16 v0, 0x27

    .line 4
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->j:Lcom/google/android/gms/internal/ads/zzaic;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaic;

    const/16 v0, 0x28

    .line 5
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->k:Lcom/google/android/gms/internal/ads/zzaic;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->m:J

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->n:Lcom/google/android/gms/internal/ads/zzen;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->d:Lcom/google/android/gms/internal/ads/zzahx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzahx;->b([BII)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->e:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->g:Lcom/google/android/gms/internal/ads/zzaic;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->h:Lcom/google/android/gms/internal/ads/zzaic;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->i:Lcom/google/android/gms/internal/ads/zzaic;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->j:Lcom/google/android/gms/internal/ads/zzaic;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->k:Lcom/google/android/gms/internal/ads/zzaic;

    .line 6
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
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->m:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->f:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaar;->e([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->g:Lcom/google/android/gms/internal/ads/zzaic;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->h:Lcom/google/android/gms/internal/ads/zzaic;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->i:Lcom/google/android/gms/internal/ads/zzaic;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->j:Lcom/google/android/gms/internal/ads/zzaic;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->k:Lcom/google/android/gms/internal/ads/zzaic;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->d:Lcom/google/android/gms/internal/ads/zzahx;

    if-eqz v0, :cond_30

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahx;->c()V

    :cond_30
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 39

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->c:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v1

    if-lez v1, :cond_3cb

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahy;->l:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahy;->l:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahy;->c:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v5

    move-object/from16 v6, p1

    .line 3
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    :goto_30
    if-ge v1, v2, :cond_9

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahy;->f:[Z

    .line 4
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaar;->a([BII[Z)I

    move-result v4

    if-eq v4, v2, :cond_3c8

    add-int/lit8 v5, v4, 0x3

    .line 5
    aget-byte v7, v3, v5

    and-int/lit8 v7, v7, 0x7e

    sub-int v8, v4, v1

    if-lez v8, :cond_47

    .line 6
    invoke-direct {v0, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzahy;->f([BII)V

    :cond_47
    sub-int v12, v2, v4

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzahy;->l:J

    int-to-long v13, v12

    sub-long v13, v9, v13

    if-gez v8, :cond_52

    neg-int v4, v8

    goto :goto_53

    :cond_52
    const/4 v4, 0x0

    :goto_53
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzahy;->m:J

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahy;->d:Lcom/google/android/gms/internal/ads/zzahx;

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzahy;->e:Z

    .line 7
    invoke-virtual {v10, v13, v14, v12, v11}, Lcom/google/android/gms/internal/ads/zzahx;->a(JIZ)V

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzahy;->e:Z

    if-nez v10, :cond_332

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahy;->g:Lcom/google/android/gms/internal/ads/zzaic;

    .line 8
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzaic;->d(I)Z

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahy;->h:Lcom/google/android/gms/internal/ads/zzaic;

    .line 9
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzaic;->d(I)Z

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahy;->i:Lcom/google/android/gms/internal/ads/zzaic;

    .line 10
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzaic;->d(I)Z

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahy;->g:Lcom/google/android/gms/internal/ads/zzaic;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaic;->e()Z

    move-result v16

    if-eqz v16, :cond_332

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzahy;->h:Lcom/google/android/gms/internal/ads/zzaic;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzaic;->e()Z

    move-result v17

    if-eqz v17, :cond_332

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzahy;->i:Lcom/google/android/gms/internal/ads/zzaic;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzaic;->e()Z

    move-result v18

    if-eqz v18, :cond_332

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->c:Lcom/google/android/gms/internal/ads/zzabb;

    move/from16 v19, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahy;->b:Ljava/lang/String;

    iget v6, v10, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    move/from16 v20, v2

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    add-int/2addr v2, v6

    move-object/from16 v21, v3

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    add-int/2addr v2, v3

    .line 11
    new-array v2, v2, [B

    iget-object v3, v10, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    move/from16 v22, v12

    const/4 v12, 0x0

    .line 12
    invoke-static {v3, v12, v2, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v6, v10, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    move-wide/from16 v23, v13

    iget v13, v15, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 13
    invoke-static {v3, v12, v2, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v6, v10, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    add-int/2addr v6, v10

    iget v10, v11, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 14
    invoke-static {v3, v12, v2, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaat;

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 15
    invoke-direct {v3, v6, v12, v10}, Lcom/google/android/gms/internal/ads/zzaat;-><init>([BII)V

    const/16 v6, 0x2c

    .line 16
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    const/4 v6, 0x3

    .line 17
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v10

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    const/4 v11, 0x2

    .line 19
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v25

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v26

    const/4 v13, 0x5

    .line 21
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v27

    const/4 v13, 0x0

    const/16 v28, 0x0

    :goto_e1
    const/16 v14, 0x20

    if-ge v13, v14, :cond_f3

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v14

    if-eqz v14, :cond_f0

    const/4 v14, 0x1

    shl-int v15, v14, v13

    or-int v28, v28, v15

    :cond_f0
    add-int/lit8 v13, v13, 0x1

    goto :goto_e1

    :cond_f3
    const/4 v13, 0x6

    new-array v14, v13, [I

    const/4 v15, 0x0

    :goto_f7
    const/16 v12, 0x8

    if-ge v15, v13, :cond_104

    .line 23
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v12

    aput v12, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_f7

    .line 24
    :cond_104
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v30

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_10a
    if-ge v15, v10, :cond_11f

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v31

    if-eqz v31, :cond_114

    add-int/lit8 v12, v12, 0x59

    .line 26
    :cond_114
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v31

    if-eqz v31, :cond_11c

    add-int/lit8 v12, v12, 0x8

    :cond_11c
    add-int/lit8 v15, v15, 0x1

    goto :goto_10a

    .line 27
    :cond_11f
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    if-lez v10, :cond_12a

    rsub-int/lit8 v12, v10, 0x8

    add-int/2addr v12, v12

    .line 28
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 29
    :cond_12a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v12

    if-ne v12, v6, :cond_137

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    const/4 v12, 0x3

    .line 32
    :cond_137
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v15

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v31

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v32

    if-eqz v32, :cond_172

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v32

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v33

    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v34

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v35

    const/4 v6, 0x1

    if-eq v12, v6, :cond_15f

    if-ne v12, v11, :cond_15c

    const/4 v12, 0x2

    goto :goto_15f

    :cond_15c
    const/16 v36, 0x1

    goto :goto_161

    :cond_15f
    :goto_15f
    const/16 v36, 0x2

    :goto_161
    if-ne v12, v6, :cond_165

    const/4 v6, 0x2

    goto :goto_166

    :cond_165
    const/4 v6, 0x1

    :goto_166
    add-int v32, v32, v33

    mul-int v36, v36, v32

    sub-int v15, v15, v36

    add-int v34, v34, v35

    mul-int v6, v6, v34

    sub-int v31, v31, v6

    .line 39
    :cond_172
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v6

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v12

    const/4 v11, 0x1

    if-eq v11, v12, :cond_185

    move v11, v10

    goto :goto_186

    :cond_185
    const/4 v11, 0x0

    :goto_186
    if-gt v11, v10, :cond_194

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    add-int/lit8 v11, v11, 0x1

    goto :goto_186

    .line 46
    :cond_194
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v10

    const/4 v11, 0x4

    if-eqz v10, :cond_1f8

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v10

    if-eqz v10, :cond_1f8

    const/4 v10, 0x0

    :goto_1b4
    if-ge v10, v11, :cond_1f8

    const/4 v12, 0x0

    :goto_1b7
    if-ge v12, v13, :cond_1ee

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v33

    if-nez v33, :cond_1c6

    .line 55
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move/from16 v36, v7

    :cond_1c4
    const/4 v7, 0x3

    goto :goto_1e3

    :cond_1c6
    const/16 v13, 0x40

    add-int v34, v10, v10

    add-int/lit8 v34, v34, 0x4

    move/from16 v36, v7

    const/4 v11, 0x1

    shl-int v7, v11, v34

    .line 56
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-le v10, v11, :cond_1da

    .line 57
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->b()I

    :cond_1da
    const/4 v11, 0x0

    :goto_1db
    if-ge v11, v7, :cond_1c4

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->b()I

    add-int/lit8 v11, v11, 0x1

    goto :goto_1db

    :goto_1e3
    if-ne v10, v7, :cond_1e7

    const/4 v11, 0x3

    goto :goto_1e8

    :cond_1e7
    const/4 v11, 0x1

    :goto_1e8
    add-int/2addr v12, v11

    move/from16 v7, v36

    const/4 v11, 0x4

    const/4 v13, 0x6

    goto :goto_1b7

    :cond_1ee
    move/from16 v36, v7

    const/4 v7, 0x3

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v36

    const/4 v11, 0x4

    const/4 v13, 0x6

    goto :goto_1b4

    :cond_1f8
    move/from16 v36, v7

    const/4 v7, 0x2

    .line 59
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v7

    if-eqz v7, :cond_212

    const/16 v7, 0x8

    .line 61
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 64
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    .line 65
    :cond_212
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_219
    if-ge v10, v7, :cond_266

    if-eqz v10, :cond_221

    .line 66
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v11

    :cond_221
    if-eqz v11, :cond_23b

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    const/4 v13, 0x0

    :goto_22a
    if-gt v13, v12, :cond_238

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v33

    if-eqz v33, :cond_235

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    :cond_235
    add-int/lit8 v13, v13, 0x1

    goto :goto_22a

    :cond_238
    move/from16 v34, v7

    goto :goto_261

    .line 71
    :cond_23b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v12

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v13

    add-int v33, v12, v13

    move/from16 v34, v7

    const/4 v7, 0x0

    :goto_248
    if-ge v7, v12, :cond_253

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_248

    :cond_253
    const/4 v7, 0x0

    :goto_254
    if-ge v7, v13, :cond_25f

    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 76
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_254

    :cond_25f
    move/from16 v12, v33

    :goto_261
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v34

    goto :goto_219

    .line 77
    :cond_266
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v7

    if-eqz v7, :cond_27c

    const/4 v7, 0x0

    .line 78
    :goto_26d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v10

    if-ge v7, v10, :cond_27c

    const/4 v10, 0x5

    add-int/lit8 v11, v6, 0x5

    .line 79
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_26d

    :cond_27c
    const/4 v6, 0x2

    .line 80
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 81
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_2ff

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v6

    if-eqz v6, :cond_2ca

    const/16 v6, 0x8

    .line 83
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v6

    const/16 v10, 0xff

    if-ne v6, v10, :cond_2aa

    const/16 v6, 0x10

    .line 84
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v10

    .line 85
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v6

    if-eqz v10, :cond_2ca

    if-eqz v6, :cond_2ca

    int-to-float v7, v10

    int-to-float v6, v6

    div-float/2addr v7, v6

    goto :goto_2ca

    :cond_2aa
    const/16 v10, 0x11

    if-ge v6, v10, :cond_2b4

    .line 86
    sget-object v7, Lcom/google/android/gms/internal/ads/zzaar;->b:[F

    .line 87
    aget v6, v7, v6

    move v7, v6

    goto :goto_2ca

    :cond_2b4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "H265Reader"

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_2ca
    :goto_2ca
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v6

    if-eqz v6, :cond_2d3

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    .line 91
    :cond_2d3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v6

    if-eqz v6, :cond_2e8

    const/4 v6, 0x4

    .line 92
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 93
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v6

    if-eqz v6, :cond_2e8

    const/16 v6, 0x18

    .line 94
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 95
    :cond_2e8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v6

    if-eqz v6, :cond_2f4

    .line 96
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 97
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 98
    :cond_2f4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    .line 99
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v3

    if-eqz v3, :cond_2ff

    add-int v31, v31, v31

    :cond_2ff
    move/from16 v3, v31

    move-object/from16 v29, v14

    .line 100
    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzdn;->b(IZII[II)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 101
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string v5, "video/hevc"

    .line 102
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 103
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzad;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 104
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/ads/zzad;->x(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 105
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzad;->f(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 106
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzad;->p(F)Lcom/google/android/gms/internal/ads/zzad;

    .line 107
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    .line 108
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v2

    .line 109
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->e:Z

    goto :goto_33e

    :cond_332
    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v19, v5

    move/from16 v36, v7

    move/from16 v22, v12

    move-wide/from16 v23, v13

    :goto_33e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->j:Lcom/google/android/gms/internal/ads/zzaic;

    .line 110
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaic;->d(I)Z

    move-result v1

    if-eqz v1, :cond_366

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->j:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 111
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->b([BI)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->n:Lcom/google/android/gms/internal/ads/zzen;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahy;->j:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    .line 112
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->n:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x5

    .line 113
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->a:Lcom/google/android/gms/internal/ads/zzaio;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->n:Lcom/google/android/gms/internal/ads/zzen;

    .line 114
    invoke-virtual {v1, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzaio;->a(JLcom/google/android/gms/internal/ads/zzen;)V

    :cond_366
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->k:Lcom/google/android/gms/internal/ads/zzaic;

    .line 115
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaic;->d(I)Z

    move-result v1

    if-eqz v1, :cond_38e

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->k:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 116
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaar;->b([BI)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->n:Lcom/google/android/gms/internal/ads/zzen;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahy;->k:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    .line 117
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->n:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x5

    .line 118
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahy;->a:Lcom/google/android/gms/internal/ads/zzaio;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->n:Lcom/google/android/gms/internal/ads/zzen;

    .line 119
    invoke-virtual {v1, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzaio;->a(JLcom/google/android/gms/internal/ads/zzen;)V

    :cond_38e
    const/4 v1, 0x1

    shr-int/lit8 v1, v36, 0x1

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzahy;->m:J

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahy;->d:Lcom/google/android/gms/internal/ads/zzahx;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->e:Z

    move-wide/from16 v10, v23

    move/from16 v12, v22

    move v13, v1

    move/from16 v16, v2

    .line 120
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzahx;->d(JIIJZ)V

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->e:Z

    if-nez v2, :cond_3b4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->g:Lcom/google/android/gms/internal/ads/zzaic;

    .line 121
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaic;->c(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->h:Lcom/google/android/gms/internal/ads/zzaic;

    .line 122
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaic;->c(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->i:Lcom/google/android/gms/internal/ads/zzaic;

    .line 123
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaic;->c(I)V

    :cond_3b4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->j:Lcom/google/android/gms/internal/ads/zzaic;

    .line 124
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaic;->c(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahy;->k:Lcom/google/android/gms/internal/ads/zzaic;

    .line 125
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaic;->c(I)V

    move-object/from16 v6, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    goto/16 :goto_30

    .line 126
    :cond_3c8
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzahy;->f([BII)V

    :cond_3cb
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->c:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzahx;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzahx;-><init>(Lcom/google/android/gms/internal/ads/zzabb;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzahy;->d:Lcom/google/android/gms/internal/ads/zzahx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->a:Lcom/google/android/gms/internal/ads/zzaio;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaio;->b(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V

    return-void
.end method

.method public final e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->m:J

    :cond_b
    return-void
.end method
