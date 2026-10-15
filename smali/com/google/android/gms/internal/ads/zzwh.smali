###### Class com.google.android.gms.internal.ads.zzwh (com.google.android.gms.internal.ads.zzwh)
.class public abstract Lcom/google/android/gms/internal/ads/zzwh;
.super Lcom/google/android/gms/internal/ads/zzwk;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private c:Lcom/google/android/gms/internal/ads/zzwg;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwk;-><init>()V

    return-void
.end method


# virtual methods
.method public final d([Lcom/google/android/gms/internal/ads/zzko;Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzwl;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x3

    new-array v2, v1, [I

    new-array v3, v1, [[Lcom/google/android/gms/internal/ads/zzcp;

    new-array v11, v1, [[[I

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v1, :cond_19

    .line 1
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzur;->a:I

    new-array v6, v5, [Lcom/google/android/gms/internal/ads/zzcp;

    aput-object v6, v3, v4

    new-array v5, v5, [[I

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_19
    const/4 v1, 0x2

    new-array v13, v1, [I

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v1, :cond_2a

    .line 2
    aget-object v5, p1, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzko;->b()I

    move-result v5

    aput v5, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2a
    const/4 v4, 0x0

    .line 3
    :goto_2b
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzur;->a:I

    if-ge v4, v5, :cond_9e

    .line 4
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzur;->b(I)Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v5

    .line 5
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzcp;->c:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_39
    if-ge v7, v1, :cond_70

    .line 6
    aget-object v15, p1, v7

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_3f
    if-gtz v12, :cond_53

    .line 7
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzcp;->b(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/google/android/gms/internal/ads/zzko;->j(Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 8
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x2

    goto :goto_3f

    .line 9
    :cond_53
    aget v1, v2, v7

    if-nez v1, :cond_59

    const/4 v1, 0x1

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    if-gt v14, v9, :cond_69

    if-ne v14, v9, :cond_6c

    const/4 v12, 0x5

    if-ne v6, v12, :cond_6c

    if-nez v10, :cond_6c

    if-eqz v1, :cond_6c

    move v8, v7

    move v9, v14

    const/4 v10, 0x1

    goto :goto_6c

    :cond_69
    move v10, v1

    move v8, v7

    move v9, v14

    :cond_6c
    :goto_6c
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x2

    goto :goto_39

    :cond_70
    if-ne v8, v1, :cond_76

    const/4 v1, 0x1

    new-array v6, v1, [I

    goto :goto_8c

    :cond_76
    const/4 v1, 0x1

    .line 10
    aget-object v6, p1, v8

    new-array v7, v1, [I

    const/4 v1, 0x0

    :goto_7c
    if-gtz v1, :cond_8b

    .line 11
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzcp;->b(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/google/android/gms/internal/ads/zzko;->j(Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v9

    aput v9, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_8b
    move-object v6, v7

    .line 12
    :goto_8c
    aget v1, v2, v8

    .line 13
    aget-object v7, v3, v8

    aput-object v5, v7, v1

    .line 14
    aget-object v5, v11, v8

    aput-object v6, v5, v1

    const/4 v5, 0x1

    add-int/2addr v1, v5

    .line 15
    aput v1, v2, v8

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x2

    goto :goto_2b

    :cond_9e
    new-array v7, v1, [Lcom/google/android/gms/internal/ads/zzur;

    new-array v5, v1, [Ljava/lang/String;

    new-array v6, v1, [I

    const/4 v0, 0x0

    :goto_a5
    if-ge v0, v1, :cond_d6

    .line 16
    aget v1, v2, v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzur;

    aget-object v8, v3, v0

    .line 17
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzew;->G([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/ads/zzcp;

    invoke-direct {v4, v8}, Lcom/google/android/gms/internal/ads/zzur;-><init>([Lcom/google/android/gms/internal/ads/zzcp;)V

    aput-object v4, v7, v0

    aget-object v4, v11, v0

    .line 18
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzew;->G([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    aput-object v1, v11, v0

    aget-object v1, p1, v0

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzko;->s()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    aget-object v1, p1, v0

    .line 20
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzko;->zzb()I

    move-result v1

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    goto :goto_a5

    :cond_d6
    const/4 v0, 0x2

    aget v1, v2, v0

    new-instance v10, Lcom/google/android/gms/internal/ads/zzur;

    aget-object v2, v3, v0

    .line 21
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzew;->G([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzcp;

    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzur;-><init>([Lcom/google/android/gms/internal/ads/zzcp;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwg;

    move-object v4, v0

    move-object v8, v13

    move-object v9, v11

    .line 22
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzwg;-><init>([Ljava/lang/String;[I[Lcom/google/android/gms/internal/ads/zzur;[I[[[ILcom/google/android/gms/internal/ads/zzur;)V

    move-object/from16 v4, p0

    move-object v5, v0

    move-object v6, v11

    move-object v7, v13

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 23
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzwh;->i(Lcom/google/android/gms/internal/ads/zzwg;[[[I[ILcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)Landroid/util/Pair;

    move-result-object v1

    .line 24
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/gms/internal/ads/zzwi;

    .line 25
    array-length v3, v2

    new-array v3, v3, [Ljava/util/List;

    const/4 v4, 0x0

    .line 26
    :goto_103
    array-length v5, v2

    if-ge v4, v5, :cond_118

    .line 27
    aget-object v5, v2, v4

    if-eqz v5, :cond_10f

    .line 28
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v5

    goto :goto_113

    :cond_10f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v5

    :goto_113
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_103

    :cond_118
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfqh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfqh;-><init>()V

    const/4 v4, 0x0

    :goto_11e
    const/4 v5, 0x2

    if-ge v4, v5, :cond_186

    .line 29
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzwg;->d(I)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v6

    .line 30
    aget-object v7, v3, v4

    const/4 v8, 0x0

    .line 31
    :goto_128
    iget v9, v6, Lcom/google/android/gms/internal/ads/zzur;->a:I

    if-ge v8, v9, :cond_183

    .line 32
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzur;->b(I)Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v9

    const/4 v10, 0x0

    .line 33
    invoke-virtual {v0, v4, v8, v10}, Lcom/google/android/gms/internal/ads/zzwg;->a(IIZ)I

    move-result v11

    if-eqz v11, :cond_139

    const/4 v10, 0x1

    goto :goto_13a

    :cond_139
    const/4 v10, 0x0

    .line 34
    :goto_13a
    iget v11, v9, Lcom/google/android/gms/internal/ads/zzcp;->a:I

    const/4 v11, 0x1

    new-array v12, v11, [I

    new-array v13, v11, [Z

    const/4 v11, 0x0

    :goto_142
    if-gtz v11, :cond_177

    .line 35
    invoke-virtual {v0, v4, v8, v11}, Lcom/google/android/gms/internal/ads/zzwg;->b(III)I

    move-result v14

    and-int/lit8 v14, v14, 0x7

    .line 36
    aput v14, v12, v11

    const/4 v14, 0x0

    .line 37
    :goto_14d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_170

    .line 38
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzwi;

    .line 39
    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/zzwi;->b()Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzcp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 40
    invoke-interface {v15, v11}, Lcom/google/android/gms/internal/ads/zzwi;->z(I)I

    move-result v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_16c

    const/4 v5, 0x1

    goto :goto_171

    :cond_16c
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x2

    goto :goto_14d

    :cond_170
    const/4 v5, 0x0

    .line 41
    :goto_171
    aput-boolean v5, v13, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x2

    goto :goto_142

    .line 42
    :cond_177
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {v5, v9, v10, v12, v13}, Lcom/google/android/gms/internal/ads/zzcx;-><init>(Lcom/google/android/gms/internal/ads/zzcp;Z[I[Z)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfqh;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x2

    goto :goto_128

    :cond_183
    add-int/lit8 v4, v4, 0x1

    goto :goto_11e

    :cond_186
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwg;->e()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v3

    const/4 v10, 0x0

    :goto_18b
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzur;->a:I

    if-ge v10, v4, :cond_1a9

    .line 43
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzur;->b(I)Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v4

    .line 44
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzcp;->a:I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const/4 v7, 0x0

    .line 45
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    new-array v8, v5, [Z

    .line 46
    new-instance v9, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {v9, v4, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzcx;-><init>(Lcom/google/android/gms/internal/ads/zzcp;Z[I[Z)V

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzfqh;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;

    add-int/lit8 v10, v10, 0x1

    goto :goto_18b

    .line 47
    :cond_1a9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfqh;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzcy;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzwl;

    .line 48
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Lcom/google/android/gms/internal/ads/zzkp;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {v2, v4, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzwl;-><init>([Lcom/google/android/gms/internal/ads/zzkp;[Lcom/google/android/gms/internal/ads/zzwe;Lcom/google/android/gms/internal/ads/zzcy;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwh;->c:Lcom/google/android/gms/internal/ads/zzwg;

    return-void
.end method

.method protected abstract i(Lcom/google/android/gms/internal/ads/zzwg;[[[I[ILcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation
.end method
