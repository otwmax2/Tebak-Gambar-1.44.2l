###### Class com.google.android.gms.internal.ads.zzaie (com.google.android.gms.internal.ads.zzaie)
.class public final Lcom/google/android/gms/internal/ads/zzaie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaja;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzahn;

.field private final b:Lcom/google/android/gms/internal/ads/zzem;

.field private c:I

.field private d:I

.field private e:Lcom/google/android/gms/internal/ads/zzeu;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzahn;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->a:Lcom/google/android/gms/internal/ads/zzahn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzem;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->c:I

    return-void
.end method

.method private final d(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->d:I

    return-void
.end method

.method private final e(Lcom/google/android/gms/internal/ads/zzen;[BI)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_10

    return v1

    :cond_10
    if-nez p2, :cond_16

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    goto :goto_1b

    :cond_16
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaie;->d:I

    .line 3
    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 4
    :goto_1b
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->d:I

    if-ne p1, p3, :cond_23

    return v1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->d:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->a:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahn;->b()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->e:Lcom/google/android/gms/internal/ads/zzeu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->a:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzahn;->d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaie;->e:Lcom/google/android/gms/internal/ads/zzeu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, p2, 0x1

    const-string v3, "PesReader"

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_45

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaie;->c:I

    if-eqz v2, :cond_42

    if-eq v2, v6, :cond_42

    if-eq v2, v5, :cond_3d

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaie;->j:I

    if-eq v2, v4, :cond_37

    new-instance v7, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected start indicator: expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " more bytes"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaie;->a:Lcom/google/android/gms/internal/ads/zzahn;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahn;->a()V

    goto :goto_42

    :cond_3d
    const-string v2, "Unexpected start indicator reading extended header"

    .line 4
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_42
    :goto_42
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzaie;->d(I)V

    :cond_45
    move/from16 v2, p2

    :goto_47
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v7

    if-lez v7, :cond_1f9

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->c:I

    if-eqz v7, :cond_1ee

    const/4 v8, 0x0

    if-eq v7, v6, :cond_148

    if-eq v7, v5, :cond_84

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v7

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzaie;->j:I

    if-ne v9, v4, :cond_5f

    goto :goto_61

    :cond_5f
    sub-int v8, v7, v9

    :goto_61
    if-lez v8, :cond_6c

    sub-int/2addr v7, v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v8

    add-int/2addr v8, v7

    .line 6
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    :cond_6c
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaie;->a:Lcom/google/android/gms/internal/ads/zzahn;

    .line 7
    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/ads/zzahn;->c(Lcom/google/android/gms/internal/ads/zzen;)V

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaie;->j:I

    if-eq v8, v4, :cond_1ec

    sub-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaie;->j:I

    if-nez v8, :cond_1ec

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->a:Lcom/google/android/gms/internal/ads/zzahn;

    .line 8
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzahn;->a()V

    .line 9
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzaie;->d(I)V

    goto/16 :goto_1ec

    :cond_84
    const/16 v7, 0xa

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzaie;->i:I

    .line 10
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    .line 11
    invoke-direct {v0, v1, v9, v7}, Lcom/google/android/gms/internal/ads/zzaie;->e(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    move-result v7

    if-eqz v7, :cond_1ec

    const/4 v7, 0x0

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzaie;->i:I

    .line 12
    invoke-direct {v0, v1, v7, v9}, Lcom/google/android/gms/internal/ads/zzaie;->e(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    move-result v7

    if-eqz v7, :cond_1ec

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 13
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->f:Z

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eqz v7, :cond_12c

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 14
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 15
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v7

    int-to-long v11, v7

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 16
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    const/16 v13, 0xf

    .line 17
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v7

    shl-int/2addr v7, v13

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 18
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 19
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v14

    int-to-long v14, v14

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 20
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaie;->h:Z

    const/16 v16, 0x1e

    if-nez v5, :cond_11c

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaie;->g:Z

    if-eqz v5, :cond_11c

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 21
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 22
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v5

    int-to-long v4, v5

    shl-long v4, v4, v16

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 23
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 24
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v10

    shl-int/2addr v10, v13

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 25
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 26
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v8

    move/from16 v17, v10

    int-to-long v9, v8

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 27
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaie;->e:Lcom/google/android/gms/internal/ads/zzeu;

    move/from16 v18, v7

    move/from16 v13, v17

    int-to-long v6, v13

    or-long/2addr v4, v6

    or-long/2addr v4, v9

    .line 28
    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/zzeu;->b(J)J

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaie;->h:Z

    goto :goto_11e

    :cond_11c
    move/from16 v18, v7

    :goto_11e
    shl-long v4, v11, v16

    move/from16 v6, v18

    int-to-long v6, v6

    or-long/2addr v4, v6

    or-long/2addr v4, v14

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaie;->e:Lcom/google/android/gms/internal/ads/zzeu;

    .line 29
    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzeu;->b(J)J

    move-result-wide v4

    goto :goto_131

    :cond_12c
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_131
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzaie;->k:Z

    const/4 v7, 0x1

    if-eq v7, v6, :cond_138

    const/4 v8, 0x0

    goto :goto_139

    :cond_138
    const/4 v8, 0x4

    :goto_139
    or-int/2addr v2, v8

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaie;->a:Lcom/google/android/gms/internal/ads/zzahn;

    .line 30
    invoke-interface {v6, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzahn;->e(JI)V

    const/4 v4, 0x3

    .line 31
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzaie;->d(I)V

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_47

    :cond_148
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    const/16 v5, 0x9

    .line 32
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaie;->e(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    move-result v4

    if-eqz v4, :cond_1ea

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    const/4 v5, 0x0

    .line 33
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    const/16 v6, 0x18

    .line 34
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_17e

    new-instance v7, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected start code prefix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaie;->j:I

    const/4 v8, 0x2

    goto :goto_1e6

    .line 36
    :cond_17e
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    const/16 v5, 0x8

    .line 37
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    const/16 v7, 0x10

    .line 38
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v4

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    const/4 v8, 0x5

    .line 39
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 40
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v7

    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->k:Z

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    const/4 v8, 0x2

    .line 41
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 42
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v7

    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->f:Z

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 43
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v7

    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->g:Z

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    const/4 v9, 0x6

    .line 44
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 45
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaie;->i:I

    if-nez v4, :cond_1c7

    const/4 v7, -0x1

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaie;->j:I

    :cond_1c4
    const/4 v4, -0x1

    :goto_1c5
    const/4 v5, 0x2

    goto :goto_1e6

    :cond_1c7
    add-int/lit8 v4, v4, -0x3

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaie;->j:I

    if-gez v4, :cond_1c4

    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found negative packet payload size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaie;->j:I

    goto :goto_1c5

    .line 47
    :goto_1e6
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzaie;->d(I)V

    goto :goto_1f6

    :cond_1ea
    const/4 v4, -0x1

    const/4 v6, 0x1

    :cond_1ec
    :goto_1ec
    const/4 v8, 0x2

    goto :goto_1f6

    :cond_1ee
    const/4 v8, 0x2

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v5

    .line 49
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :goto_1f6
    const/4 v5, 0x2

    goto/16 :goto_47

    :cond_1f9
    return-void
.end method
