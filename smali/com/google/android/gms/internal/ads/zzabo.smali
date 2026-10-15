###### Class com.google.android.gms.internal.ads.zzabo (com.google.android.gms.internal.ads.zzabo)
.class public final Lcom/google/android/gms/internal/ads/zzabo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzen;

.field private final b:Lcom/google/android/gms/internal/ads/zzabn;

.field private c:I

.field private d:Lcom/google/android/gms/internal/ads/zzzx;

.field private e:Lcom/google/android/gms/internal/ads/zzabp;

.field private f:J

.field private g:[Lcom/google/android/gms/internal/ads/zzabr;

.field private h:J

.field private i:Lcom/google/android/gms/internal/ads/zzabr;

.field private j:I

.field private k:J

.field private l:J

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzabn;-><init>(Lcom/google/android/gms/internal/ads/zzabm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->b:Lcom/google/android/gms/internal/ads/zzabn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->d:Lcom/google/android/gms/internal/ads/zzzx;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzabr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->g:[Lcom/google/android/gms/internal/ads/zzabr;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->l:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->j:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->f:J

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzabo;)[Lcom/google/android/gms/internal/ads/zzabr;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabo;->g:[Lcom/google/android/gms/internal/ads/zzabr;

    return-object p0
.end method

.method private final c(I)Lcom/google/android/gms/internal/ads/zzabr;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->g:[Lcom/google/android/gms/internal/ads/zzabr;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzabr;->g(I)Z

    move-result v4

    if-eqz v4, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 1
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_1f

    return v1

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    return v1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_2e

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v8

    cmp-long v10, v2, v8

    if-ltz v10, :cond_28

    const-wide/32 v10, 0x40000

    add-long/2addr v10, v8

    cmp-long v12, v2, v10

    if-lez v12, :cond_1f

    goto :goto_28

    :cond_1f
    sub-long/2addr v2, v8

    .line 2
    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzzk;

    long-to-int v3, v2

    .line 3
    invoke-virtual {v8, v3, v7}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    goto :goto_2e

    :cond_28
    :goto_28
    move-object/from16 v8, p2

    .line 4
    iput-wide v2, v8, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v2, 0x0

    :goto_2f
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    if-eqz v2, :cond_34

    return v6

    :cond_34
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    const/16 v3, 0xc

    const/4 v8, 0x0

    if-eqz v2, :cond_3b2

    const v9, 0x6c726468

    const v10, 0x5453494c

    const/4 v11, 0x2

    if-eq v2, v6, :cond_353

    const/4 v12, 0x3

    if-eq v2, v11, :cond_22e

    const/4 v9, 0x6

    const v11, 0x69766f6d

    const/4 v13, 0x4

    const-wide/16 v16, 0x8

    const/16 v14, 0x10

    if-eq v2, v12, :cond_199

    const/4 v4, 0x5

    const/16 v5, 0x8

    if-eq v2, v13, :cond_169

    if-eq v2, v4, :cond_e7

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzabo;->l:J

    cmp-long v2, v12, v14

    if-ltz v2, :cond_66

    const/4 v7, -0x1

    goto/16 :goto_e6

    :cond_66
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->i:Lcom/google/android/gms/internal/ads/zzabr;

    if-eqz v2, :cond_75

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabr;->h(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result v1

    if-nez v1, :cond_72

    goto/16 :goto_e6

    :cond_72
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzabo;->i:Lcom/google/android/gms/internal/ads/zzabr;

    return v7

    :cond_75
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v8

    const-wide/16 v12, 0x1

    and-long/2addr v8, v12

    cmp-long v2, v8, v12

    if-nez v2, :cond_86

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzk;

    .line 5
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    :cond_86
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzzk;

    .line 6
    invoke-virtual {v4, v2, v7, v3, v7}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v2

    if-ne v2, v10, :cond_b6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v2

    if-ne v2, v11, :cond_ad

    goto :goto_af

    :cond_ad
    const/16 v3, 0x8

    .line 11
    :goto_af
    invoke-virtual {v4, v3, v7}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    goto :goto_e6

    :cond_b6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v3

    const v6, 0x4b4e554a    # 1.352225E7f

    if-ne v2, v6, :cond_cc

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    goto :goto_e6

    .line 14
    :cond_cc
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    .line 16
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzabo;->c(I)Lcom/google/android/gms/internal/ads/zzabr;

    move-result-object v2

    if-nez v2, :cond_e1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    goto :goto_e6

    .line 17
    :cond_e1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzabr;->e(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->i:Lcom/google/android/gms/internal/ads/zzabr;

    :goto_e6
    return v7

    .line 18
    :cond_e7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzabo;->m:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzabo;->m:I

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 19
    invoke-virtual {v1, v3, v7, v4, v7}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v1

    if-ge v1, v14, :cond_102

    const-wide/16 v18, 0x0

    goto :goto_11e

    .line 20
    :cond_102
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    .line 21
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v3

    int-to-long v3, v3

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzabo;->k:J

    cmp-long v5, v3, v10

    if-lez v5, :cond_117

    const-wide/16 v18, 0x0

    goto :goto_11b

    :cond_117
    add-long v10, v10, v16

    move-wide/from16 v18, v10

    .line 23
    :goto_11b
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 24
    :cond_11e
    :goto_11e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v1

    if-lt v1, v14, :cond_146

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v1

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v3

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v4

    int-to-long v4, v4

    add-long v4, v4, v18

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    .line 29
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzabo;->c(I)Lcom/google/android/gms/internal/ads/zzabr;

    move-result-object v1

    if-eqz v1, :cond_11e

    and-int/2addr v3, v14

    if-ne v3, v14, :cond_142

    .line 30
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzabr;->b(J)V

    .line 31
    :cond_142
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabr;->d()V

    goto :goto_11e

    :cond_146
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->g:[Lcom/google/android/gms/internal/ads/zzabr;

    .line 32
    array-length v2, v1

    const/4 v3, 0x0

    :goto_14a
    if-ge v3, v2, :cond_154

    aget-object v4, v1, v3

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzabr;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14a

    :cond_154
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzabo;->n:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->d:Lcom/google/android/gms/internal/ads/zzzx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabl;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzabo;->f:J

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzabl;-><init>(Lcom/google/android/gms/internal/ads/zzabo;J)V

    .line 34
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->k:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    return v7

    .line 35
    :cond_169
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzzk;

    .line 36
    invoke-virtual {v3, v2, v7, v5, v7}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 37
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 39
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v3

    const v5, 0x31786469

    if-ne v2, v5, :cond_190

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzabo;->m:I

    goto :goto_198

    :cond_190
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    :goto_198
    return v7

    :cond_199
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzabo;->k:J

    cmp-long v8, v13, v4

    if-eqz v8, :cond_1ab

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v4

    cmp-long v8, v4, v13

    if-nez v8, :cond_1a8

    goto :goto_1ab

    .line 40
    :cond_1a8
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    return v7

    .line 41
    :cond_1ab
    :goto_1ab
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzzk;

    .line 42
    invoke-virtual {v5, v4, v7, v3, v7}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 43
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 44
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzabo;->b:Lcom/google/android/gms/internal/ads/zzabn;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 45
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzabn;->a(Lcom/google/android/gms/internal/ads/zzen;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzabo;->b:Lcom/google/android/gms/internal/ads/zzabn;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzabn;->a:I

    const v12, 0x46464952

    if-ne v8, v12, :cond_1db

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 47
    invoke-virtual {v1, v3, v7}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    return v7

    :cond_1db
    if-ne v8, v10, :cond_221

    if-eq v4, v11, :cond_1e0

    goto :goto_221

    :cond_1e0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzabo;->k:J

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzabn;->b:I

    int-to-long v10, v5

    add-long/2addr v3, v10

    add-long v3, v3, v16

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzabo;->l:J

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzabo;->n:Z

    if-nez v5, :cond_215

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzabo;->e:Lcom/google/android/gms/internal/ads/zzabp;

    .line 48
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzabp;->b:I

    const/16 v2, 0x10

    and-int/2addr v5, v2

    if-eq v5, v2, :cond_20f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->d:Lcom/google/android/gms/internal/ads/zzzx;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaaw;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzabo;->f:J

    const-wide/16 v10, 0x0

    invoke-direct {v3, v4, v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    .line 50
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzabo;->n:Z

    goto :goto_215

    :cond_20f
    const/4 v2, 0x4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    return v7

    :cond_215
    :goto_215
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    return v7

    .line 51
    :cond_221
    :goto_221
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v1

    iget v3, v5, Lcom/google/android/gms/internal/ads/zzabn;->b:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    return v7

    .line 52
    :cond_22e
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->j:I

    add-int/lit8 v2, v2, -0x4

    .line 53
    new-instance v3, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 54
    invoke-virtual {v1, v4, v7, v2, v7}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    .line 55
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzabs;->b(ILcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabs;->zza()I

    move-result v2

    if-ne v2, v9, :cond_338

    .line 56
    const-class v2, Lcom/google/android/gms/internal/ads/zzabp;

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzabs;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzabk;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzabp;

    if-eqz v2, :cond_330

    .line 58
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->e:Lcom/google/android/gms/internal/ads/zzabp;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzabp;->c:I

    int-to-long v3, v3

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzabp;->a:I

    int-to-long v9, v2

    mul-long v3, v3, v9

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzabo;->f:J

    new-instance v2, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzabs;->a:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_26d
    if-ge v4, v3, :cond_31c

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 61
    check-cast v5, Lcom/google/android/gms/internal/ads/zzabk;

    .line 62
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzabk;->zza()I

    move-result v9

    const v10, 0x6c727473

    if-ne v9, v10, :cond_313

    .line 63
    check-cast v5, Lcom/google/android/gms/internal/ads/zzabs;

    add-int/lit8 v9, v14, 0x1

    const-class v10, Lcom/google/android/gms/internal/ads/zzabq;

    .line 64
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzabs;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzabk;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzabq;

    const-class v13, Lcom/google/android/gms/internal/ads/zzabt;

    .line 65
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzabs;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzabk;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzabt;

    const-string v15, "AviExtractor"

    if-nez v10, :cond_29f

    const-string v5, "Missing Stream Header"

    .line 66
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29b
    move/from16 p1, v9

    goto/16 :goto_30c

    :cond_29f
    if-nez v13, :cond_2a7

    const-string v5, "Missing Stream Format"

    .line 67
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29b

    :cond_2a7
    iget v15, v10, Lcom/google/android/gms/internal/ads/zzabq;->d:I

    move/from16 p1, v9

    int-to-long v8, v15

    iget v15, v10, Lcom/google/android/gms/internal/ads/zzabq;->b:I

    int-to-long v11, v15

    iget v15, v10, Lcom/google/android/gms/internal/ads/zzabq;->c:I

    int-to-long v6, v15

    const-wide/32 v15, 0xf4240

    mul-long v18, v11, v15

    move-wide/from16 v16, v8

    move-wide/from16 v20, v6

    .line 68
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v6

    iget-object v8, v13, Lcom/google/android/gms/internal/ads/zzabt;->a:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaf;->b()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v9

    .line 69
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/zzad;->g(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v11, v10, Lcom/google/android/gms/internal/ads/zzabq;->e:I

    if-eqz v11, :cond_2cf

    .line 70
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzad;->l(I)Lcom/google/android/gms/internal/ads/zzad;

    :cond_2cf
    const-class v11, Lcom/google/android/gms/internal/ads/zzabu;

    .line 71
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzabs;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzabk;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzabu;

    if-eqz v5, :cond_2de

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzabu;->a:Ljava/lang/String;

    .line 72
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzad;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    :cond_2de
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    .line 73
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbt;->b(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_2ee

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2ec

    const/4 v15, 0x2

    goto :goto_2ef

    :cond_2ec
    const/4 v8, 0x0

    goto :goto_30c

    :cond_2ee
    move v15, v5

    :goto_2ef
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzabo;->d:Lcom/google/android/gms/internal/ads/zzzx;

    .line 74
    invoke-interface {v5, v14, v15}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v5

    .line 75
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzabr;

    iget v9, v10, Lcom/google/android/gms/internal/ads/zzabq;->d:I

    move-object v13, v8

    move-wide/from16 v16, v6

    move/from16 v18, v9

    move-object/from16 v19, v5

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzabr;-><init>(IIJILcom/google/android/gms/internal/ads/zzabb;)V

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzabo;->f:J

    :goto_30c
    if-eqz v8, :cond_311

    .line 76
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_311
    move/from16 v14, p1

    :cond_313
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_26d

    :cond_31c
    const/4 v4, 0x0

    new-array v1, v4, [Lcom/google/android/gms/internal/ads/zzabr;

    .line 77
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzabr;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->g:[Lcom/google/android/gms/internal/ads/zzabr;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->d:Lcom/google/android/gms/internal/ads/zzzx;

    .line 78
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    return v4

    :cond_330
    const-string v1, "AviHeader not found"

    const/4 v2, 0x0

    .line 79
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    :cond_338
    move-object v2, v8

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabs;->zza()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected header list type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 83
    :cond_353
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v4, 0x0

    .line 84
    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 85
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->b:Lcom/google/android/gms/internal/ads/zzabn;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabo;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 86
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzabn;->a(Lcom/google/android/gms/internal/ads/zzen;)V

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzabn;->a:I

    if-ne v3, v10, :cond_39b

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzabn;->c:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->b:Lcom/google/android/gms/internal/ads/zzabn;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzabn;->c:I

    if-ne v2, v9, :cond_384

    .line 88
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzabn;->b:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->j:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    const/4 v1, 0x0

    return v1

    .line 89
    :cond_384
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hdrl expected, found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    :cond_39b
    const/4 v2, 0x0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LIST expected, found: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    :cond_3b2
    move-object v2, v8

    .line 93
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzabo;->a(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result v4

    if-eqz v4, :cond_3c3

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    return v2

    :cond_3c3
    const-string v1, "AVI Header List not found"

    .line 95
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    goto :goto_3cb

    :goto_3ca
    throw v1

    :goto_3cb
    goto :goto_3ca
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->d:Lcom/google/android/gms/internal/ads/zzzx;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    return-void
.end method

.method public final h(JJ)V
    .registers 8

    const-wide/16 p3, -0x1

    .line 1
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzabo;->h:J

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzabo;->i:Lcom/google/android/gms/internal/ads/zzabr;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzabo;->g:[Lcom/google/android/gms/internal/ads/zzabr;

    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p4, :cond_16

    aget-object v2, p3, v1

    .line 2
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzabr;->f(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    const-wide/16 p3, 0x0

    cmp-long v1, p1, p3

    if-nez v1, :cond_28

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->g:[Lcom/google/android/gms/internal/ads/zzabr;

    .line 3
    array-length p1, p1

    if-nez p1, :cond_24

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    return-void

    :cond_24
    const/4 p1, 0x3

    :goto_25
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->c:I

    return-void

    :cond_28
    const/4 p1, 0x6

    goto :goto_25
.end method
