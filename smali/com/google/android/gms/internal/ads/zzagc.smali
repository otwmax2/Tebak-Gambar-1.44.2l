###### Class com.google.android.gms.internal.ads.zzagc (com.google.android.gms.internal.ads.zzagc)
.class public final Lcom/google/android/gms/internal/ads/zzagc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;
.implements Lcom/google/android/gms/internal/ads/zzaax;


# static fields
.field public static final x:Lcom/google/android/gms/internal/ads/zzaab;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzen;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private final c:Lcom/google/android/gms/internal/ads/zzen;

.field private final d:Lcom/google/android/gms/internal/ads/zzen;

.field private final e:Ljava/util/ArrayDeque;

.field private final f:Lcom/google/android/gms/internal/ads/zzage;

.field private final g:Ljava/util/List;

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Lcom/google/android/gms/internal/ads/zzen;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/google/android/gms/internal/ads/zzzx;

.field private r:[Lcom/google/android/gms/internal/ads/zzagb;

.field private s:[[J

.field private t:I

.field private u:J

.field private v:I

.field private w:Lcom/google/android/gms/internal/ads/zzaef;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzafz;->b:Lcom/google/android/gms/internal/ads/zzafz;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagc;->x:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzagc;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagc;->h:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzage;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzage;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->f:Lcom/google/android/gms/internal/ads/zzage;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->g:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->d:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaar;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->a:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->b:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->c:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->m:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzzx;->c:Lcom/google/android/gms/internal/ads/zzzx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->q:Lcom/google/android/gms/internal/ads/zzzx;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagc;->r:[Lcom/google/android/gms/internal/ads/zzagb;

    return-void
.end method

.method private static i(I)I
    .registers 2

    const v0, 0x68656963

    if-eq p0, v0, :cond_e

    const v0, 0x71742020

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0
.end method

.method private static j(Lcom/google/android/gms/internal/ads/zzagj;J)I
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagj;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagj;->b(J)I

    move-result p0

    return p0

    :cond_c
    return v0
.end method

.method private static k(Lcom/google/android/gms/internal/ads/zzagj;JJ)J
    .registers 5

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagc;->j(Lcom/google/android/gms/internal/ads/zzagj;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-wide p3

    .line 2
    :cond_8
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzagj;->c:[J

    aget-wide p1, p0, p1

    .line 3
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final l()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    return-void
.end method

.method private final m(J)V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_266

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzafh;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzafh;->b:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_266

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzafh;

    .line 3
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzafj;->a:I

    const v4, 0x6d6f6f76

    if-ne v1, v4, :cond_251

    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzagc;->v:I

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzaaj;-><init>()V

    const v5, 0x75647461

    .line 5
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzafh;->d(I)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 6
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzafr;->a(Lcom/google/android/gms/internal/ads/zzafi;)Landroid/util/Pair;

    move-result-object v5

    .line 7
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbq;

    .line 8
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbq;

    if-eqz v6, :cond_4e

    .line 9
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzaaj;->b(Lcom/google/android/gms/internal/ads/zzbq;)Z

    :cond_4e
    move-object v13, v5

    move-object v14, v6

    goto :goto_53

    :cond_51
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_53
    const v5, 0x6d657461

    .line 10
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzafh;->c(I)Lcom/google/android/gms/internal/ads/zzafh;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 11
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzafr;->b(Lcom/google/android/gms/internal/ads/zzafh;)Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v5

    move-object v15, v5

    goto :goto_63

    :cond_62
    const/4 v15, 0x0

    :goto_63
    const/4 v10, 0x0

    const/4 v9, 0x1

    if-ne v4, v9, :cond_6a

    const/16 v16, 0x1

    goto :goto_6c

    :cond_6a
    const/16 v16, 0x0

    :goto_6c
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v17, Lcom/google/android/gms/internal/ads/zzaga;->a:Lcom/google/android/gms/internal/ads/zzaga;

    move-object v4, v11

    const/4 v12, 0x1

    move/from16 v9, v16

    move-object/from16 v10, v17

    .line 12
    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzafr;->c(Lcom/google/android/gms/internal/ads/zzafh;Lcom/google/android/gms/internal/ads/zzaaj;JLcom/google/android/gms/internal/ads/zzx;ZZLcom/google/android/gms/internal/ads/zzfnj;)Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v9, v13

    const/4 v8, -0x1

    const/4 v10, 0x0

    move-wide v12, v6

    :goto_8c
    const-wide/16 v19, 0x0

    if-ge v10, v4, :cond_1c4

    .line 14
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/google/android/gms/internal/ads/zzagj;

    .line 15
    iget v2, v5, Lcom/google/android/gms/internal/ads/zzagj;->b:I

    if-nez v2, :cond_a6

    move-object/from16 v21, v3

    move/from16 v22, v4

    move-wide v4, v6

    move-object/from16 v18, v9

    const/4 v2, -0x1

    goto/16 :goto_1b9

    .line 16
    :cond_a6
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzagj;->a:Lcom/google/android/gms/internal/ads/zzagg;

    move-object/from16 v21, v3

    move/from16 v22, v4

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzagg;->e:J

    cmp-long v23, v3, v6

    if-eqz v23, :cond_b3

    goto :goto_b5

    .line 17
    :cond_b3
    iget-wide v3, v5, Lcom/google/android/gms/internal/ads/zzagj;->h:J

    .line 18
    :goto_b5
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    new-instance v6, Lcom/google/android/gms/internal/ads/zzagb;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzagc;->q:Lcom/google/android/gms/internal/ads/zzzx;

    move-wide/from16 v24, v12

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzagg;->b:I

    .line 19
    invoke-interface {v7, v10, v12}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v7

    invoke-direct {v6, v2, v5, v7}, Lcom/google/android/gms/internal/ads/zzagb;-><init>(Lcom/google/android/gms/internal/ads/zzagg;Lcom/google/android/gms/internal/ads/zzagj;Lcom/google/android/gms/internal/ads/zzabb;)V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    .line 20
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v12, "audio/true-hd"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d9

    .line 21
    iget v7, v5, Lcom/google/android/gms/internal/ads/zzagj;->e:I

    mul-int/lit8 v7, v7, 0x10

    goto :goto_dd

    .line 22
    :cond_d9
    iget v7, v5, Lcom/google/android/gms/internal/ads/zzagj;->e:I

    add-int/lit8 v7, v7, 0x1e

    .line 23
    :goto_dd
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    .line 24
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaf;->b()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v12

    .line 25
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzad;->l(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzagg;->b:I

    const/4 v13, 0x2

    if-ne v7, v13, :cond_fe

    cmp-long v7, v3, v19

    if-lez v7, :cond_fe

    .line 26
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzagj;->b:I

    const/4 v7, 0x1

    if-le v5, v7, :cond_fe

    long-to-float v3, v3

    int-to-float v4, v5

    const v5, 0x49742400    # 1000000.0f

    div-float/2addr v3, v5

    div-float/2addr v4, v3

    .line 27
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzad;->e(F)Lcom/google/android/gms/internal/ads/zzad;

    :cond_fe
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzagg;->b:I

    .line 28
    sget v4, Lcom/google/android/gms/internal/ads/zzafy;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_115

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzaaj;->a()Z

    move-result v3

    if-eqz v3, :cond_115

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzaaj;->a:I

    .line 29
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzad;->c(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzaaj;->b:I

    .line 30
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzad;->d(I)Lcom/google/android/gms/internal/ads/zzad;

    :cond_115
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzagg;->b:I

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/google/android/gms/internal/ads/zzbq;

    const/4 v4, 0x0

    aput-object v9, v5, v4

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzagc;->g:Ljava/util/List;

    .line 31
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_127

    const/4 v7, 0x0

    goto :goto_12e

    .line 32
    :cond_127
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbq;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzagc;->g:Ljava/util/List;

    .line 33
    invoke-direct {v7, v13}, Lcom/google/android/gms/internal/ads/zzbq;-><init>(Ljava/util/List;)V

    :goto_12e
    const/4 v13, 0x1

    aput-object v7, v5, v13

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbq;

    move-object/from16 v18, v9

    new-array v9, v4, [Lcom/google/android/gms/internal/ads/zzbp;

    move-object/from16 v19, v5

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v7, v4, v5, v9}, Lcom/google/android/gms/internal/ads/zzbq;-><init>(J[Lcom/google/android/gms/internal/ads/zzbp;)V

    if-ne v3, v13, :cond_14c

    if-eqz v14, :cond_146

    move-object v7, v14

    :cond_146
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_186

    :cond_14c
    const/4 v4, 0x2

    if-ne v3, v4, :cond_146

    if-eqz v15, :cond_146

    const/4 v3, 0x0

    .line 34
    :goto_152
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzbq;->h()I

    move-result v4

    if-ge v3, v4, :cond_146

    .line 35
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzbq;->t(I)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v4

    .line 36
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v5, :cond_17e

    .line 37
    check-cast v4, Lcom/google/android/gms/internal/ads/zzaec;

    .line 38
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzaec;->o:Ljava/lang/String;

    const-string v9, "com.android.capture.fps"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17e

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbq;

    const/4 v3, 0x1

    new-array v5, v3, [Lcom/google/android/gms/internal/ads/zzbp;

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    invoke-direct {v7, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbq;-><init>(J[Lcom/google/android/gms/internal/ads/zzbp;)V

    move-wide v4, v3

    goto :goto_186

    :cond_17e
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    add-int/lit8 v3, v3, 0x1

    goto :goto_152

    :goto_186
    const/4 v3, 0x0

    :goto_187
    const/4 v9, 0x2

    if-ge v3, v9, :cond_193

    .line 40
    aget-object v9, v19, v3

    .line 41
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzbq;->w(Lcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_187

    .line 42
    :cond_193
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbq;->h()I

    move-result v3

    if-lez v3, :cond_19c

    .line 43
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzad;->m(Lcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzad;

    :cond_19c
    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzagb;->c:Lcom/google/android/gms/internal/ads/zzabb;

    .line 44
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzagg;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b3

    const/4 v2, -0x1

    if-ne v8, v2, :cond_1b4

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v8, v3

    goto :goto_1b4

    :cond_1b3
    const/4 v2, -0x1

    .line 46
    :cond_1b4
    :goto_1b4
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v12, v24

    :goto_1b9
    add-int/lit8 v10, v10, 0x1

    move-wide v6, v4

    move-object/from16 v9, v18

    move-object/from16 v3, v21

    move/from16 v4, v22

    goto/16 :goto_8c

    :cond_1c4
    const/4 v2, -0x1

    .line 47
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzagc;->t:I

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzagc;->u:J

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzagb;

    .line 48
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzagb;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->r:[Lcom/google/android/gms/internal/ads/zzagb;

    .line 49
    array-length v3, v1

    new-array v4, v3, [[J

    new-array v5, v3, [I

    new-array v6, v3, [J

    new-array v3, v3, [Z

    const/4 v10, 0x0

    .line 50
    :goto_1de
    array-length v7, v1

    if-ge v10, v7, :cond_1f9

    .line 51
    aget-object v7, v1, v10

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzagj;->b:I

    new-array v7, v7, [J

    aput-object v7, v4, v10

    .line 52
    aget-object v7, v1, v10

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzagj;->f:[J

    const/4 v8, 0x0

    aget-wide v11, v7, v8

    aput-wide v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1de

    :cond_1f9
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 53
    :goto_1fb
    array-length v7, v1

    if-ge v10, v7, :cond_23b

    const-wide v11, 0x7fffffffffffffffL

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 54
    :goto_205
    array-length v13, v1

    if-ge v7, v13, :cond_217

    .line 55
    aget-boolean v13, v3, v7

    if-nez v13, :cond_214

    aget-wide v13, v6, v7

    cmp-long v15, v13, v11

    if-gtz v15, :cond_214

    move v9, v7

    move-wide v11, v13

    :cond_214
    add-int/lit8 v7, v7, 0x1

    goto :goto_205

    .line 56
    :cond_217
    aget v7, v5, v9

    .line 57
    aget-object v11, v4, v9

    aput-wide v19, v11, v7

    .line 58
    aget-object v12, v1, v9

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzagj;->d:[I

    aget v13, v13, v7

    int-to-long v13, v13

    add-long v19, v19, v13

    const/4 v13, 0x1

    add-int/2addr v7, v13

    .line 59
    aput v7, v5, v9

    .line 60
    array-length v11, v11

    if-ge v7, v11, :cond_236

    .line 61
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzagj;->f:[J

    aget-wide v14, v11, v7

    aput-wide v14, v6, v9

    goto :goto_1fb

    .line 62
    :cond_236
    aput-boolean v13, v3, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1fb

    :cond_23b
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzagc;->s:[[J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->q:Lcom/google/android/gms/internal/ads/zzzx;

    .line 63
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->q:Lcom/google/android/gms/internal/ads/zzzx;

    .line 64
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->h:I

    goto/16 :goto_2

    :cond_251
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzafh;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzafh;->e(Lcom/google/android/gms/internal/ads/zzafh;)V

    goto/16 :goto_2

    :cond_266
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->h:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26e

    .line 68
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzagc;->l()V

    :cond_26e
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzagf;->b(Lcom/google/android/gms/internal/ads/zzzv;Z)Z

    move-result p1

    return p1
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->u:J

    return-wide v0
.end method

.method public final c(J)Lcom/google/android/gms/internal/ads/zzaav;
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->r:[Lcom/google/android/gms/internal/ads/zzagb;

    array-length v1, v0

    if-nez v1, :cond_e

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaav;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaay;->c:Lcom/google/android/gms/internal/ads/zzaay;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    goto/16 :goto_91

    :cond_e
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagc;->t:I

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_53

    .line 2
    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagc;->j(Lcom/google/android/gms/internal/ads/zzagj;J)I

    move-result v1

    if-ne v1, v2, :cond_2d

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaav;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaay;->c:Lcom/google/android/gms/internal/ads/zzaay;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    goto/16 :goto_91

    .line 4
    :cond_2d
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzagj;->f:[J

    aget-wide v8, v7, v1

    .line 5
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzagj;->c:[J

    aget-wide v10, v7, v1

    cmp-long v7, v8, p1

    if-gez v7, :cond_50

    .line 6
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzagj;->b:I

    add-int/2addr v7, v2

    if-ge v1, v7, :cond_50

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagj;->b(J)I

    move-result p1

    if-eq p1, v2, :cond_50

    if-eq p1, v1, :cond_50

    .line 8
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzagj;->f:[J

    aget-wide v1, p2, p1

    .line 9
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzagj;->c:[J

    aget-wide p1, p2, p1

    move-wide v3, p1

    goto :goto_51

    :cond_50
    move-wide v1, v5

    :goto_51
    move-wide p1, v8

    goto :goto_59

    :cond_53
    const-wide v10, 0x7fffffffffffffffL

    move-wide v1, v5

    :goto_59
    const/4 v0, 0x0

    :goto_5a
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzagc;->r:[Lcom/google/android/gms/internal/ads/zzagb;

    .line 10
    array-length v8, v7

    if-ge v0, v8, :cond_77

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzagc;->t:I

    if-eq v0, v8, :cond_74

    .line 11
    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    .line 12
    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/zzagc;->k(Lcom/google/android/gms/internal/ads/zzagj;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_73

    .line 13
    invoke-static {v7, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzagc;->k(Lcom/google/android/gms/internal/ads/zzagj;JJ)J

    move-result-wide v3

    :cond_73
    move-wide v10, v8

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_77
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaay;

    .line 14
    invoke-direct {v0, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_86

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaav;

    invoke-direct {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    goto :goto_91

    :cond_86
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaay;

    .line 15
    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(JJ)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaav;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    move-object p1, p2

    :goto_91
    return-object p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    :cond_6
    :goto_6
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->h:I

    const v4, 0x66747970

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v3, :cond_24f

    const-wide/32 v13, 0x40000

    if-eq v3, v10, :cond_1cf

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v3

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzagc;->m:I

    if-ne v9, v8, :cond_a2

    const-wide v16, 0x7fffffffffffffffL

    move-wide/from16 v18, v16

    move-wide/from16 v21, v18

    move-wide/from16 v23, v21

    const/4 v9, 0x0

    const/16 v20, 0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, 0x1

    :goto_34
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->r:[Lcom/google/android/gms/internal/ads/zzagb;

    .line 2
    array-length v15, v5

    if-ge v9, v15, :cond_88

    .line 3
    aget-object v5, v5, v9

    .line 4
    iget v15, v5, Lcom/google/android/gms/internal/ads/zzagb;->e:I

    .line 5
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    iget v12, v5, Lcom/google/android/gms/internal/ads/zzagj;->b:I

    if-ne v15, v12, :cond_44

    goto :goto_85

    .line 6
    :cond_44
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzagj;->c:[J

    aget-wide v28, v5, v15

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->s:[[J

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzew;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    aget-object v5, v5, v9

    aget-wide v30, v5, v15

    sub-long v28, v28, v3

    cmp-long v5, v28, v6

    if-ltz v5, :cond_61

    cmp-long v5, v28, v13

    if-ltz v5, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 v5, 0x0

    goto :goto_62

    :cond_61
    :goto_61
    const/4 v5, 0x1

    :goto_62
    if-nez v5, :cond_68

    if-nez v27, :cond_70

    const/4 v12, 0x0

    goto :goto_6a

    :cond_68
    move/from16 v12, v27

    :goto_6a
    if-ne v5, v12, :cond_79

    cmp-long v15, v28, v23

    if-gez v15, :cond_79

    :cond_70
    move/from16 v27, v5

    move/from16 v26, v9

    move-wide/from16 v23, v28

    move-wide/from16 v21, v30

    goto :goto_7b

    :cond_79
    move/from16 v27, v12

    :goto_7b
    cmp-long v12, v30, v18

    if-gez v12, :cond_85

    move/from16 v20, v5

    move/from16 v25, v9

    move-wide/from16 v18, v30

    :cond_85
    :goto_85
    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    :cond_88
    cmp-long v5, v18, v16

    if-eqz v5, :cond_9a

    if-eqz v20, :cond_9a

    const-wide/32 v15, 0xa00000

    add-long v18, v18, v15

    cmp-long v5, v21, v18

    if-ltz v5, :cond_9a

    move/from16 v9, v25

    goto :goto_9c

    :cond_9a
    move/from16 v9, v26

    :goto_9c
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzagc;->m:I

    if-ne v9, v8, :cond_a2

    goto/16 :goto_1ce

    :cond_a2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->r:[Lcom/google/android/gms/internal/ads/zzagb;

    .line 8
    aget-object v5, v5, v9

    .line 9
    iget-object v9, v5, Lcom/google/android/gms/internal/ads/zzagb;->c:Lcom/google/android/gms/internal/ads/zzabb;

    .line 10
    iget v12, v5, Lcom/google/android/gms/internal/ads/zzagb;->e:I

    .line 11
    iget-object v15, v5, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    iget-object v8, v15, Lcom/google/android/gms/internal/ads/zzagj;->c:[J

    aget-wide v10, v8, v12

    .line 12
    iget-object v8, v15, Lcom/google/android/gms/internal/ads/zzagj;->d:[I

    aget v8, v8, v12

    .line 13
    iget-object v15, v5, Lcom/google/android/gms/internal/ads/zzagb;->d:Lcom/google/android/gms/internal/ads/zzabc;

    sub-long v3, v10, v3

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzagc;->n:I

    int-to-long v13, v13

    add-long/2addr v3, v13

    cmp-long v13, v3, v6

    if-ltz v13, :cond_1cb

    const-wide/32 v6, 0x40000

    cmp-long v13, v3, v6

    if-ltz v13, :cond_c9

    goto/16 :goto_1cb

    .line 14
    :cond_c9
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzagb;->a:Lcom/google/android/gms/internal/ads/zzagg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzagg;->g:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_d5

    const-wide/16 v6, 0x8

    add-long/2addr v3, v6

    add-int/lit8 v8, v8, -0x8

    :cond_d5
    long-to-int v2, v3

    .line 15
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzzv;->r0(I)V

    .line 16
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzagb;->a:Lcom/google/android/gms/internal/ads/zzagg;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzagg;->j:I

    if-eqz v3, :cond_13f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagc;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    const/4 v4, 0x0

    .line 17
    aput-byte v4, v2, v4

    const/4 v6, 0x1

    .line 18
    aput-byte v4, v2, v6

    const/4 v6, 0x2

    .line 19
    aput-byte v4, v2, v6

    rsub-int/lit8 v4, v3, 0x4

    :goto_f0
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    if-ge v6, v8, :cond_182

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->p:I

    if-nez v6, :cond_12a

    .line 20
    invoke-interface {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzzv;->l([BII)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->n:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->n:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v7, 0x0

    .line 21
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v6

    if-ltz v6, :cond_122

    .line 23
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->p:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 24
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->a:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v10, 0x4

    .line 25
    invoke-interface {v9, v6, v10}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    add-int/2addr v6, v10

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    add-int/2addr v8, v4

    goto :goto_f0

    :cond_122
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    :cond_12a
    const/4 v7, 0x0

    .line 27
    invoke-interface {v9, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzabb;->b(Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result v6

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzagc;->n:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzagc;->n:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzagc;->p:I

    sub-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzagc;->p:I

    goto :goto_f0

    .line 28
    :cond_13f
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    .line 29
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    if-nez v2, :cond_15f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagc;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 30
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzyy;->b(ILcom/google/android/gms/internal/ads/zzen;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagc;->c:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v3, 0x7

    .line 31
    invoke-interface {v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    :cond_15f
    add-int/lit8 v8, v8, 0x7

    goto :goto_167

    :cond_162
    if-eqz v15, :cond_167

    .line 32
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzabc;->d(Lcom/google/android/gms/internal/ads/zzzv;)V

    .line 33
    :cond_167
    :goto_167
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    if-ge v2, v8, :cond_182

    sub-int v2, v8, v2

    const/4 v3, 0x0

    .line 34
    invoke-interface {v9, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzabb;->b(Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->n:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->n:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->p:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->p:I

    goto :goto_167

    .line 35
    :cond_182
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagj;->f:[J

    aget-wide v3, v2, v12

    .line 36
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagj;->g:[I

    aget v1, v1, v12

    if-eqz v15, :cond_1ab

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v2, v15

    move-object/from16 v16, v9

    move-wide/from16 v17, v3

    move/from16 v19, v1

    move/from16 v20, v8

    .line 37
    invoke-virtual/range {v15 .. v22}, Lcom/google/android/gms/internal/ads/zzabc;->c(Lcom/google/android/gms/internal/ads/zzabb;JIIILcom/google/android/gms/internal/ads/zzaba;)V

    const/4 v1, 0x1

    add-int/2addr v12, v1

    .line 38
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzagj;->b:I

    if-ne v12, v1, :cond_1b9

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v2, v9, v1}, Lcom/google/android/gms/internal/ads/zzabc;->a(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaba;)V

    goto :goto_1b9

    :cond_1ab
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v9

    move-wide/from16 v16, v3

    move/from16 v18, v1

    move/from16 v19, v8

    .line 40
    invoke-interface/range {v15 .. v21}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    .line 41
    :cond_1b9
    :goto_1b9
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzagb;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Lcom/google/android/gms/internal/ads/zzagb;->e:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->m:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->n:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagc;->p:I

    const/4 v8, 0x0

    goto :goto_1ce

    .line 42
    :cond_1cb
    :goto_1cb
    iput-wide v10, v2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    const/4 v8, 0x1

    :goto_1ce
    return v8

    .line 43
    :cond_1cf
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->l:Lcom/google/android/gms/internal/ads/zzen;

    if-eqz v3, :cond_22e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v10

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    long-to-int v6, v5

    .line 45
    invoke-interface {v1, v10, v11, v6}, Lcom/google/android/gms/internal/ads/zzzv;->l([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->i:I

    if-ne v5, v4, :cond_213

    .line 46
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzagc;->i(I)I

    move-result v4

    if-eqz v4, :cond_1fa

    goto :goto_210

    :cond_1fa
    const/4 v4, 0x4

    .line 48
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :cond_1fe
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v4

    if-lez v4, :cond_20f

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzagc;->i(I)I

    move-result v4

    if-eqz v4, :cond_1fe

    goto :goto_210

    :cond_20f
    const/4 v4, 0x0

    .line 50
    :goto_210
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzagc;->v:I

    goto :goto_239

    .line 51
    :cond_213
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    .line 52
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_239

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzafh;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzafi;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzagc;->i:I

    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzafi;-><init>(ILcom/google/android/gms/internal/ads/zzen;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzafh;->f(Lcom/google/android/gms/internal/ads/zzafi;)V

    goto :goto_239

    :cond_22e
    const-wide/32 v3, 0x40000

    cmp-long v9, v5, v3

    if-gez v9, :cond_23b

    long-to-int v3, v5

    .line 54
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzzv;->r0(I)V

    :cond_239
    :goto_239
    const/4 v11, 0x0

    goto :goto_243

    .line 55
    :cond_23b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    const/4 v11, 0x1

    .line 56
    :goto_243
    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzagc;->m(J)V

    if-eqz v11, :cond_6

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->h:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v3, 0x1

    return v3

    :cond_24f
    const/4 v3, 0x1

    .line 57
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    if-nez v5, :cond_27a

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->d:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    const/4 v8, 0x0

    .line 58
    invoke-interface {v1, v5, v8, v9, v3}, Lcom/google/android/gms/internal/ads/zzzv;->g([BIIZ)Z

    move-result v5

    if-nez v5, :cond_263

    const/4 v3, -0x1

    return v3

    :cond_263
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->d:Lcom/google/android/gms/internal/ads/zzen;

    .line 59
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->d:Lcom/google/android/gms/internal/ads/zzen;

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->d:Lcom/google/android/gms/internal/ads/zzen;

    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->i:I

    :cond_27a
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    const-wide/16 v12, 0x1

    cmp-long v3, v10, v12

    if-nez v3, :cond_299

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->d:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    .line 62
    invoke-interface {v1, v3, v9, v9}, Lcom/google/android/gms/internal/ads/zzzv;->l([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->d:Lcom/google/android/gms/internal/ads/zzen;

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    goto :goto_2c4

    :cond_299
    cmp-long v3, v10, v6

    if-nez v3, :cond_2c4

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_2b5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzafh;

    if-eqz v3, :cond_2b4

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzafh;->b:J

    goto :goto_2b5

    :cond_2b4
    move-wide v5, v7

    :cond_2b5
    :goto_2b5
    cmp-long v3, v5, v7

    if-eqz v3, :cond_2c4

    .line 66
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    .line 67
    :cond_2c4
    :goto_2c4
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    int-to-long v7, v3

    cmp-long v10, v5, v7

    if-ltz v10, :cond_401

    .line 68
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->i:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_3af

    const v6, 0x7472616b

    if-eq v5, v6, :cond_3af

    const v6, 0x6d646961

    if-eq v5, v6, :cond_3af

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_3af

    const v6, 0x7374626c

    if-eq v5, v6, :cond_3af

    const v6, 0x65647473

    if-eq v5, v6, :cond_3af

    if-ne v5, v7, :cond_2f4

    goto/16 :goto_3af

    :cond_2f4
    const v6, 0x6d646864

    if-eq v5, v6, :cond_37b

    const v6, 0x6d766864

    if-eq v5, v6, :cond_37b

    const v6, 0x68646c72    # 4.3148E24f

    if-eq v5, v6, :cond_37b

    const v6, 0x73747364

    if-eq v5, v6, :cond_37b

    const v6, 0x73747473

    if-eq v5, v6, :cond_37b

    const v6, 0x73747373

    if-eq v5, v6, :cond_37b

    const v6, 0x63747473

    if-eq v5, v6, :cond_37b

    const v6, 0x656c7374

    if-eq v5, v6, :cond_37b

    const v6, 0x73747363

    if-eq v5, v6, :cond_37b

    const v6, 0x7374737a

    if-eq v5, v6, :cond_37b

    const v6, 0x73747a32

    if-eq v5, v6, :cond_37b

    const v6, 0x7374636f

    if-eq v5, v6, :cond_37b

    const v6, 0x636f3634

    if-eq v5, v6, :cond_37b

    const v6, 0x746b6864

    if-eq v5, v6, :cond_37b

    if-eq v5, v4, :cond_37b

    const v4, 0x75647461

    if-eq v5, v4, :cond_37b

    const v4, 0x6b657973

    if-eq v5, v4, :cond_37b

    const v4, 0x696c7374

    if-ne v5, v4, :cond_34c

    goto :goto_37b

    .line 69
    :cond_34c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    int-to-long v5, v5

    sub-long v10, v3, v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->i:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_373

    add-long v14, v10, v5

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaef;

    const-wide/16 v8, 0x0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    sub-long v5, v12, v5

    move-object v7, v3

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v16, v5

    invoke-direct/range {v7 .. v17}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(JJJJJ)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->w:Lcom/google/android/gms/internal/ads/zzaef;

    :cond_373
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->l:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->h:I

    goto/16 :goto_6

    :cond_37b
    :goto_37b
    if-ne v3, v9, :cond_37f

    const/4 v3, 0x1

    goto :goto_380

    :cond_37f
    const/4 v3, 0x0

    .line 70
    :goto_380
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_38e

    const/4 v3, 0x1

    goto :goto_38f

    :cond_38e
    const/4 v3, 0x0

    .line 71
    :goto_38f
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    .line 72
    new-instance v3, Lcom/google/android/gms/internal/ads/zzen;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    long-to-int v5, v4

    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzagc;->d:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 73
    invoke-static {v4, v6, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->l:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzagc;->h:I

    goto/16 :goto_6

    .line 74
    :cond_3af
    :goto_3af
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    add-long/2addr v3, v5

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    int-to-long v10, v8

    cmp-long v8, v5, v10

    if-eqz v8, :cond_3e1

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->i:I

    if-ne v5, v7, :cond_3e1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 75
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 76
    invoke-interface {v1, v5, v6, v9}, Lcom/google/android/gms/internal/ads/zzzv;->m([BII)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 77
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzafr;->d(Lcom/google/android/gms/internal/ads/zzen;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v5

    .line 78
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzzv;->r0(I)V

    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    :cond_3e1
    sub-long/2addr v3, v10

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzafh;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzagc;->i:I

    .line 80
    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzafh;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzagc;->j:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_3fc

    .line 81
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzagc;->m(J)V

    goto/16 :goto_6

    .line 82
    :cond_3fc
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzagc;->l()V

    goto/16 :goto_6

    :cond_401
    const-string v1, "Atom size less than header length (unsupported)."

    .line 83
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    goto :goto_409

    :goto_408
    throw v1

    :goto_409
    goto :goto_408
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagc;->q:Lcom/google/android/gms/internal/ads/zzzx;

    return-void
.end method

.method public final h(JJ)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->k:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzagc;->m:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->n:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->o:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagc;->p:I

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_1b

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagc;->l()V

    return-void

    :cond_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagc;->r:[Lcom/google/android/gms/internal/ads/zzagb;

    .line 3
    array-length p2, p1

    :goto_1e
    if-ge v0, p2, :cond_3a

    aget-object v2, p1, v0

    .line 4
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    .line 5
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzagj;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_2e

    .line 6
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzagj;->b(J)I

    move-result v4

    .line 7
    :cond_2e
    iput v4, v2, Lcom/google/android/gms/internal/ads/zzagb;->e:I

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzagb;->d:Lcom/google/android/gms/internal/ads/zzabc;

    if-eqz v2, :cond_37

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabc;->b()V

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3a
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzafz (com.google.android.gms.internal.ads.zzafz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzafz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzafz;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzafz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafz;->b:Lcom/google/android/gms/internal/ads/zzafz;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaa;->a(Lcom/google/android/gms/internal/ads/zzaab;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p1

    return-object p1
.end method

.method public final zza()[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzagc;->x:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzagc;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzagc;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzaga (com.google.android.gms.internal.ads.zzaga)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzaga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzaga;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaga;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaga;->a:Lcom/google/android/gms/internal/ads/zzaga;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzagg;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzagc;->x:Lcom/google/android/gms/internal/ads/zzaab;

    return-object p1
.end method
