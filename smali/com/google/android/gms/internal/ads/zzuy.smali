###### Class com.google.android.gms.internal.ads.zzuy (com.google.android.gms.internal.ads.zzuy)
.class public final Lcom/google/android/gms/internal/ads/zzuy;
.super Lcom/google/android/gms/internal/ads/zzva;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final f:Lcom/google/android/gms/internal/ads/zzws;

.field private final g:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final h:Lcom/google/android/gms/internal/ads/zzdm;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzcp;[IILcom/google/android/gms/internal/ads/zzws;JJJIIFFLjava/util/List;Lcom/google/android/gms/internal/ads/zzdm;)V
    .registers 21

    move-object v0, p0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzva;-><init>(Lcom/google/android/gms/internal/ads/zzcp;[II)V

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzuy;->f:Lcom/google/android/gms/internal/ads/zzws;

    .line 2
    invoke-static/range {p15 .. p15}, Lcom/google/android/gms/internal/ads/zzfqk;->s(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzuy;->g:Lcom/google/android/gms/internal/ads/zzfqk;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzuy;->h:Lcom/google/android/gms/internal/ads/zzdm;

    return-void
.end method

.method static bridge synthetic c([Lcom/google/android/gms/internal/ads/zzwd;)Lcom/google/android/gms/internal/ads/zzfqk;
    .registers 23

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v5, :cond_2d

    .line 2
    aget-object v5, p0, v2

    if-eqz v5, :cond_26

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzwd;->b:[I

    array-length v5, v5

    if-le v5, v6, :cond_26

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->o()Lcom/google/android/gms/internal/ads/zzfqh;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzuw;

    invoke-direct {v6, v3, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzuw;-><init>(JJ)V

    .line 4
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfqh;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;

    .line 5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_26
    const/4 v3, 0x0

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2d
    new-array v2, v5, [[J

    const/4 v7, 0x0

    :goto_30
    const-wide/16 v8, -0x1

    if-ge v7, v5, :cond_69

    .line 7
    aget-object v10, p0, v7

    if-nez v10, :cond_3d

    new-array v8, v1, [J

    .line 8
    aput-object v8, v2, v7

    goto :goto_66

    :cond_3d
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzwd;->b:[I

    .line 9
    array-length v11, v11

    new-array v11, v11, [J

    aput-object v11, v2, v7

    const/4 v11, 0x0

    :goto_45
    iget-object v12, v10, Lcom/google/android/gms/internal/ads/zzwd;->b:[I

    .line 10
    array-length v13, v12

    if-ge v11, v13, :cond_61

    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzwd;->a:Lcom/google/android/gms/internal/ads/zzcp;

    .line 11
    aget v12, v12, v11

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzcp;->b(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v12

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzaf;->h:I

    int-to-long v12, v12

    .line 12
    aget-object v14, v2, v7

    cmp-long v15, v12, v8

    if-nez v15, :cond_5c

    move-wide v12, v3

    :cond_5c
    aput-wide v12, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_45

    .line 13
    :cond_61
    aget-object v8, v2, v7

    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    :goto_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_69
    new-array v7, v5, [I

    new-array v10, v5, [J

    const/4 v11, 0x0

    :goto_6e
    if-ge v11, v5, :cond_7e

    .line 14
    aget-object v12, v2, v11

    array-length v13, v12

    if-nez v13, :cond_77

    move-wide v13, v3

    goto :goto_79

    :cond_77
    aget-wide v13, v12, v1

    :goto_79
    aput-wide v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6e

    .line 15
    :cond_7e
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzuy;->d(Ljava/util/List;[J)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrs;->c()Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfrn;->b(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfrm;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfrm;->b(I)Lcom/google/android/gms/internal/ads/zzfrk;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfrk;->c()Lcom/google/android/gms/internal/ads/zzfqv;

    move-result-object v3

    const/4 v4, 0x0

    :goto_92
    if-ge v4, v5, :cond_ed

    .line 17
    aget-object v11, v2, v4

    array-length v11, v11

    if-gt v11, v6, :cond_9a

    goto :goto_e7

    :cond_9a
    new-array v12, v11, [D

    const/4 v13, 0x0

    .line 18
    :goto_9d
    aget-object v14, v2, v4

    array-length v15, v14

    const-wide/16 v16, 0x0

    if-ge v13, v15, :cond_b7

    .line 19
    aget-wide v5, v14, v13

    cmp-long v14, v5, v8

    if-nez v14, :cond_ab

    goto :goto_b0

    :cond_ab
    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    :goto_b0
    aput-wide v16, v12, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_9d

    :cond_b7
    add-int/lit8 v11, v11, -0x1

    .line 20
    aget-wide v5, v12, v11

    aget-wide v13, v12, v1

    sub-double/2addr v5, v13

    const/4 v13, 0x0

    :goto_bf
    if-ge v13, v11, :cond_e7

    .line 21
    aget-wide v18, v12, v13

    add-int/lit8 v13, v13, 0x1

    aget-wide v20, v12, v13

    add-double v18, v18, v20

    cmpl-double v14, v5, v16

    if-nez v14, :cond_d0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    goto :goto_da

    :cond_d0
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v20

    .line 22
    aget-wide v20, v12, v1

    sub-double v18, v18, v20

    div-double v18, v18, v5

    :goto_da
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v14, v1}, Lcom/google/android/gms/internal/ads/zzfrg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_bf

    :cond_e7
    :goto_e7
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_92

    .line 23
    :cond_ed
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfrg;->x()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfqk;->s(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v1

    const/4 v3, 0x0

    .line 24
    :goto_f6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_118

    .line 25
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 26
    aget v5, v7, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aput v5, v7, v4

    .line 27
    aget-object v8, v2, v4

    aget-wide v11, v8, v5

    aput-wide v11, v10, v4

    .line 28
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzuy;->d(Ljava/util/List;[J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f6

    :cond_118
    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_11a
    if-ge v1, v2, :cond_12a

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_127

    .line 30
    aget-wide v3, v10, v1

    add-long/2addr v3, v3

    aput-wide v3, v10, v1

    :cond_127
    add-int/lit8 v1, v1, 0x1

    goto :goto_11a

    .line 31
    :cond_12a
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzuy;->d(Ljava/util/List;[J)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->o()Lcom/google/android/gms/internal/ads/zzfqh;

    move-result-object v1

    const/4 v2, 0x0

    .line 32
    :goto_132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_14f

    .line 33
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfqh;

    if-nez v3, :cond_145

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v3

    goto :goto_149

    :cond_145
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfqh;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v3

    :goto_149
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfqh;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;

    add-int/lit8 v2, v2, 0x1

    goto :goto_132

    .line 35
    :cond_14f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfqh;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/util/List;[J)V
    .registers 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x2

    if-ge v3, v4, :cond_d

    .line 1
    aget-wide v4, p1, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfqh;

    if-eqz v3, :cond_25

    new-instance v4, Lcom/google/android/gms/internal/ads/zzuw;

    .line 4
    aget-wide v5, p1, v0

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzuw;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfqh;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_28
    return-void
.end method
