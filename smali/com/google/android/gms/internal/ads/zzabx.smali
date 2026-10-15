###### Class com.google.android.gms.internal.ads.zzabx (com.google.android.gms.internal.ads.zzabx)
.class final Lcom/google/android/gms/internal/ads/zzabx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzf;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaah;

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ads/zzaac;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaah;ILcom/google/android/gms/internal/ads/zzabw;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->a:Lcom/google/android/gms/internal/ads/zzaah;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzabx;->b:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaac;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->c:Lcom/google/android/gms/internal/ads/zzaac;

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/zzzv;)J
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x6

    add-long/2addr v4, v6

    const/4 v8, 0x0

    cmp-long v9, v2, v4

    if-gez v9, :cond_74

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->a:Lcom/google/android/gms/internal/ads/zzaah;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzabx;->b:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzabx;->c:Lcom/google/android/gms/internal/ads/zzaac;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v9

    const/4 v5, 0x2

    new-array v11, v5, [B

    move-object v12, v1

    check-cast v12, Lcom/google/android/gms/internal/ads/zzzk;

    .line 1
    invoke-virtual {v12, v11, v8, v5, v8}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    aget-byte v13, v11, v8

    and-int/lit16 v13, v13, 0xff

    const/4 v14, 0x1

    aget-byte v15, v11, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v15

    if-eq v13, v3, :cond_42

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v2

    sub-long/2addr v9, v2

    long-to-int v2, v9

    .line 3
    invoke-virtual {v12, v2, v8}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto :goto_70

    .line 4
    :cond_42
    new-instance v13, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v15, 0x10

    invoke-direct {v13, v15}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v15

    .line 5
    invoke-static {v11, v8, v15, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v11

    const/16 v15, 0xe

    .line 6
    invoke-static {v1, v11, v5, v15}, Lcom/google/android/gms/internal/ads/zzzy;->a(Lcom/google/android/gms/internal/ads/zzzv;[BII)I

    move-result v5

    .line 7
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    .line 8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v15

    sub-long/2addr v9, v15

    long-to-int v5, v9

    .line 9
    invoke-virtual {v12, v5, v8}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    .line 10
    invoke-static {v13, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaad;->c(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzaah;ILcom/google/android/gms/internal/ads/zzaac;)Z

    move-result v2

    if-eqz v2, :cond_70

    goto :goto_74

    .line 11
    :cond_70
    :goto_70
    invoke-virtual {v12, v14, v8}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto :goto_4

    .line 12
    :cond_74
    :goto_74
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_95

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    long-to-int v3, v2

    .line 13
    invoke-virtual {v1, v3, v8}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->a:Lcom/google/android/gms/internal/ads/zzaah;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzaah;->j:J

    return-wide v1

    :cond_95
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->c:Lcom/google/android/gms/internal/ads/zzaac;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzaac;->a:J

    return-wide v1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;J)Lcom/google/android/gms/internal/ads/zzze;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabx;->b(Lcom/google/android/gms/internal/ads/zzzv;)J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzabx;->a:Lcom/google/android/gms/internal/ads/zzaah;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzaah;->c:I

    const/4 v7, 0x6

    .line 2
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v8, 0x0

    .line 3
    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    cmp-long v6, v2, p2

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabx;->b(Lcom/google/android/gms/internal/ads/zzzv;)J

    move-result-wide v7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v9

    if-gtz v6, :cond_32

    cmp-long p1, v7, p2

    if-gtz p1, :cond_2d

    goto :goto_32

    :cond_2d
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzze;->e(J)Lcom/google/android/gms/internal/ads/zzze;

    move-result-object p1

    return-object p1

    :cond_32
    :goto_32
    cmp-long p1, v7, p2

    if-gtz p1, :cond_3b

    invoke-static {v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzze;->f(JJ)Lcom/google/android/gms/internal/ads/zzze;

    move-result-object p1

    return-object p1

    :cond_3b
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzze;->d(JJ)Lcom/google/android/gms/internal/ads/zzze;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzb()V
    .registers 1

    return-void
.end method
