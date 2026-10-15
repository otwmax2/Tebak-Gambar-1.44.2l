###### Class com.google.android.gms.internal.ads.zzafr (com.google.android.gms.internal.ads.zzafr)
.class final Lcom/google/android/gms/internal/ads/zzafr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->C(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafr;->a:[B

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzafi;)Landroid/util/Pair;
    .registers 14

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v4

    if-lt v4, v0, :cond_df

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v6

    const v7, 0x6d657461

    if-ne v6, v7, :cond_75

    .line 4
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    add-int v2, v4, v5

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafr;->d(Lcom/google/android/gms/internal/ads/zzen;)V

    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v6

    if-ge v6, v2, :cond_73

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v6

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v7

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v8

    const v9, 0x696c7374

    if-ne v8, v9, :cond_6e

    .line 9
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    add-int/2addr v6, v7

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    new-instance v2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v7

    if-ge v7, v6, :cond_5f

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafy;->a(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v7

    if-eqz v7, :cond_4f

    .line 13
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 14
    :cond_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_66

    goto :goto_73

    .line 15
    :cond_66
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbq;

    .line 16
    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzbq;-><init>(Ljava/util/List;)V

    move-object v2, v6

    goto/16 :goto_d9

    :cond_6e
    add-int/2addr v6, v7

    .line 17
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_2c

    :cond_73
    :goto_73
    move-object v2, v1

    goto :goto_d9

    :cond_75
    const v7, 0x736d7461

    if-ne v6, v7, :cond_d9

    .line 18
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    add-int v3, v4, v5

    const/16 v6, 0xc

    .line 19
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :goto_84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v7

    if-ge v7, v3, :cond_d8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v7

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v8

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v9

    const v10, 0x73617574

    if-ne v9, v10, :cond_d3

    const/16 v3, 0xe

    if-ge v8, v3, :cond_a0

    goto :goto_d8

    :cond_a0
    const/4 v3, 0x5

    .line 22
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v3

    const/high16 v7, 0x42f00000    # 120.0f

    if-eq v3, v6, :cond_b1

    const/16 v6, 0xd

    if-eq v3, v6, :cond_b5

    goto :goto_d8

    :cond_b1
    if-ne v3, v6, :cond_b5

    const/high16 v7, 0x43700000    # 240.0f

    :cond_b5
    const/4 v3, 0x1

    .line 24
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbq;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzbp;

    const/4 v11, 0x0

    new-instance v12, Lcom/google/android/gms/internal/ads/zzaei;

    invoke-direct {v12, v7, v6}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(FI)V

    aput-object v12, v3, v11

    invoke-direct {v8, v9, v10, v3}, Lcom/google/android/gms/internal/ads/zzbq;-><init>(J[Lcom/google/android/gms/internal/ads/zzbp;)V

    move-object v3, v8

    goto :goto_d9

    :cond_d3
    add-int/2addr v7, v8

    .line 26
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_84

    :cond_d8
    :goto_d8
    move-object v3, v1

    :cond_d9
    :goto_d9
    add-int/2addr v4, v5

    .line 27
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto/16 :goto_a

    .line 28
    :cond_df
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzafh;)Lcom/google/android/gms/internal/ads/zzbq;
    .registers 15

    const v0, 0x68646c72    # 4.3148E24f

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v0

    const v1, 0x6b657973

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v1

    const v2, 0x696c7374

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_d5

    if-eqz v1, :cond_d5

    if-eqz p0, :cond_d5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafr;->g(Lcom/google/android/gms/internal/ads/zzen;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_29

    goto/16 :goto_d5

    :cond_29
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v1

    .line 7
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_38
    if-ge v5, v1, :cond_4f

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v6

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    add-int/lit8 v6, v6, -0x8

    .line 10
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfnh;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->F(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 11
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_4f
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    new-instance v5, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_5b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v6

    if-le v6, v0, :cond_c8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v6

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v7

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_ad

    if-ge v8, v1, :cond_ad

    .line 16
    aget-object v8, v3, v8

    add-int v9, v6, v7

    .line 17
    sget v10, Lcom/google/android/gms/internal/ads/zzafy;->b:I

    :goto_79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v10

    if-ge v10, v9, :cond_a6

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v11

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v12

    const v13, 0x64617461

    if-ne v12, v13, :cond_a1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v9

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v10

    add-int/lit8 v11, v11, -0x10

    .line 22
    new-array v12, v11, [B

    .line 23
    invoke-virtual {p0, v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaec;

    invoke-direct {v11, v8, v12, v10, v9}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(Ljava/lang/String;[BII)V

    goto :goto_a7

    :cond_a1
    add-int/2addr v10, v11

    .line 24
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_79

    :cond_a6
    move-object v11, v2

    :goto_a7
    if-eqz v11, :cond_c3

    .line 25
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 26
    :cond_ad
    new-instance v9, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipped metadata with unknown key index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AtomParsers"

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    :goto_c3
    add-int/2addr v6, v7

    .line 28
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_5b

    .line 29
    :cond_c8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_cf

    return-object v2

    :cond_cf
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbq;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzbq;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_d5
    :goto_d5
    return-object v2
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzafh;Lcom/google/android/gms/internal/ads/zzaaj;JLcom/google/android/gms/internal/ads/zzx;ZZLcom/google/android/gms/internal/ads/zzfnj;)Ljava/util/List;
    .registers 64
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    .line 1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    .line 2
    :goto_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafh;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_e43

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafh;->d:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/internal/ads/zzafh;

    .line 4
    iget v2, v11, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    const v3, 0x7472616b

    if-eq v2, v3, :cond_29

    move-object v0, v13

    move/from16 v31, v15

    goto/16 :goto_e30

    :cond_29
    const v2, 0x6d766864

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x6d646961

    .line 7
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzafh;->c(I)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object v3

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v4

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzafr;->g(Lcom/google/android/gms/internal/ads/zzen;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzafr;->e(I)I

    move-result v9

    const-string v6, "AtomParsers"

    move/from16 v31, v15

    const-wide/16 v14, 0x0

    const/4 v5, -0x1

    if-ne v9, v5, :cond_64

    move-object/from16 v0, p7

    move-object v14, v6

    move-object v2, v11

    move-object/from16 v32, v13

    const/4 v4, 0x2

    :goto_61
    const/4 v8, 0x0

    goto/16 :goto_842

    :cond_64
    const v4, 0x746b6864

    .line 12
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v4

    .line 13
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v8, 0x8

    .line 15
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v21

    if-nez v21, :cond_82

    const/16 v10, 0x8

    goto :goto_84

    :cond_82
    const/16 v10, 0x10

    .line 17
    :goto_84
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v10

    const/4 v8, 0x4

    .line 19
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v25

    const/4 v8, 0x0

    :goto_94
    if-nez v21, :cond_98

    const/4 v7, 0x4

    goto :goto_9a

    :cond_98
    const/16 v7, 0x8

    :goto_9a
    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v8, v7, :cond_be

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v7

    add-int v30, v25, v8

    .line 20
    aget-byte v7, v7, v30

    if-eq v7, v5, :cond_bb

    if-nez v21, :cond_b2

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v7

    goto :goto_b6

    :cond_b2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v7

    :goto_b6
    cmp-long v21, v7, v14

    if-nez v21, :cond_c3

    goto :goto_c1

    :cond_bb
    add-int/lit8 v8, v8, 0x1

    goto :goto_94

    .line 22
    :cond_be
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :goto_c1
    move-wide/from16 v7, v28

    :cond_c3
    const/16 v14, 0x10

    .line 23
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v15

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v5

    const/4 v14, 0x4

    .line 26
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v14

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v4

    const/high16 v0, 0x10000

    move-object/from16 v25, v6

    const/high16 v6, -0x10000

    if-nez v15, :cond_f5

    if-ne v5, v0, :cond_f4

    if-ne v14, v6, :cond_f2

    if-nez v4, :cond_ed

    const/16 v0, 0x5a

    goto :goto_114

    :cond_ed
    const/high16 v5, 0x10000

    const/high16 v14, -0x10000

    goto :goto_f4

    :cond_f2
    const/high16 v5, 0x10000

    :cond_f4
    :goto_f4
    const/4 v15, 0x0

    :cond_f5
    if-nez v15, :cond_107

    if-ne v5, v6, :cond_104

    if-ne v14, v0, :cond_100

    if-nez v4, :cond_101

    const/16 v0, 0x10e

    goto :goto_114

    :cond_100
    move v0, v14

    :cond_101
    const/high16 v5, -0x10000

    goto :goto_105

    :cond_104
    move v0, v14

    :goto_105
    const/4 v15, 0x0

    goto :goto_108

    :cond_107
    move v0, v14

    :goto_108
    if-ne v15, v6, :cond_113

    if-nez v5, :cond_113

    if-nez v0, :cond_113

    if-ne v4, v6, :cond_113

    const/16 v0, 0xb4

    goto :goto_114

    :cond_113
    const/4 v0, 0x0

    :goto_114
    new-instance v14, Lcom/google/android/gms/internal/ads/zzafq;

    invoke-direct {v14, v10, v7, v8, v0}, Lcom/google/android/gms/internal/ads/zzafq;-><init>(IJI)V

    cmp-long v0, p2, v28

    if-nez v0, :cond_124

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzafq;->c(Lcom/google/android/gms/internal/ads/zzafq;)J

    move-result-wide v4

    move-wide/from16 v32, v4

    goto :goto_126

    :cond_124
    move-wide/from16 v32, p2

    :goto_126
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v2, 0x8

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v4

    if-nez v4, :cond_13a

    const/16 v8, 0x8

    goto :goto_13c

    :cond_13a
    const/16 v8, 0x10

    .line 31
    :goto_13c
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v38

    cmp-long v0, v32, v28

    if-nez v0, :cond_148

    goto :goto_153

    :cond_148
    const-wide/32 v34, 0xf4240

    move-wide/from16 v36, v38

    .line 33
    invoke-static/range {v32 .. v37}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v4

    move-wide/from16 v28, v4

    :goto_153
    const v0, 0x6d696e66

    .line 34
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzafh;->c(I)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object v2

    .line 35
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v8, 0x7374626c

    .line 36
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzafh;->c(I)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object v2

    .line 37
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x6d646864

    .line 38
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v3

    .line 39
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzafr;->i(Lcom/google/android/gms/internal/ads/zzen;)Landroid/util/Pair;

    move-result-object v15

    const v3, 0x73747364

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v2

    if-eqz v2, :cond_e3b

    .line 42
    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzafq;->a(Lcom/google/android/gms/internal/ads/zzafq;)I

    move-result v7

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzafq;->b(Lcom/google/android/gms/internal/ads/zzafq;)I

    move-result v6

    .line 43
    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/16 v4, 0xc

    .line 44
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 45
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzafn;

    .line 46
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzafn;-><init>(I)V

    const/4 v0, 0x0

    :goto_19e
    if-ge v0, v3, :cond_7df

    move-object/from16 v32, v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v13

    .line 47
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v1

    if-lez v1, :cond_1ae

    const/4 v4, 0x1

    goto :goto_1af

    :cond_1ae
    const/4 v4, 0x0

    :goto_1af
    const-string v8, "childAtomSize must be positive"

    .line 48
    invoke-static {v4, v8}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    .line 49
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v4

    const v8, 0x61766331

    move/from16 v24, v3

    const v3, 0x656e6376

    if-eq v4, v8, :cond_3a9

    const v8, 0x61766333

    if-eq v4, v8, :cond_3a9

    if-eq v4, v3, :cond_3a9

    const v8, 0x6d317620

    if-eq v4, v8, :cond_3a9

    const v8, 0x6d703476

    if-eq v4, v8, :cond_3a9

    const v8, 0x68766331

    if-eq v4, v8, :cond_3a9

    const v8, 0x68657631

    if-eq v4, v8, :cond_3a9

    const v8, 0x73323633

    if-eq v4, v8, :cond_3a9

    const v8, 0x48323633

    if-eq v4, v8, :cond_3a9

    const v8, 0x76703038

    if-eq v4, v8, :cond_3a9

    const v8, 0x76703039

    if-eq v4, v8, :cond_3a9

    const v8, 0x61763031

    if-eq v4, v8, :cond_3a9

    const v8, 0x64766176

    if-eq v4, v8, :cond_3a9

    const v8, 0x64766131

    if-eq v4, v8, :cond_3a9

    const v8, 0x64766865

    if-eq v4, v8, :cond_3a9

    const v8, 0x64766831

    if-ne v4, v8, :cond_20c

    goto/16 :goto_3a9

    :cond_20c
    const v3, 0x6d703461

    if-eq v4, v3, :cond_36a

    const v3, 0x656e6361

    if-eq v4, v3, :cond_36a

    const v3, 0x61632d33

    if-eq v4, v3, :cond_36a

    const v3, 0x65632d33

    if-eq v4, v3, :cond_36a

    const v3, 0x61632d34

    if-eq v4, v3, :cond_36a

    const v3, 0x6d6c7061

    if-eq v4, v3, :cond_36a

    const v3, 0x64747363

    if-eq v4, v3, :cond_36a

    const v3, 0x64747365

    if-eq v4, v3, :cond_36a

    const v3, 0x64747368

    if-eq v4, v3, :cond_36a

    const v3, 0x6474736c

    if-eq v4, v3, :cond_36a

    const v3, 0x64747378

    if-eq v4, v3, :cond_36a

    const v3, 0x73616d72

    if-eq v4, v3, :cond_36a

    const v3, 0x73617762

    if-eq v4, v3, :cond_36a

    const v3, 0x6c70636d

    if-eq v4, v3, :cond_36a

    const v3, 0x736f7774

    if-eq v4, v3, :cond_36a

    const v3, 0x74776f73

    if-eq v4, v3, :cond_36a

    const v3, 0x2e6d7032

    if-eq v4, v3, :cond_36a

    const v3, 0x2e6d7033

    if-eq v4, v3, :cond_36a

    const v3, 0x6d686131

    if-eq v4, v3, :cond_36a

    const v3, 0x6d686d31

    if-eq v4, v3, :cond_36a

    const v3, 0x616c6163

    if-eq v4, v3, :cond_36a

    const v3, 0x616c6177

    if-eq v4, v3, :cond_36a

    const v3, 0x756c6177

    if-eq v4, v3, :cond_36a

    const v3, 0x4f707573

    if-eq v4, v3, :cond_36a

    const v3, 0x664c6143

    if-ne v4, v3, :cond_28b

    goto/16 :goto_36a

    :cond_28b
    const v3, 0x54544d4c

    if-eq v4, v3, :cond_2e0

    const v3, 0x74783367

    if-eq v4, v3, :cond_2e0

    const v3, 0x77767474

    if-eq v4, v3, :cond_2e0

    const v3, 0x73747070

    if-eq v4, v3, :cond_2e0

    const v3, 0x63363038

    if-ne v4, v3, :cond_2a5

    goto :goto_2e0

    :cond_2a5
    const v3, 0x6d657474

    if-ne v4, v3, :cond_2b1

    const v3, 0x6d657474

    .line 50
    invoke-static {v10, v3, v13, v7, v2}, Lcom/google/android/gms/internal/ads/zzafr;->n(Lcom/google/android/gms/internal/ads/zzen;IIILcom/google/android/gms/internal/ads/zzafn;)V

    goto :goto_2c9

    :cond_2b1
    const v3, 0x63616d6d

    if-ne v4, v3, :cond_2c9

    new-instance v3, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 51
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzad;->g(I)Lcom/google/android/gms/internal/ads/zzad;

    const-string v4, "application/x-camera-motion"

    .line 52
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    :cond_2c9
    :goto_2c9
    move/from16 v17, v0

    move/from16 v36, v1

    move-object v3, v2

    move-object/from16 v16, v5

    move v2, v6

    move v1, v7

    move/from16 v18, v9

    move-object/from16 v41, v11

    move/from16 v42, v13

    move-object/from16 v21, v14

    move-object/from16 v19, v15

    move-object/from16 v14, v25

    goto/16 :goto_365

    :cond_2e0
    :goto_2e0
    add-int/lit8 v3, v13, 0x10

    .line 54
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    const v3, 0x54544d4c

    const-wide v33, 0x7fffffffffffffffL

    if-ne v4, v3, :cond_2f9

    const-string v3, "application/ttml+xml"

    :goto_2f1
    move/from16 v30, v6

    move/from16 v22, v9

    move-wide/from16 v8, v33

    const/4 v4, 0x0

    goto :goto_335

    :cond_2f9
    const v3, 0x74783367

    if-ne v4, v3, :cond_318

    add-int/lit8 v3, v1, -0x10

    .line 55
    new-array v4, v3, [B

    const/4 v8, 0x0

    .line 56
    invoke-virtual {v10, v4, v8, v3}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 57
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v3

    const-string v4, "application/x-quicktime-tx3g"

    move/from16 v30, v6

    move/from16 v22, v9

    move-wide/from16 v8, v33

    move-object/from16 v54, v4

    move-object v4, v3

    move-object/from16 v3, v54

    goto :goto_335

    :cond_318
    const v3, 0x77767474

    if-ne v4, v3, :cond_320

    const-string v3, "application/x-mp4-vtt"

    goto :goto_2f1

    :cond_320
    const v3, 0x73747070

    if-ne v4, v3, :cond_32f

    const-string v3, "application/ttml+xml"

    move/from16 v30, v6

    move/from16 v22, v9

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    goto :goto_335

    :cond_32f
    const/4 v8, 0x1

    iput v8, v2, Lcom/google/android/gms/internal/ads/zzafn;->d:I

    const-string v3, "application/x-mp4-cea-608"

    goto :goto_2f1

    .line 58
    :goto_335
    new-instance v6, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 59
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzad;->g(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 60
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 61
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 62
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzad;->w(J)Lcom/google/android/gms/internal/ads/zzad;

    .line 63
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    .line 64
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    move/from16 v17, v0

    move/from16 v36, v1

    move-object v3, v2

    move-object/from16 v16, v5

    move v1, v7

    move-object/from16 v41, v11

    move/from16 v42, v13

    move-object/from16 v21, v14

    move-object/from16 v19, v15

    move/from16 v18, v22

    move-object/from16 v14, v25

    move/from16 v2, v30

    :goto_365
    const/4 v4, 0x2

    const/4 v5, -0x1

    move-object v15, v10

    goto/16 :goto_7b9

    :cond_36a
    :goto_36a
    move/from16 v30, v6

    move/from16 v22, v9

    move-object v9, v2

    move-object v2, v10

    move v3, v4

    const/16 v6, 0xc

    const/4 v8, 0x2

    move v4, v13

    move-object/from16 v16, v5

    const/4 v6, -0x1

    move v5, v1

    move-object/from16 v21, v14

    move-object/from16 v19, v15

    move-object/from16 v14, v25

    move/from16 v15, v30

    move v6, v7

    move/from16 v40, v7

    const/16 v15, 0x10

    move-object/from16 v7, v16

    move/from16 v8, p6

    move-object/from16 v17, v9

    move/from16 v18, v22

    move-object/from16 v9, p4

    move-object v15, v10

    move-object/from16 v10, v17

    move-object/from16 v41, v11

    move v11, v0

    .line 65
    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzafr;->m(Lcom/google/android/gms/internal/ads/zzen;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzx;Lcom/google/android/gms/internal/ads/zzafn;I)V

    move/from16 v36, v1

    move/from16 v42, v13

    move-object/from16 v3, v17

    move/from16 v2, v30

    move/from16 v1, v40

    const/4 v4, 0x2

    const/4 v5, -0x1

    move/from16 v17, v0

    goto/16 :goto_7b9

    :cond_3a9
    :goto_3a9
    move-object/from16 v17, v2

    move-object/from16 v16, v5

    move/from16 v30, v6

    move/from16 v40, v7

    move/from16 v18, v9

    move-object/from16 v41, v11

    move-object/from16 v21, v14

    move-object/from16 v19, v15

    move-object/from16 v14, v25

    move-object v15, v10

    add-int/lit8 v2, v13, 0x10

    .line 66
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    const/16 v2, 0x10

    .line 67
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 68
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v5

    .line 69
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v6

    const/16 v7, 0x32

    .line 70
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v7

    if-ne v4, v3, :cond_40d

    .line 71
    invoke-static {v15, v13, v1}, Lcom/google/android/gms/internal/ads/zzafr;->j(Lcom/google/android/gms/internal/ads/zzen;II)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_403

    .line 72
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v12, :cond_3ed

    move-object/from16 v9, v17

    const/4 v8, 0x0

    goto :goto_3f9

    .line 73
    :cond_3ed
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzagh;->b:Ljava/lang/String;

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzx;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v8

    move-object/from16 v9, v17

    .line 74
    :goto_3f9
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzafn;->a:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 75
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzagh;

    aput-object v4, v10, v0

    move v4, v3

    goto :goto_409

    :cond_403
    move-object/from16 v9, v17

    move-object v8, v12

    const v4, 0x656e6376

    .line 76
    :goto_409
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_410

    :cond_40d
    move-object/from16 v9, v17

    move-object v8, v12

    :goto_410
    const v3, 0x6d317620

    if-ne v4, v3, :cond_41d

    const-string v3, "video/mpeg"

    move/from16 v54, v4

    move-object v4, v3

    move/from16 v3, v54

    goto :goto_427

    :cond_41d
    const v3, 0x48323633

    if-ne v4, v3, :cond_425

    const-string v4, "video/3gpp"

    goto :goto_427

    :cond_425
    move v3, v4

    const/4 v4, 0x0

    :goto_427
    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v17, v0

    move v0, v7

    move-object/from16 v34, v8

    const/4 v2, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v20, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v35, 0x0

    move-object v7, v4

    const/4 v4, 0x0

    :goto_441
    sub-int v12, v0, v13

    if-ge v12, v1, :cond_721

    .line 77
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v12

    .line 78
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v36

    if-nez v36, :cond_46a

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v36

    move/from16 v37, v10

    sub-int v10, v36, v13

    if-ne v10, v1, :cond_468

    move/from16 v36, v1

    move/from16 v53, v5

    move/from16 v48, v6

    move/from16 v47, v8

    move-object/from16 v46, v9

    goto/16 :goto_72d

    :cond_468
    const/4 v10, 0x0

    goto :goto_46e

    :cond_46a
    move/from16 v37, v10

    move/from16 v10, v36

    :goto_46e
    if-lez v10, :cond_476

    move/from16 v36, v1

    move/from16 v42, v13

    const/4 v1, 0x1

    goto :goto_47b

    :cond_476
    move/from16 v36, v1

    move/from16 v42, v13

    const/4 v1, 0x0

    :goto_47b
    const-string v13, "childAtomSize must be positive"

    .line 79
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    .line 80
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v1

    const v13, 0x61766343

    move-object/from16 v43, v11

    if-ne v1, v13, :cond_4bc

    if-nez v7, :cond_48f

    const/4 v1, 0x1

    goto :goto_490

    :cond_48f
    const/4 v1, 0x0

    :goto_490
    const/4 v13, 0x0

    .line 81
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 82
    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 83
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzyz;->a(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyz;->a:Ljava/util/List;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzyz;->b:I

    iput v7, v9, Lcom/google/android/gms/internal/ads/zzafn;->c:I

    if-nez v4, :cond_4a7

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzyz;->e:F

    :cond_4a7
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzyz;->f:Ljava/lang/String;

    const-string v7, "video/avc"

    :goto_4ab
    move-object/from16 v35, v2

    move/from16 v44, v3

    move/from16 v45, v4

    move/from16 v53, v5

    move/from16 v48, v6

    move-object/from16 v46, v9

    move-object/from16 v11, v43

    const/4 v4, 0x2

    goto/16 :goto_708

    :cond_4bc
    const/4 v13, 0x0

    const v11, 0x68766343

    if-ne v1, v11, :cond_4e2

    if-nez v7, :cond_4c6

    const/4 v1, 0x1

    goto :goto_4c7

    :cond_4c6
    const/4 v1, 0x0

    .line 84
    :goto_4c7
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 85
    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 86
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzaak;->a(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaak;->a:Ljava/util/List;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzaak;->b:I

    iput v7, v9, Lcom/google/android/gms/internal/ads/zzafn;->c:I

    if-nez v4, :cond_4dd

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzaak;->c:F

    :cond_4dd
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaak;->d:Ljava/lang/String;

    const-string v7, "video/hevc"

    goto :goto_4ab

    :cond_4e2
    const v11, 0x64766343

    if-eq v1, v11, :cond_6ec

    const v11, 0x64767643

    if-ne v1, v11, :cond_4ee

    goto/16 :goto_6ec

    :cond_4ee
    const v11, 0x76706343

    if-ne v1, v11, :cond_506

    if-nez v7, :cond_4f7

    const/4 v1, 0x1

    goto :goto_4f8

    :cond_4f7
    const/4 v1, 0x0

    .line 87
    :goto_4f8
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    const v1, 0x76703038

    if-ne v3, v1, :cond_503

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_515

    :cond_503
    const-string v1, "video/x-vnd.on2.vp9"

    goto :goto_515

    :cond_506
    const v11, 0x61763143

    if-ne v1, v11, :cond_517

    if-nez v7, :cond_50f

    const/4 v1, 0x1

    goto :goto_510

    :cond_50f
    const/4 v1, 0x0

    .line 88
    :goto_510
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    const-string v1, "video/av01"

    :goto_515
    move-object v7, v1

    goto :goto_539

    :cond_517
    const v11, 0x636c6c69

    if-ne v1, v11, :cond_548

    if-nez v25, :cond_522

    .line 89
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzafr;->l()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_522
    move-object/from16 v1, v25

    const/16 v11, 0x15

    .line 90
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v11

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v11

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    :goto_539
    move/from16 v44, v3

    move/from16 v45, v4

    move/from16 v53, v5

    move/from16 v48, v6

    move-object/from16 v46, v9

    move-object/from16 v11, v43

    :goto_545
    const/4 v4, 0x2

    goto/16 :goto_70e

    :cond_548
    const v11, 0x6d646376

    if-ne v1, v11, :cond_5be

    if-nez v25, :cond_553

    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzafr;->l()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_553
    move-object/from16 v1, v25

    .line 94
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v11

    .line 95
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v12

    .line 96
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v13

    move/from16 v44, v3

    .line 97
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v3

    move/from16 v45, v4

    .line 98
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v4

    move-object/from16 v46, v9

    .line 99
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v9

    move/from16 v47, v8

    .line 100
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v8

    move/from16 v48, v6

    .line 101
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v6

    .line 102
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v49

    .line 103
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v51

    move/from16 v53, v5

    const/4 v5, 0x1

    .line 104
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x2710

    div-long v3, v49, v3

    long-to-int v4, v3

    int-to-short v3, v4

    .line 113
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x2710

    div-long v3, v51, v3

    long-to-int v4, v3

    int-to-short v3, v4

    .line 114
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    :goto_5b9
    move-object/from16 v11, v43

    :goto_5bb
    move/from16 v8, v47

    goto :goto_545

    :cond_5be
    move/from16 v44, v3

    move/from16 v45, v4

    move/from16 v53, v5

    move/from16 v48, v6

    move/from16 v47, v8

    move-object/from16 v46, v9

    const v3, 0x64323633

    if-ne v1, v3, :cond_5dc

    if-nez v7, :cond_5d3

    const/4 v1, 0x1

    goto :goto_5d4

    :cond_5d3
    const/4 v1, 0x0

    :goto_5d4
    const/4 v3, 0x0

    .line 115
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    const-string v1, "video/3gpp"

    move-object v7, v1

    goto :goto_5b9

    :cond_5dc
    const/4 v3, 0x0

    const v4, 0x65736473

    if-ne v1, v4, :cond_606

    if-nez v7, :cond_5e6

    const/4 v1, 0x1

    goto :goto_5e7

    :cond_5e6
    const/4 v1, 0x0

    .line 116
    :goto_5e7
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    .line 117
    invoke-static {v15, v12}, Lcom/google/android/gms/internal/ads/zzafr;->k(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzafl;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafl;->c(Lcom/google/android/gms/internal/ads/zzafl;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafl;->d(Lcom/google/android/gms/internal/ads/zzafl;)[B

    move-result-object v4

    if-eqz v4, :cond_602

    .line 118
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v4

    move-object/from16 v26, v1

    move-object v7, v3

    move-object/from16 v35, v4

    goto :goto_5b9

    :cond_602
    move-object/from16 v26, v1

    move-object v7, v3

    goto :goto_5b9

    :cond_606
    const v3, 0x70617370

    if-ne v1, v3, :cond_623

    add-int/lit8 v12, v12, 0x8

    .line 119
    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 120
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v1

    .line 121
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v3

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    move v8, v1

    move-object/from16 v11, v43

    const/4 v4, 0x2

    const/16 v45, 0x1

    goto/16 :goto_70e

    :cond_623
    const v3, 0x73763364

    if-ne v1, v3, :cond_652

    add-int/lit8 v1, v12, 0x8

    :goto_62a
    sub-int v3, v1, v12

    if-ge v3, v10, :cond_64c

    .line 122
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 123
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v3

    .line 124
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v4

    const v5, 0x70726f6a

    if-ne v4, v5, :cond_64a

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    add-int/2addr v3, v1

    .line 125
    invoke-static {v4, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move-object v11, v1

    goto/16 :goto_5bb

    :cond_64a
    add-int/2addr v1, v3

    goto :goto_62a

    :cond_64c
    move/from16 v8, v47

    const/4 v4, 0x2

    const/4 v11, 0x0

    goto/16 :goto_70e

    :cond_652
    const v3, 0x73743364

    if-ne v1, v3, :cond_696

    .line 126
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v1

    const/4 v3, 0x3

    .line 127
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    if-nez v1, :cond_693

    .line 128
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v1

    if-eqz v1, :cond_68a

    const/4 v4, 0x1

    if-eq v1, v4, :cond_681

    const/4 v4, 0x2

    if-eq v1, v4, :cond_679

    if-eq v1, v3, :cond_671

    goto/16 :goto_70a

    :cond_671
    move-object/from16 v11, v43

    move/from16 v8, v47

    const/16 v37, 0x3

    goto/16 :goto_70e

    :cond_679
    move-object/from16 v11, v43

    move/from16 v8, v47

    const/16 v37, 0x2

    goto/16 :goto_70e

    :cond_681
    const/4 v4, 0x2

    move-object/from16 v11, v43

    move/from16 v8, v47

    const/16 v37, 0x1

    goto/16 :goto_70e

    :cond_68a
    const/4 v4, 0x2

    move-object/from16 v11, v43

    move/from16 v8, v47

    const/16 v37, 0x0

    goto/16 :goto_70e

    :cond_693
    const/4 v4, 0x2

    goto/16 :goto_70a

    :cond_696
    const/4 v4, 0x2

    const v3, 0x636f6c72

    if-ne v1, v3, :cond_70a

    .line 129
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v1

    const v3, 0x6e636c78

    if-eq v1, v3, :cond_6b9

    const v3, 0x6e636c63

    if-ne v1, v3, :cond_6ab

    goto :goto_6b9

    .line 130
    :cond_6ab
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafj;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unsupported color type: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70a

    .line 131
    :cond_6b9
    :goto_6b9
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v1

    .line 132
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v3

    .line 133
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    const/16 v5, 0x13

    if-ne v10, v5, :cond_6d6

    .line 134
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_6d2

    const/4 v5, 0x1

    goto :goto_6d3

    :cond_6d2
    const/4 v5, 0x0

    :goto_6d3
    const/16 v10, 0x13

    goto :goto_6d7

    :cond_6d6
    const/4 v5, 0x0

    .line 135
    :goto_6d7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzq;->a(I)I

    move-result v1

    const/4 v6, 0x1

    if-eq v6, v5, :cond_6e0

    const/4 v5, 0x2

    goto :goto_6e1

    :cond_6e0
    const/4 v5, 0x1

    :goto_6e1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzq;->b(I)I

    move-result v3

    move/from16 v23, v1

    move/from16 v20, v3

    move/from16 v22, v5

    goto :goto_70a

    :cond_6ec
    :goto_6ec
    move/from16 v44, v3

    move/from16 v45, v4

    move/from16 v53, v5

    move/from16 v48, v6

    move/from16 v47, v8

    move-object/from16 v46, v9

    const/4 v4, 0x2

    .line 136
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzzq;->a(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzzq;

    move-result-object v1

    if-eqz v1, :cond_70a

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzzq;->a:Ljava/lang/String;

    const-string v2, "video/dolby-vision"

    move-object v7, v2

    move-object/from16 v11, v43

    move/from16 v8, v47

    :goto_708
    move-object v2, v1

    goto :goto_70e

    :cond_70a
    :goto_70a
    move-object/from16 v11, v43

    move/from16 v8, v47

    :goto_70e
    add-int/2addr v0, v10

    move/from16 v1, v36

    move/from16 v10, v37

    move/from16 v13, v42

    move/from16 v3, v44

    move/from16 v4, v45

    move-object/from16 v9, v46

    move/from16 v6, v48

    move/from16 v5, v53

    goto/16 :goto_441

    :cond_721
    move/from16 v36, v1

    move/from16 v53, v5

    move/from16 v48, v6

    move/from16 v47, v8

    move-object/from16 v46, v9

    move/from16 v37, v10

    :goto_72d
    move-object/from16 v43, v11

    move/from16 v42, v13

    const/4 v4, 0x2

    if-nez v7, :cond_73d

    move/from16 v2, v30

    move/from16 v1, v40

    move-object/from16 v3, v46

    const/4 v5, -0x1

    goto/16 :goto_7b9

    .line 137
    :cond_73d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    move/from16 v1, v40

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->g(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 139
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 140
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzad;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    move/from16 v2, v53

    .line 141
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzad;->x(I)Lcom/google/android/gms/internal/ads/zzad;

    move/from16 v2, v48

    .line 142
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzad;->f(I)Lcom/google/android/gms/internal/ads/zzad;

    move/from16 v8, v47

    .line 143
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzad;->p(F)Lcom/google/android/gms/internal/ads/zzad;

    move/from16 v2, v30

    .line 144
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzad;->r(I)Lcom/google/android/gms/internal/ads/zzad;

    move-object/from16 v11, v43

    .line 145
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzad;->q([B)Lcom/google/android/gms/internal/ads/zzad;

    move/from16 v3, v37

    .line 146
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzad;->v(I)Lcom/google/android/gms/internal/ads/zzad;

    move-object/from16 v3, v35

    .line 147
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    move-object/from16 v8, v34

    .line 148
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzad;->b(Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzad;

    move/from16 v3, v23

    const/4 v5, -0x1

    if-ne v3, v5, :cond_785

    move/from16 v6, v22

    move/from16 v7, v20

    if-ne v6, v5, :cond_789

    if-ne v7, v5, :cond_789

    if-eqz v25, :cond_799

    goto :goto_789

    :cond_785
    move/from16 v7, v20

    move/from16 v6, v22

    .line 149
    :cond_789
    :goto_789
    new-instance v8, Lcom/google/android/gms/internal/ads/zzq;

    if-eqz v25, :cond_792

    .line 150
    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_793

    :cond_792
    const/4 v9, 0x0

    :goto_793
    invoke-direct {v8, v3, v6, v7, v9}, Lcom/google/android/gms/internal/ads/zzq;-><init>(III[B)V

    .line 151
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzad;->g0(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzad;

    :cond_799
    if-eqz v26, :cond_7b1

    invoke-static/range {v26 .. v26}, Lcom/google/android/gms/internal/ads/zzafl;->a(Lcom/google/android/gms/internal/ads/zzafl;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfsr;->c(J)I

    move-result v3

    .line 152
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzad;->d0(I)Lcom/google/android/gms/internal/ads/zzad;

    invoke-static/range {v26 .. v26}, Lcom/google/android/gms/internal/ads/zzafl;->b(Lcom/google/android/gms/internal/ads/zzafl;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfsr;->c(J)I

    move-result v3

    .line 153
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzad;->o(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 154
    :cond_7b1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v0

    move-object/from16 v3, v46

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    :goto_7b9
    add-int v13, v42, v36

    .line 155
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    add-int/lit8 v0, v17, 0x1

    move-object/from16 v12, p4

    move v7, v1

    move v6, v2

    move-object v2, v3

    move-object/from16 v25, v14

    move-object v10, v15

    move-object/from16 v5, v16

    move/from16 v9, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v21

    move/from16 v3, v24

    move-object/from16 v13, v32

    move-object/from16 v11, v41

    const/16 v4, 0xc

    const v8, 0x7374626c

    move-object/from16 v1, p1

    goto/16 :goto_19e

    :cond_7df
    move-object v3, v2

    move/from16 v18, v9

    move-object/from16 v41, v11

    move-object/from16 v32, v13

    move-object/from16 v21, v14

    move-object/from16 v19, v15

    move-object/from16 v14, v25

    const/4 v4, 0x2

    const/4 v5, -0x1

    const v0, 0x65647473

    move-object/from16 v2, v41

    .line 156
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzafh;->c(I)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object v0

    if-eqz v0, :cond_80a

    .line 157
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafr;->h(Lcom/google/android/gms/internal/ads/zzafh;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_80a

    .line 158
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [J

    .line 159
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v30, v0

    goto :goto_80d

    :cond_80a
    const/4 v1, 0x0

    const/16 v30, 0x0

    :goto_80d
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    if-nez v0, :cond_815

    move-object/from16 v0, p7

    goto/16 :goto_61

    :cond_815
    new-instance v8, Lcom/google/android/gms/internal/ads/zzagg;

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzafq;->a(Lcom/google/android/gms/internal/ads/zzafq;)I

    move-result v17

    move-object/from16 v0, v19

    .line 160
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzafn;->d:I

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzafn;->a:[Lcom/google/android/gms/internal/ads/zzagh;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzafn;->c:I

    move-object/from16 v16, v8

    move-wide/from16 v21, v38

    move-wide/from16 v23, v28

    move-object/from16 v25, v0

    move/from16 v26, v6

    move-object/from16 v27, v7

    move/from16 v28, v3

    move-object/from16 v29, v1

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/internal/ads/zzagg;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzaf;I[Lcom/google/android/gms/internal/ads/zzagh;I[J[J)V

    move-object/from16 v0, p7

    .line 162
    :goto_842
    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/zzfnj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzagg;

    if-eqz v1, :cond_e2e

    const v3, 0x6d646961

    .line 163
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzafh;->c(I)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object v2

    .line 164
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x6d696e66

    .line 165
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzafh;->c(I)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object v2

    .line 166
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7374626c

    .line 167
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzafh;->c(I)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object v2

    .line 168
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7374737a

    .line 169
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v3

    if-eqz v3, :cond_879

    new-instance v6, Lcom/google/android/gms/internal/ads/zzafo;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    .line 170
    invoke-direct {v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzafo;-><init>(Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzaf;)V

    goto :goto_887

    :cond_879
    const v3, 0x73747a32

    .line 171
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v3

    if-eqz v3, :cond_e26

    .line 172
    new-instance v6, Lcom/google/android/gms/internal/ads/zzafp;

    .line 173
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzafp;-><init>(Lcom/google/android/gms/internal/ads/zzafi;)V

    .line 174
    :goto_887
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzafm;->zzb()I

    move-result v3

    if-nez v3, :cond_8ae

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagj;

    const/4 v3, 0x0

    new-array v4, v3, [J

    new-array v5, v3, [I

    const/16 v19, 0x0

    new-array v6, v3, [J

    new-array v7, v3, [I

    const-wide/16 v22, 0x0

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 175
    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzagj;-><init>(Lcom/google/android/gms/internal/ads/zzagg;[J[II[J[IJ)V

    :goto_8aa
    move-object/from16 v0, v32

    goto/16 :goto_e22

    :cond_8ae
    const v7, 0x7374636f

    .line 176
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v7

    if-nez v7, :cond_8c4

    const v7, 0x636f3634

    .line 177
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v7

    .line 178
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v7

    const/4 v7, 0x1

    goto :goto_8c6

    :cond_8c4
    move-object v8, v7

    const/4 v7, 0x0

    .line 179
    :goto_8c6
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const v9, 0x73747363

    .line 180
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v9

    .line 181
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const v10, 0x73747473

    .line 183
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v10

    .line 184
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const v11, 0x73747373

    .line 186
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v11

    if-eqz v11, :cond_8ec

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    goto :goto_8ed

    :cond_8ec
    const/4 v11, 0x0

    :goto_8ed
    const v12, 0x63747473

    .line 187
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v2

    if-eqz v2, :cond_8f9

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    goto :goto_8fa

    :cond_8f9
    const/4 v2, 0x0

    :goto_8fa
    new-instance v12, Lcom/google/android/gms/internal/ads/zzafk;

    .line 188
    invoke-direct {v12, v9, v8, v7}, Lcom/google/android/gms/internal/ads/zzafk;-><init>(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzen;Z)V

    const/16 v7, 0xc

    .line 189
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 190
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v8

    add-int/2addr v8, v5

    .line 191
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v9

    .line 192
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v13

    if-eqz v2, :cond_91b

    .line 193
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 194
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v15

    goto :goto_91c

    :cond_91b
    const/4 v15, 0x0

    :goto_91c
    if-eqz v11, :cond_930

    .line 195
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 196
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v7

    if-lez v7, :cond_92e

    .line 197
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_933

    :cond_92e
    const/4 v11, 0x0

    goto :goto_931

    :cond_930
    const/4 v7, 0x0

    :goto_931
    const/16 v16, -0x1

    :goto_933
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzafm;->zza()I

    move-result v4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    .line 198
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    if-eq v4, v5, :cond_9e2

    const-string v5, "audio/raw"

    .line 199
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_955

    const-string v5, "audio/g711-mlaw"

    .line 200
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_955

    const-string v5, "audio/g711-alaw"

    .line 201
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e2

    :cond_955
    if-nez v8, :cond_9e2

    if-nez v15, :cond_9e1

    if-nez v7, :cond_9e1

    iget v0, v12, Lcom/google/android/gms/internal/ads/zzafk;->a:I

    new-array v2, v0, [J

    new-array v5, v0, [I

    .line 202
    :goto_961
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzafk;->a()Z

    move-result v6

    if-eqz v6, :cond_972

    iget v6, v12, Lcom/google/android/gms/internal/ads/zzafk;->b:I

    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzafk;->d:J

    .line 203
    aput-wide v7, v2, v6

    iget v7, v12, Lcom/google/android/gms/internal/ads/zzafk;->c:I

    .line 204
    aput v7, v5, v6

    goto :goto_961

    :cond_972
    int-to-long v6, v13

    const/16 v8, 0x2000

    .line 205
    div-int/2addr v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_978
    if-ge v9, v0, :cond_984

    .line 206
    aget v11, v5, v9

    .line 207
    invoke-static {v11, v8}, Lcom/google/android/gms/internal/ads/zzew;->P(II)I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_978

    .line 208
    :cond_984
    new-array v9, v10, [J

    .line 209
    new-array v11, v10, [I

    .line 210
    new-array v12, v10, [J

    .line 211
    new-array v10, v10, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_991
    if-ge v13, v0, :cond_9d7

    .line 212
    aget v17, v5, v13

    .line 213
    aget-wide v20, v2, v13

    move/from16 v54, v17

    move/from16 v17, v0

    move/from16 v0, v54

    :goto_99d
    if-lez v0, :cond_9cb

    .line 214
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 215
    aput-wide v20, v9, v16

    move-object/from16 v22, v2

    mul-int v2, v4, v18

    .line 216
    aput v2, v11, v16

    .line 217
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v23, v4

    move-object v2, v5

    int-to-long v4, v14

    mul-long v4, v4, v6

    .line 218
    aput-wide v4, v12, v16

    const/4 v4, 0x1

    .line 219
    aput v4, v10, v16

    .line 220
    aget v4, v11, v16

    int-to-long v4, v4

    add-long v20, v20, v4

    add-int v14, v14, v18

    sub-int v0, v0, v18

    add-int/lit8 v16, v16, 0x1

    move-object v5, v2

    move-object/from16 v2, v22

    move/from16 v4, v23

    goto :goto_99d

    :cond_9cb
    move-object/from16 v22, v2

    move/from16 v23, v4

    move-object v2, v5

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    move-object/from16 v2, v22

    goto :goto_991

    :cond_9d7
    int-to-long v4, v14

    mul-long v6, v6, v4

    move-object v13, v1

    move-wide v0, v6

    move-object v2, v9

    move-object v14, v12

    move v12, v15

    goto/16 :goto_b96

    :cond_9e1
    const/4 v8, 0x0

    .line 221
    :cond_9e2
    new-array v0, v3, [J

    new-array v4, v3, [I

    new-array v5, v3, [J

    move/from16 v17, v7

    new-array v7, v3, [I

    move-object/from16 v22, v1

    move v1, v13

    move/from16 v23, v15

    move/from16 v13, v16

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move/from16 v16, v8

    move v15, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_a02
    if-ge v8, v3, :cond_acb

    move-wide/from16 v29, v25

    const/16 v25, 0x1

    :goto_a08
    if-nez v18, :cond_a2d

    .line 222
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzafk;->a()Z

    move-result v25

    if-eqz v25, :cond_a25

    move-object/from16 v26, v10

    move-object/from16 v34, v11

    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/zzafk;->d:J

    move/from16 v35, v3

    iget v3, v12, Lcom/google/android/gms/internal/ads/zzafk;->c:I

    move/from16 v18, v3

    move-wide/from16 v29, v10

    move-object/from16 v10, v26

    move-object/from16 v11, v34

    move/from16 v3, v35

    goto :goto_a08

    :cond_a25
    move/from16 v35, v3

    move-object/from16 v26, v10

    move-object/from16 v34, v11

    const/4 v3, 0x0

    goto :goto_a35

    :cond_a2d
    move/from16 v35, v3

    move-object/from16 v26, v10

    move-object/from16 v34, v11

    move/from16 v3, v18

    :goto_a35
    if-nez v25, :cond_a4f

    const-string v1, "Unexpected end of chunk data"

    .line 223
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 225
    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 226
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 227
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    move v3, v8

    goto/16 :goto_acd

    :cond_a4f
    if-nez v2, :cond_a54

    :goto_a51
    move/from16 v10, v24

    goto :goto_a6b

    :cond_a54
    :goto_a54
    if-nez v20, :cond_a67

    if-lez v23, :cond_a63

    add-int/lit8 v23, v23, -0x1

    .line 228
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v20

    .line 229
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v24

    goto :goto_a54

    :cond_a63
    const/4 v10, -0x1

    const/16 v20, 0x0

    goto :goto_a68

    :cond_a67
    const/4 v10, -0x1

    :goto_a68
    add-int/lit8 v20, v20, -0x1

    goto :goto_a51

    .line 230
    :goto_a6b
    aput-wide v29, v0, v8

    .line 231
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzafm;->a()I

    move-result v11

    aput v11, v4, v8

    if-le v11, v9, :cond_a76

    move v9, v11

    :cond_a76
    move-object/from16 v25, v12

    int-to-long v11, v10

    add-long v11, v27, v11

    .line 232
    aput-wide v11, v5, v8

    if-nez v34, :cond_a81

    const/4 v11, 0x1

    goto :goto_a82

    :cond_a81
    const/4 v11, 0x0

    .line 233
    :goto_a82
    aput v11, v7, v8

    if-ne v8, v13, :cond_a97

    const/4 v11, 0x1

    .line 234
    aput v11, v7, v8

    add-int/lit8 v17, v17, -0x1

    if-lez v17, :cond_a97

    .line 235
    invoke-static/range {v34 .. v34}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v11

    const/4 v12, -0x1

    add-int/2addr v11, v12

    move v13, v11

    :cond_a97
    int-to-long v11, v1

    add-long v27, v27, v11

    add-int/lit8 v11, v15, -0x1

    if-nez v11, :cond_aaf

    if-lez v16, :cond_aad

    .line 237
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v1

    .line 238
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v11

    add-int/lit8 v16, v16, -0x1

    move v15, v1

    move v1, v11

    goto :goto_ab0

    :cond_aad
    const/4 v15, 0x0

    goto :goto_ab0

    :cond_aaf
    move v15, v11

    .line 239
    :goto_ab0
    aget v11, v4, v8

    int-to-long v11, v11

    add-long v11, v29, v11

    const/16 v21, -0x1

    add-int/lit8 v18, v3, -0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v24, v10

    move-object/from16 v10, v26

    move/from16 v3, v35

    move-wide/from16 v54, v11

    move-object/from16 v12, v25

    move-wide/from16 v25, v54

    move-object/from16 v11, v34

    goto/16 :goto_a02

    :cond_acb
    move/from16 v35, v3

    :goto_acd
    move/from16 v10, v24

    int-to-long v10, v10

    add-long v10, v27, v10

    if-eqz v2, :cond_ae4

    :goto_ad4
    if-lez v23, :cond_ae4

    .line 240
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v1

    if-eqz v1, :cond_ade

    const/4 v1, 0x0

    goto :goto_ae5

    .line 241
    :cond_ade
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    add-int/lit8 v23, v23, -0x1

    goto :goto_ad4

    :cond_ae4
    const/4 v1, 0x1

    :goto_ae5
    if-nez v17, :cond_b32

    if-nez v15, :cond_b27

    if-nez v18, :cond_b1b

    if-nez v16, :cond_b11

    if-nez v20, :cond_b05

    if-nez v1, :cond_afb

    move-object/from16 v16, v0

    move-object/from16 v13, v22

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_b0f

    :cond_afb
    move-object/from16 v16, v0

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v13, v22

    goto/16 :goto_b8c

    :cond_b05
    move-object/from16 v16, v0

    move v12, v1

    move/from16 v8, v20

    move-object/from16 v13, v22

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_b0f
    const/4 v15, 0x0

    goto :goto_b3f

    :cond_b11
    move v12, v1

    move/from16 v6, v16

    move/from16 v8, v20

    move-object/from16 v13, v22

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_b25

    :cond_b1b
    move v12, v1

    move/from16 v6, v16

    move/from16 v2, v18

    move/from16 v8, v20

    move-object/from16 v13, v22

    const/4 v1, 0x0

    :goto_b25
    const/4 v15, 0x0

    goto :goto_b3d

    :cond_b27
    move v12, v1

    move/from16 v6, v16

    move/from16 v2, v18

    move/from16 v8, v20

    move-object/from16 v13, v22

    const/4 v1, 0x0

    goto :goto_b3d

    :cond_b32
    move v12, v1

    move/from16 v6, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v8, v20

    move-object/from16 v13, v22

    :goto_b3d
    move-object/from16 v16, v0

    .line 242
    :goto_b3f
    iget v0, v13, Lcom/google/android/gms/internal/ads/zzagg;->a:I

    move/from16 v17, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "Inconsistent stbl box for track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesInChunk "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-eq v0, v12, :cond_b80

    const-string v0, ", ctts invalid"

    goto :goto_b82

    :cond_b80
    const-string v0, ""

    :goto_b82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b8c
    move-object v14, v5

    move v12, v9

    move-wide v0, v10

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v11, v18

    move-object v10, v7

    :goto_b96
    const-wide/32 v6, 0xf4240

    .line 245
    iget-wide v8, v13, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    move-wide v4, v0

    .line 246
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v22

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzagg;->h:[J

    if-nez v4, :cond_bc1

    const-wide/32 v0, 0xf4240

    iget-wide v3, v13, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    .line 247
    invoke-static {v14, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzew;->s([JJJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagj;

    move-object v15, v0

    move-object/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v20, v14

    move-object/from16 v21, v10

    .line 248
    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzagj;-><init>(Lcom/google/android/gms/internal/ads/zzagg;[J[II[J[IJ)V

    :goto_bbe
    move-object v2, v0

    goto/16 :goto_8aa

    :cond_bc1
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c64

    iget v5, v13, Lcom/google/android/gms/internal/ads/zzagg;->b:I

    if-ne v5, v6, :cond_c64

    .line 249
    array-length v5, v14

    const/4 v6, 0x2

    if-lt v5, v6, :cond_c64

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzagg;->i:[J

    .line 250
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 251
    aget-wide v15, v5, v6

    .line 252
    aget-wide v17, v4, v6

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    iget-wide v6, v13, Lcom/google/android/gms/internal/ads/zzagg;->d:J

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    .line 253
    invoke-static/range {v17 .. v22}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v4

    add-long v17, v15, v4

    move-object v4, v14

    move-wide v5, v0

    move-wide v7, v15

    move-object/from16 v21, v10

    move-wide/from16 v9, v17

    .line 254
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzafr;->o([JJJJ)Z

    move-result v4

    if-eqz v4, :cond_c61

    sub-long v5, v0, v17

    const/4 v4, 0x0

    .line 255
    aget-wide v7, v14, v4

    sub-long v22, v15, v7

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    int-to-long v7, v4

    iget-wide v9, v13, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    .line 256
    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v15

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    .line 257
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    int-to-long v7, v4

    iget-wide v9, v13, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    .line 258
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v15, v6

    if-nez v8, :cond_c20

    cmp-long v8, v4, v6

    if-eqz v8, :cond_c61

    const-wide/16 v6, 0x0

    goto :goto_c21

    :cond_c20
    move-wide v6, v15

    :goto_c21
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v6, v8

    if-gtz v10, :cond_c61

    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v4, v8

    if-gtz v10, :cond_c61

    long-to-int v0, v6

    move-object/from16 v6, p1

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzaaj;->a:I

    long-to-int v0, v4

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzaaj;->b:I

    const-wide/32 v0, 0xf4240

    iget-wide v3, v13, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    .line 259
    invoke-static {v14, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzew;->s([JJJ)V

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzagg;->h:[J

    const/4 v1, 0x0

    .line 260
    aget-wide v15, v0, v1

    const-wide/32 v17, 0xf4240

    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzagg;->d:J

    move-wide/from16 v19, v0

    .line 261
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v22

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagj;

    move-object v15, v0

    move-object/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v20, v14

    .line 262
    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzagj;-><init>(Lcom/google/android/gms/internal/ads/zzagg;[J[II[J[IJ)V

    goto/16 :goto_bbe

    :cond_c61
    move-object/from16 v6, p1

    goto :goto_c68

    :cond_c64
    move-object/from16 v6, p1

    move-object/from16 v21, v10

    :goto_c68
    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzagg;->h:[J

    .line 263
    array-length v7, v4

    const/4 v5, 0x1

    if-ne v7, v5, :cond_cb6

    const/4 v5, 0x0

    aget-wide v7, v4, v5

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_cb5

    iget-object v3, v13, Lcom/google/android/gms/internal/ads/zzagg;->i:[J

    .line 264
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    aget-wide v7, v3, v5

    const/4 v3, 0x0

    .line 266
    :goto_c7f
    array-length v4, v14

    if-ge v3, v4, :cond_c96

    .line 267
    aget-wide v4, v14, v3

    sub-long v15, v4, v7

    const-wide/32 v17, 0xf4240

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    move-wide/from16 v19, v4

    .line 268
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v4

    aput-wide v4, v14, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c7f

    :cond_c96
    sub-long v15, v0, v7

    const-wide/32 v17, 0xf4240

    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    move-wide/from16 v19, v0

    .line 269
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v22

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagj;

    move-object v15, v0

    move-object/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v20, v14

    .line 270
    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzagj;-><init>(Lcom/google/android/gms/internal/ads/zzagg;[J[II[J[IJ)V

    goto/16 :goto_bbe

    :cond_cb5
    const/4 v7, 0x1

    :cond_cb6
    iget v0, v13, Lcom/google/android/gms/internal/ads/zzagg;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_cbd

    const/4 v0, 0x1

    goto :goto_cbe

    :cond_cbd
    const/4 v0, 0x0

    :goto_cbe
    new-array v1, v7, [I

    new-array v4, v7, [I

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzagg;->i:[J

    .line 271
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 272
    :goto_ccb
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzagg;->h:[J

    .line 273
    array-length v6, v15

    if-ge v8, v6, :cond_d3a

    move-object v6, v11

    move/from16 v16, v12

    .line 274
    aget-wide v11, v5, v8

    const-wide/16 v17, -0x1

    cmp-long v19, v11, v17

    if-eqz v19, :cond_d20

    .line 275
    aget-wide v22, v15, v8

    move-object v15, v5

    move-object/from16 v17, v6

    iget-wide v5, v13, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    move-object/from16 v18, v2

    move/from16 v19, v3

    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzagg;->d:J

    move-wide/from16 v24, v5

    move-wide/from16 v26, v2

    .line 276
    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v2

    const/4 v5, 0x1

    .line 277
    invoke-static {v14, v11, v12, v5, v5}, Lcom/google/android/gms/internal/ads/zzew;->O([JJZZ)I

    move-result v6

    aput v6, v1, v8

    add-long/2addr v11, v2

    const/4 v2, 0x0

    .line 278
    invoke-static {v14, v11, v12, v0, v2}, Lcom/google/android/gms/internal/ads/zzew;->M([JJZZ)I

    move-result v3

    aput v3, v4, v8

    .line 279
    :goto_cff
    aget v3, v1, v8

    aget v6, v4, v8

    move-object/from16 v11, v21

    if-ge v3, v6, :cond_d14

    aget v12, v11, v3

    and-int/2addr v12, v5

    if-nez v12, :cond_d14

    add-int/lit8 v3, v3, 0x1

    .line 280
    aput v3, v1, v8

    move-object/from16 v21, v11

    const/4 v5, 0x1

    goto :goto_cff

    :cond_d14
    sub-int v5, v6, v3

    add-int/2addr v7, v5

    if-eq v10, v3, :cond_d1b

    const/4 v3, 0x1

    goto :goto_d1c

    :cond_d1b
    const/4 v3, 0x0

    :goto_d1c
    or-int/2addr v3, v9

    move v9, v3

    move v10, v6

    goto :goto_d2a

    :cond_d20
    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object v15, v5

    move-object/from16 v17, v6

    move-object/from16 v11, v21

    const/4 v2, 0x0

    :goto_d2a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, p1

    move-object/from16 v21, v11

    move-object v5, v15

    move/from16 v12, v16

    move-object/from16 v11, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto :goto_ccb

    :cond_d3a
    move-object/from16 v18, v2

    move-object/from16 v17, v11

    move/from16 v16, v12

    move-object/from16 v11, v21

    const/4 v2, 0x0

    if-eq v7, v3, :cond_d47

    const/4 v0, 0x1

    goto :goto_d48

    :cond_d47
    const/4 v0, 0x0

    :goto_d48
    or-int/2addr v0, v9

    if-eqz v0, :cond_d4e

    .line 281
    new-array v3, v7, [J

    goto :goto_d50

    :cond_d4e
    move-object/from16 v3, v18

    :goto_d50
    if-eqz v0, :cond_d55

    .line 282
    new-array v5, v7, [I

    goto :goto_d57

    :cond_d55
    move-object/from16 v5, v17

    :goto_d57
    const/4 v6, 0x1

    if-ne v6, v0, :cond_d5c

    const/4 v8, 0x0

    goto :goto_d5e

    :cond_d5c
    move/from16 v8, v16

    :goto_d5e
    if-eqz v0, :cond_d63

    .line 283
    new-array v6, v7, [I

    goto :goto_d64

    :cond_d63
    move-object v6, v11

    .line 284
    :goto_d64
    new-array v7, v7, [J

    move/from16 v25, v8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_d6c
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzagg;->h:[J

    .line 285
    array-length v15, v15

    if-ge v10, v15, :cond_dfd

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzagg;->i:[J

    .line 286
    aget-wide v26, v15, v10

    .line 287
    aget v15, v1, v10

    .line 288
    aget v2, v4, v10

    move-object/from16 v16, v1

    if-eqz v0, :cond_d8f

    sub-int v1, v2, v15

    move-object/from16 v28, v4

    move-object/from16 v4, v18

    .line 289
    invoke-static {v4, v15, v3, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v4, v17

    .line 290
    invoke-static {v4, v15, v5, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    invoke-static {v11, v15, v6, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d93

    :cond_d8f
    move-object/from16 v28, v4

    move-object/from16 v4, v17

    :goto_d93
    move/from16 v1, v25

    :goto_d95
    if-ge v15, v2, :cond_ddd

    const-wide/32 v21, 0xf4240

    move/from16 v29, v2

    move-object/from16 v17, v3

    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzagg;->d:J

    move-wide/from16 v19, v8

    move-wide/from16 v23, v2

    .line 292
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v2

    .line 293
    aget-wide v19, v14, v15

    move-wide/from16 v21, v8

    sub-long v8, v19, v26

    move/from16 v20, v10

    move-object/from16 v19, v11

    const-wide/16 v10, 0x0

    .line 294
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v33

    const-wide/32 v35, 0xf4240

    iget-wide v8, v13, Lcom/google/android/gms/internal/ads/zzagg;->c:J

    move-wide/from16 v37, v8

    .line 295
    invoke-static/range {v33 .. v38}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 296
    aput-wide v2, v7, v12

    if-eqz v0, :cond_dce

    .line 297
    aget v2, v5, v12

    if-le v2, v1, :cond_dce

    .line 298
    aget v1, v4, v15

    :cond_dce
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    move-object/from16 v11, v19

    move/from16 v10, v20

    move-wide/from16 v8, v21

    move/from16 v2, v29

    goto :goto_d95

    :cond_ddd
    move-object/from16 v17, v3

    move-wide/from16 v21, v8

    move/from16 v20, v10

    move-object/from16 v19, v11

    const-wide/16 v10, 0x0

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzagg;->h:[J

    .line 299
    aget-wide v8, v2, v20

    add-long v8, v21, v8

    add-int/lit8 v2, v20, 0x1

    move/from16 v25, v1

    move v10, v2

    move-object/from16 v1, v16

    move-object/from16 v11, v19

    const/4 v2, 0x0

    move-object/from16 v17, v4

    move-object/from16 v4, v28

    goto/16 :goto_d6c

    :cond_dfd
    move-object/from16 v17, v3

    move-wide/from16 v21, v8

    const-wide/32 v0, 0xf4240

    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzagg;->d:J

    move-wide/from16 v19, v21

    move-wide/from16 v21, v0

    move-wide/from16 v23, v2

    .line 300
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v22

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagj;

    move-object v15, v2

    move-object/from16 v16, v13

    move-object/from16 v18, v5

    move/from16 v19, v25

    move-object/from16 v20, v7

    move-object/from16 v21, v6

    .line 301
    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzagj;-><init>(Lcom/google/android/gms/internal/ads/zzagg;[J[II[J[IJ)V

    goto/16 :goto_8aa

    .line 302
    :goto_e22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e30

    :cond_e26
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 303
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_e2e
    move-object/from16 v0, v32

    :goto_e30
    add-int/lit8 v15, v31, 0x1

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    move-object v13, v0

    move-object/from16 v0, p0

    goto/16 :goto_c

    :cond_e3b
    const/4 v1, 0x0

    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    .line 304
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_e43
    move-object v0, v13

    return-object v0
.end method

.method public static d(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x4

    .line 3
    :cond_13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    return-void
.end method

.method private static e(I)I
    .registers 2

    const v0, 0x736f756e

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const v0, 0x76696465

    if-ne p0, v0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    const v0, 0x74657874

    if-eq p0, v0, :cond_2c

    const v0, 0x7362746c

    if-eq p0, v0, :cond_2c

    const v0, 0x73756274

    if-eq p0, v0, :cond_2c

    const v0, 0x636c6370

    if-ne p0, v0, :cond_23

    goto :goto_2c

    :cond_23
    const v0, 0x6d657461

    if-ne p0, v0, :cond_2a

    const/4 p0, 0x5

    return p0

    :cond_2a
    const/4 p0, -0x1

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x3

    return p0
.end method

.method private static f(Lcom/google/android/gms/internal/ads/zzen;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method

.method private static g(Lcom/google/android/gms/internal/ads/zzen;)I
    .registers 2

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result p0

    return p0
.end method

.method private static h(Lcom/google/android/gms/internal/ads/zzafh;)Landroid/util/Pair;
    .registers 9

    const v0, 0x656c7374

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafi;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v1

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v1, :cond_56

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2d

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v6

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v6

    :goto_31
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_3a

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->z()J

    move-result-wide v6

    goto :goto_3f

    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v6

    int-to-long v6, v6

    :goto_3f
    aput-wide v6, v3, v4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->G()S

    move-result v6

    if-ne v6, v5, :cond_4e

    const/4 v5, 0x2

    .line 8
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 9
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_56
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static i(Lcom/google/android/gms/internal/ads/zzen;)Landroid/util/Pair;
    .registers 6

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v1

    if-nez v1, :cond_12

    const/16 v2, 0x8

    goto :goto_14

    :cond_12
    const/16 v2, 0x10

    .line 3
    :goto_14
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v2

    if-nez v1, :cond_1e

    const/4 v0, 0x4

    .line 5
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result p0

    shr-int/lit8 v0, p0, 0xa

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 p0, p0, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v1, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static j(Lcom/google/android/gms/internal/ads/zzen;II)Landroid/util/Pair;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    :goto_6
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11b

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_19

    const/4 v7, 0x1

    goto :goto_1a

    :cond_19
    const/4 v7, 0x0

    :goto_1a
    const-string v8, "childAtomSize must be positive"

    .line 3
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_118

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2f
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_65

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v12

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_4d

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_63

    :cond_4d
    const v3, 0x7363686d

    if-ne v14, v3, :cond_5c

    .line 9
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfnh;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/zzen;->F(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_63

    :cond_5c
    const v3, 0x73636869

    if-ne v14, v3, :cond_63

    move v9, v7

    move v10, v12

    :cond_63
    :goto_63
    add-int/2addr v7, v12

    goto :goto_2f

    :cond_65
    const-string v3, "cenc"

    .line 11
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string v3, "cbc1"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string v3, "cens"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string v3, "cbcs"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    goto :goto_89

    :cond_86
    const/4 v3, 0x0

    goto/16 :goto_114

    :cond_89
    :goto_89
    if-eqz v15, :cond_8d

    const/4 v3, 0x1

    goto :goto_8e

    :cond_8d
    const/4 v3, 0x0

    :goto_8e
    const-string v7, "frma atom is mandatory"

    .line 15
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_97

    const/4 v3, 0x1

    goto :goto_98

    :cond_97
    const/4 v3, 0x0

    :goto_98
    const-string v7, "schi atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_9f
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_103

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_100

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzafj;->a(I)I

    move-result v3

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    if-nez v3, :cond_c6

    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_d0

    .line 23
    :cond_c6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    and-int/lit8 v3, v3, 0xf

    shr-int/2addr v7, v13

    move v14, v7

    .line 24
    :goto_d0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v7

    if-ne v7, v5, :cond_d8

    const/4 v10, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v10, 0x0

    .line 25
    :goto_d9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 26
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    if-eqz v10, :cond_f4

    if-nez v12, :cond_f4

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v7

    new-array v8, v7, [B

    .line 28
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    move-object/from16 v16, v8

    goto :goto_f6

    :cond_f4
    const/16 v16, 0x0

    :goto_f6
    new-instance v7, Lcom/google/android/gms/internal/ads/zzagh;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    .line 29
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_105

    :cond_100
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_9f

    :cond_103
    move-object v8, v15

    const/4 v3, 0x0

    :goto_105
    if-eqz v3, :cond_108

    goto :goto_109

    :cond_108
    const/4 v5, 0x0

    :goto_109
    const-string v6, "tenc atom is mandatory"

    .line 30
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    .line 31
    sget v5, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_114
    if-nez v3, :cond_117

    goto :goto_118

    :cond_117
    return-object v3

    :cond_118
    :goto_118
    add-int/2addr v1, v2

    goto/16 :goto_6

    :cond_11b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static k(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzafl;
    .registers 12

    add-int/lit8 p1, p1, 0xc

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafr;->f(Lcom/google/android/gms/internal/ads/zzen;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1b

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :cond_1b
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_26

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :cond_26
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2d

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 9
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafr;->f(Lcom/google/android/gms/internal/ads/zzen;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbt;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "audio/vnd.dts"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_88

    :cond_54
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v3

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafr;->f(Lcom/google/android/gms/internal/ads/zzen;)I

    move-result p1

    .line 21
    new-array v5, p1, [B

    const/4 v6, 0x0

    .line 22
    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    const-wide/16 p0, -0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-gtz v8, :cond_77

    move-wide v8, p0

    goto :goto_78

    :cond_77
    move-wide v8, v3

    :goto_78
    cmp-long v3, v0, v6

    if-lez v3, :cond_7e

    move-wide v6, v0

    goto :goto_7f

    :cond_7e
    move-wide v6, p0

    :goto_7f
    new-instance p0, Lcom/google/android/gms/internal/ads/zzafl;

    move-object v1, p0

    move-object v3, v5

    move-wide v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzafl;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    .line 23
    :cond_88
    :goto_88
    new-instance p0, Lcom/google/android/gms/internal/ads/zzafl;

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzafl;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static l()Ljava/nio/ByteBuffer;
    .registers 2

    const/16 v0, 0x19

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static m(Lcom/google/android/gms/internal/ads/zzen;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzx;Lcom/google/android/gms/internal/ads/zzafn;I)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    .line 1
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_1e

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v9

    .line 3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    goto :goto_24

    :cond_1e
    const/16 v9, 0x8

    .line 4
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    const/4 v9, 0x0

    :goto_24
    const/16 v10, 0x14

    const/16 v11, 0x10

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v9, :cond_4b

    if-ne v9, v13, :cond_2f

    goto :goto_4b

    :cond_2f
    if-ne v9, v12, :cond_4a

    .line 5
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->z()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v7, v14

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v9

    .line 9
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    const/4 v15, 0x0

    goto :goto_69

    :cond_4a
    return-void

    .line 10
    :cond_4b
    :goto_4b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v14

    .line 11
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->t()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v15

    add-int/lit8 v15, v15, -0x4

    .line 13
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v15

    if-ne v9, v13, :cond_68

    .line 15
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :cond_68
    move v9, v14

    :goto_69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v11

    const v14, 0x656e6361

    move/from16 v12, p1

    if-ne v12, v14, :cond_9c

    .line 16
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzafr;->j(Lcom/google/android/gms/internal/ads/zzen;II)Landroid/util/Pair;

    move-result-object v12

    if-eqz v12, :cond_98

    .line 17
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v5, :cond_86

    const/4 v5, 0x0

    goto :goto_90

    .line 18
    :cond_86
    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/ads/zzagh;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzagh;->b:Ljava/lang/String;

    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzx;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v5

    .line 19
    :goto_90
    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzafn;->a:[Lcom/google/android/gms/internal/ads/zzagh;

    .line 20
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/ads/zzagh;

    aput-object v12, v13, p9

    .line 21
    :cond_98
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    move v12, v14

    :cond_9c
    const v13, 0x61632d33

    const v14, 0x616c6163

    const-string v18, "audio/raw"

    const-string v10, "audio/ac4"

    if-ne v12, v13, :cond_ad

    const-string v18, "audio/ac3"

    :goto_aa
    const/4 v12, -0x1

    goto/16 :goto_15f

    :cond_ad
    const v13, 0x65632d33

    if-ne v12, v13, :cond_b5

    const-string v18, "audio/eac3"

    goto :goto_aa

    :cond_b5
    const v13, 0x61632d34

    if-ne v12, v13, :cond_bd

    move-object/from16 v18, v10

    goto :goto_aa

    :cond_bd
    const v13, 0x64747363

    if-ne v12, v13, :cond_c5

    const-string v18, "audio/vnd.dts"

    goto :goto_aa

    :cond_c5
    const v13, 0x64747368

    if-eq v12, v13, :cond_15b

    const v13, 0x6474736c

    if-ne v12, v13, :cond_d1

    goto/16 :goto_15b

    :cond_d1
    const v13, 0x64747365

    if-ne v12, v13, :cond_d9

    const-string v18, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_aa

    :cond_d9
    const v13, 0x64747378

    if-ne v12, v13, :cond_e1

    const-string v18, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_aa

    :cond_e1
    const v13, 0x73616d72

    if-ne v12, v13, :cond_e9

    const-string v18, "audio/3gpp"

    goto :goto_aa

    :cond_e9
    const v13, 0x73617762

    if-ne v12, v13, :cond_f1

    const-string v18, "audio/amr-wb"

    goto :goto_aa

    :cond_f1
    const v13, 0x6c70636d

    if-eq v12, v13, :cond_159

    const v13, 0x736f7774

    if-ne v12, v13, :cond_fc

    goto :goto_159

    :cond_fc
    const v13, 0x74776f73

    if-ne v12, v13, :cond_104

    const/high16 v12, 0x10000000

    goto :goto_15f

    :cond_104
    const v13, 0x2e6d7032

    if-eq v12, v13, :cond_155

    const v13, 0x2e6d7033

    if-ne v12, v13, :cond_10f

    goto :goto_155

    :cond_10f
    const v13, 0x6d686131

    if-ne v12, v13, :cond_117

    const-string v18, "audio/mha1"

    goto :goto_aa

    :cond_117
    const v13, 0x6d686d31

    if-ne v12, v13, :cond_11f

    const-string v18, "audio/mhm1"

    goto :goto_aa

    :cond_11f
    if-ne v12, v14, :cond_124

    const-string v18, "audio/alac"

    goto :goto_aa

    :cond_124
    const v13, 0x616c6177

    if-ne v12, v13, :cond_12d

    const-string v18, "audio/g711-alaw"

    goto/16 :goto_aa

    :cond_12d
    const v13, 0x756c6177

    if-ne v12, v13, :cond_136

    const-string v18, "audio/g711-mlaw"

    goto/16 :goto_aa

    :cond_136
    const v13, 0x4f707573

    if-ne v12, v13, :cond_13f

    const-string v18, "audio/opus"

    goto/16 :goto_aa

    :cond_13f
    const v13, 0x664c6143

    if-ne v12, v13, :cond_148

    const-string v18, "audio/flac"

    goto/16 :goto_aa

    :cond_148
    const v13, 0x6d6c7061

    if-ne v12, v13, :cond_151

    const-string v18, "audio/true-hd"

    goto/16 :goto_aa

    :cond_151
    const/4 v12, -0x1

    const/16 v18, 0x0

    goto :goto_15f

    :cond_155
    :goto_155
    const-string v18, "audio/mpeg"

    goto/16 :goto_aa

    :cond_159
    :goto_159
    const/4 v12, 0x2

    goto :goto_15f

    :cond_15b
    :goto_15b
    const-string v18, "audio/vnd.dts.hd"

    goto/16 :goto_aa

    :goto_15f
    move-object/from16 v13, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_167
    sub-int v8, v11, v1

    if-ge v8, v2, :cond_393

    .line 22
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v8

    if-lez v8, :cond_176

    const/4 v14, 0x1

    goto :goto_177

    :cond_176
    const/4 v14, 0x0

    :goto_177
    const-string v1, "childAtomSize must be positive"

    .line 24
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v14

    const v2, 0x6d686143

    if-ne v14, v2, :cond_1a1

    add-int/lit8 v1, v8, -0xd

    add-int/lit8 v2, v11, 0xd

    .line 26
    new-array v14, v1, [B

    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 29
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v20

    move/from16 v21, v12

    :goto_198
    const/4 v12, 0x0

    const/16 v14, 0x14

    const/16 v16, 0x2

    const/16 v17, 0x1

    goto/16 :goto_387

    :cond_1a1
    const v2, 0x65736473

    if-eq v14, v2, :cond_353

    if-eqz p6, :cond_1f8

    const v2, 0x77617665

    if-ne v14, v2, :cond_1f8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v2

    if-lt v2, v11, :cond_1b8

    move/from16 v21, v2

    const/4 v2, 0x0

    const/4 v14, 0x1

    goto :goto_1bc

    :cond_1b8
    move/from16 v21, v2

    const/4 v2, 0x0

    const/4 v14, 0x0

    .line 30
    :goto_1bc
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    move/from16 v2, v21

    :goto_1c1
    sub-int v14, v2, v11

    if-ge v14, v8, :cond_1eb

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v14

    if-lez v14, :cond_1d2

    move/from16 v21, v12

    const/4 v12, 0x1

    goto :goto_1d5

    :cond_1d2
    move/from16 v21, v12

    const/4 v12, 0x0

    .line 33
    :goto_1d5
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v12

    move-object/from16 v22, v1

    const v1, 0x65736473

    if-eq v12, v1, :cond_1e9

    add-int/2addr v2, v14

    move/from16 v12, v21

    move-object/from16 v1, v22

    goto :goto_1c1

    :cond_1e9
    const/4 v1, -0x1

    goto :goto_1ef

    :cond_1eb
    move/from16 v21, v12

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_1ef
    const/4 v12, 0x0

    const/16 v14, 0x14

    const/16 v16, 0x2

    const/16 v17, 0x1

    goto/16 :goto_35e

    :cond_1f8
    move/from16 v21, v12

    const v1, 0x64616333

    if-ne v14, v1, :cond_20f

    add-int/lit8 v1, v11, 0x8

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 36
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzyv;->c(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    goto :goto_198

    :cond_20f
    const v1, 0x64656333

    if-ne v14, v1, :cond_225

    add-int/lit8 v1, v11, 0x8

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 38
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzyv;->d(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    goto/16 :goto_198

    :cond_225
    const v1, 0x64616334

    if-ne v14, v1, :cond_26a

    add-int/lit8 v1, v11, 0x8

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 40
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzyy;->b:I

    const/4 v2, 0x1

    .line 41
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v12

    and-int/lit8 v12, v12, 0x20

    new-instance v14, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 43
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 44
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const/4 v1, 0x2

    .line 45
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    shr-int/lit8 v1, v12, 0x5

    if-eq v2, v1, :cond_256

    const v1, 0xac44

    goto :goto_259

    :cond_256
    const v1, 0xbb80

    .line 46
    :goto_259
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 47
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzad;->b(Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzad;

    .line 48
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 49
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    goto/16 :goto_198

    :cond_26a
    const v1, 0x646d6c70

    if-ne v14, v1, :cond_28c

    if-lez v15, :cond_275

    move v7, v15

    const/4 v9, 0x2

    goto/16 :goto_198

    .line 50
    :cond_275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    throw v0

    :cond_28c
    const/4 v1, 0x0

    const v2, 0x64647473

    if-ne v14, v2, :cond_2b1

    .line 52
    new-instance v2, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 53
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzad;->g(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 54
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 55
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 56
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 57
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzad;->b(Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzad;

    .line 58
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    goto/16 :goto_198

    :cond_2b1
    const v2, 0x644f7073

    if-ne v14, v2, :cond_2cf

    add-int/lit8 v2, v8, -0x8

    sget-object v12, Lcom/google/android/gms/internal/ads/zzafr;->a:[B

    .line 60
    array-length v14, v12

    add-int/2addr v14, v2

    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    add-int/lit8 v1, v11, 0x8

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 62
    array-length v1, v12

    invoke-virtual {v0, v14, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 63
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzaas;->c([B)Ljava/util/List;

    move-result-object v20

    goto/16 :goto_198

    :cond_2cf
    const v1, 0x64664c61

    if-ne v14, v1, :cond_302

    add-int/lit8 v1, v8, -0xc

    add-int/lit8 v2, v1, 0x4

    .line 64
    new-array v2, v2, [B

    const/16 v12, 0x66

    const/4 v14, 0x0

    .line 65
    aput-byte v12, v2, v14

    const/16 v12, 0x4c

    const/16 v17, 0x1

    .line 66
    aput-byte v12, v2, v17

    const/16 v12, 0x61

    const/16 v16, 0x2

    .line 67
    aput-byte v12, v2, v16

    const/4 v12, 0x3

    const/16 v14, 0x43

    .line 68
    aput-byte v14, v2, v12

    add-int/lit8 v12, v11, 0xc

    .line 69
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    const/4 v12, 0x4

    .line 70
    invoke-virtual {v0, v2, v12, v1}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 71
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v20

    :cond_2fd
    const/4 v12, 0x0

    const/16 v14, 0x14

    goto/16 :goto_387

    :cond_302
    const v1, 0x616c6163

    const/16 v16, 0x2

    const/16 v17, 0x1

    if-ne v14, v1, :cond_2fd

    add-int/lit8 v2, v8, -0xc

    add-int/lit8 v7, v11, 0xc

    .line 72
    new-array v9, v2, [B

    .line 73
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    const/4 v12, 0x0

    .line 74
    invoke-virtual {v0, v9, v12, v2}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 75
    sget v2, Lcom/google/android/gms/internal/ads/zzdn;->c:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    .line 76
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    const/16 v7, 0x9

    .line 77
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v7

    const/16 v14, 0x14

    .line 79
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 82
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 83
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 84
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v20

    move v9, v2

    goto :goto_387

    :cond_353
    move/from16 v21, v12

    const/4 v12, 0x0

    const/16 v14, 0x14

    const/16 v16, 0x2

    const/16 v17, 0x1

    move v2, v11

    const/4 v1, -0x1

    :goto_35e
    if-eq v2, v1, :cond_387

    .line 85
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzafr;->k(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzafl;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzafl;->c(Lcom/google/android/gms/internal/ads/zzafl;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzafl;->d(Lcom/google/android/gms/internal/ads/zzafl;)[B

    move-result-object v13

    if-eqz v13, :cond_386

    const-string v1, "audio/mp4a-latm"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_382

    .line 87
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzys;->a([B)Lcom/google/android/gms/internal/ads/zzyr;

    move-result-object v1

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzyr;->a:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzyr;->b:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzyr;->c:Ljava/lang/String;

    move-object/from16 v19, v1

    .line 88
    :cond_382
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v20

    :cond_386
    move-object v13, v2

    :cond_387
    :goto_387
    add-int/2addr v11, v8

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v12, v21

    const v14, 0x616c6163

    goto/16 :goto_167

    :cond_393
    move/from16 v21, v12

    .line 89
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    if-nez v0, :cond_3df

    if-eqz v13, :cond_3df

    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 90
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzad;->g(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 91
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    move-object/from16 v1, v19

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 93
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 94
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    move/from16 v8, v21

    .line 95
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzad;->n(I)Lcom/google/android/gms/internal/ads/zzad;

    move-object/from16 v1, v20

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    .line 97
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzad;->b(Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzad;

    .line 98
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v18, :cond_3d9

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzafl;->a(Lcom/google/android/gms/internal/ads/zzafl;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfsr;->c(J)I

    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->d0(I)Lcom/google/android/gms/internal/ads/zzad;

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzafl;->b(Lcom/google/android/gms/internal/ads/zzafl;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfsr;->c(J)I

    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->o(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 101
    :cond_3d9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    :cond_3df
    return-void
.end method

.method private static n(Lcom/google/android/gms/internal/ads/zzen;IIILcom/google/android/gms/internal/ads/zzafn;)V
    .registers 5

    add-int/lit8 p2, p2, 0x10

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->D(C)Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->D(C)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    new-instance p1, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 4
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzad;->g(I)Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p0

    iput-object p0, p4, Lcom/google/android/gms/internal/ads/zzafn;->b:Lcom/google/android/gms/internal/ads/zzaf;

    :cond_20
    return-void
.end method

.method private static o([JJJJ)Z
    .registers 13

    .line 1
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0x4

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzew;->Q(III)I

    move-result v2

    .line 3
    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzew;->Q(III)I

    move-result v0

    .line 4
    aget-wide v4, p0, v3

    cmp-long v1, v4, p3

    if-gtz v1, :cond_27

    aget-wide v1, p0, v2

    cmp-long v4, p3, v1

    if-gez v4, :cond_27

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_27

    cmp-long p0, p5, p1

    if-gtz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    return v3
.end method
