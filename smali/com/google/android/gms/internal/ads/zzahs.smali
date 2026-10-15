###### Class com.google.android.gms.internal.ads.zzahs (com.google.android.gms.internal.ads.zzahs)
.class public final Lcom/google/android/gms/internal/ads/zzahs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# static fields
.field private static final l:[F


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzajc;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private final c:[Z

.field private final d:Lcom/google/android/gms/internal/ads/zzahq;

.field private final e:Lcom/google/android/gms/internal/ads/zzaic;

.field private f:Lcom/google/android/gms/internal/ads/zzahr;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/internal/ads/zzabb;

.field private j:Z

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahs;->l:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzahs;-><init>(Lcom/google/android/gms/internal/ads/zzajc;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajc;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->a:Lcom/google/android/gms/internal/ads/zzajc;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->c:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzahq;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->d:Lcom/google/android/gms/internal/ads/zzahq;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahs;->k:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaic;

    const/16 v1, 0xb2

    .line 3
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->e:Lcom/google/android/gms/internal/ads/zzaic;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->b:Lcom/google/android/gms/internal/ads/zzen;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->c:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaar;->e([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->d:Lcom/google/android/gms/internal/ads/zzahq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahq;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->f:Lcom/google/android/gms/internal/ads/zzahr;

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahr;->d()V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->e:Lcom/google/android/gms/internal/ads/zzaic;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->g:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->k:J

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->f:Lcom/google/android/gms/internal/ads/zzahr;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->i:Lcom/google/android/gms/internal/ads/zzabb;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->g:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->g:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->i:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v5

    move-object/from16 v6, p1

    .line 3
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    :goto_2d
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->c:[Z

    .line 4
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaar;->a([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_49

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->j:Z

    if-nez v4, :cond_3e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->d:Lcom/google/android/gms/internal/ads/zzahq;

    .line 5
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzahq;->a([BII)V

    :cond_3e
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->f:Lcom/google/android/gms/internal/ads/zzahr;

    .line 6
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzahr;->a([BII)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->e:Lcom/google/android/gms/internal/ads/zzaic;

    .line 7
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    return-void

    :cond_49
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    .line 8
    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahs;->j:Z

    if-nez v9, :cond_17e

    if-lez v8, :cond_60

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahs;->d:Lcom/google/android/gms/internal/ads/zzahq;

    .line 9
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzahq;->a([BII)V

    :cond_60
    if-gez v8, :cond_64

    neg-int v9, v8

    goto :goto_65

    :cond_64
    const/4 v9, 0x0

    :goto_65
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzahs;->d:Lcom/google/android/gms/internal/ads/zzahq;

    .line 10
    invoke-virtual {v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzahq;->c(II)Z

    move-result v9

    if-eqz v9, :cond_17e

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahs;->i:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzahs;->d:Lcom/google/android/gms/internal/ads/zzahq;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzahq;->d:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzahs;->h:Ljava/lang/String;

    .line 11
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzahq;->e:[B

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzahq;->c:I

    .line 13
    invoke-static {v15, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v15, Lcom/google/android/gms/internal/ads/zzem;

    .line 14
    array-length v10, v12

    invoke-direct {v15, v12, v10}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    .line 15
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzem;->m(I)V

    const/4 v10, 0x4

    .line 16
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->m(I)V

    .line 17
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    const/16 v13, 0x8

    .line 18
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 19
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v16

    const/4 v11, 0x3

    if-eqz v16, :cond_a2

    .line 20
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 21
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 22
    :cond_a2
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v10

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v11, "Invalid aspect ratio"

    const-string v13, "H263Reader"

    const/16 v6, 0xf

    if-ne v10, v6, :cond_c5

    const/16 v6, 0x8

    .line 23
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v10

    .line 24
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v6

    if-nez v6, :cond_c0

    .line 25
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d2

    :cond_c0
    int-to-float v10, v10

    int-to-float v6, v6

    div-float v16, v10, v6

    goto :goto_cc

    :cond_c5
    const/4 v6, 0x7

    if-ge v10, v6, :cond_cf

    .line 26
    sget-object v6, Lcom/google/android/gms/internal/ads/zzahs;->l:[F

    .line 27
    aget v16, v6, v10

    :goto_cc
    move/from16 v6, v16

    goto :goto_d4

    .line 28
    :cond_cf
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d2
    const/high16 v6, 0x3f800000    # 1.0f

    .line 29
    :goto_d4
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_10e

    .line 30
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/4 v10, 0x1

    .line 31
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 32
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v10

    if-eqz v10, :cond_10e

    const/16 v10, 0xf

    .line 33
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 34
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    .line 35
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 36
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    .line 37
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 38
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    const/4 v11, 0x3

    .line 39
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/16 v11, 0xb

    .line 40
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 41
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    .line 42
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 43
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    :cond_10e
    const/4 v10, 0x2

    .line 44
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v10

    if-eqz v10, :cond_11a

    const-string v10, "Unhandled video object layer shape"

    .line 45
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_11a
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    const/16 v10, 0x10

    .line 47
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v10

    .line 48
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    .line 49
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v11

    if-eqz v11, :cond_141

    if-nez v10, :cond_134

    const-string v10, "Invalid vop_increment_time_resolution"

    .line 50
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_141

    :cond_134
    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    :goto_137
    if-lez v10, :cond_13e

    shr-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_137

    .line 51
    :cond_13e
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 52
    :cond_141
    :goto_141
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    const/16 v10, 0xd

    .line 53
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v11

    .line 54
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    .line 55
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v10

    .line 56
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    .line 57
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 58
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string v14, "video/mp4v-es"

    .line 59
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 60
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzad;->x(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 61
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzad;->f(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 62
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzad;->p(F)Lcom/google/android/gms/internal/ads/zzad;

    .line 63
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    .line 64
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v6

    .line 65
    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzahs;->j:Z

    :cond_17e
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahs;->f:Lcom/google/android/gms/internal/ads/zzahr;

    .line 66
    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzahr;->a([BII)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahs;->e:Lcom/google/android/gms/internal/ads/zzaic;

    if-lez v8, :cond_18c

    .line 67
    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    const/4 v10, 0x0

    goto :goto_18d

    :cond_18c
    neg-int v10, v8

    :goto_18d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->e:Lcom/google/android/gms/internal/ads/zzaic;

    .line 68
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzaic;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1b3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->e:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    .line 69
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzaar;->b([BI)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahs;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 70
    sget v8, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahs;->e:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    invoke-virtual {v6, v8, v1}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->a:Lcom/google/android/gms/internal/ads/zzajc;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzahs;->k:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahs;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 71
    invoke-virtual {v1, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzajc;->a(JLcom/google/android/gms/internal/ads/zzen;)V

    :cond_1b3
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_1c9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    add-int/lit8 v6, v4, 0x2

    .line 72
    aget-byte v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c7

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahs;->e:Lcom/google/android/gms/internal/ads/zzaic;

    .line 73
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzaic;->c(I)V

    :cond_1c7
    const/16 v5, 0xb2

    :cond_1c9
    sub-int v1, v2, v4

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzahs;->g:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->f:Lcom/google/android/gms/internal/ads/zzahr;

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzahs;->j:Z

    .line 74
    invoke-virtual {v4, v8, v9, v1, v6}, Lcom/google/android/gms/internal/ads/zzahr;->b(JIZ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->f:Lcom/google/android/gms/internal/ads/zzahr;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzahs;->k:J

    .line 75
    invoke-virtual {v1, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzahr;->c(IJ)V

    move-object/from16 v6, p1

    move v1, v7

    goto/16 :goto_2d
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->i:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzahr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzahr;-><init>(Lcom/google/android/gms/internal/ads/zzabb;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzahs;->f:Lcom/google/android/gms/internal/ads/zzahr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->a:Lcom/google/android/gms/internal/ads/zzajc;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajc;->b(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V

    return-void
.end method

.method public final e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->k:J

    :cond_b
    return-void
.end method
