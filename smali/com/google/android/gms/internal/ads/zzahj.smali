###### Class com.google.android.gms.internal.ads.zzahj (com.google.android.gms.internal.ads.zzahj)
.class public final Lcom/google/android/gms/internal/ads/zzahj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# static fields
.field private static final v:[B


# instance fields
.field private final a:Z

.field private final b:Lcom/google/android/gms/internal/ads/zzem;

.field private final c:Lcom/google/android/gms/internal/ads/zzen;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/gms/internal/ads/zzabb;

.field private g:Lcom/google/android/gms/internal/ads/zzabb;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:J

.field private r:I

.field private s:J

.field private t:Lcom/google/android/gms/internal/ads/zzabb;

.field private u:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahj;->v:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzem;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzahj;->v:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahj;->h()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->m:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->q:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->s:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahj;->d:Ljava/lang/String;

    return-void
.end method

.method public static f(I)Z
    .registers 2

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private final g()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->l:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahj;->h()V

    return-void
.end method

.method private final h()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->j:I

    return-void
.end method

.method private final i()V
    .registers 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    return-void
.end method

.method private final j(Lcom/google/android/gms/internal/ads/zzabb;JII)V
    .registers 7

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->h:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->t:Lcom/google/android/gms/internal/ads/zzabb;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahj;->u:J

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzahj;->r:I

    return-void
.end method

.method private final k(Lcom/google/android/gms/internal/ads/zzen;[BI)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    .line 2
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private static final l(BB)Z
    .registers 2

    and-int/lit16 p0, p1, 0xff

    const p1, 0xff00

    or-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzahj;->f(I)Z

    move-result p0

    return p0
.end method

.method private static final m(Lcom/google/android/gms/internal/ads/zzen;[BI)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->s:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahj;->g()V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->f:Lcom/google/android/gms/internal/ads/zzabb;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    :cond_b
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    if-lez v0, :cond_2c1

    iget v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->h:I

    const/16 v1, 0xd

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_192

    if-eq v0, v10, :cond_157

    const/16 v5, 0xa

    if-eq v0, v9, :cond_12a

    if-eq v0, v4, :cond_5f

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->r:I

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    sub-int/2addr v1, v2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->t:Lcom/google/android/gms/internal/ads/zzabb;

    .line 5
    invoke-interface {v1, v7, v0}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    iget v12, v6, Lcom/google/android/gms/internal/ads/zzahj;->r:I

    if-ne v1, v12, :cond_b

    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/zzahj;->s:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v9, v0

    if-eqz v2, :cond_5b

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->t:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 6
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->s:J

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzahj;->u:J

    add-long/2addr v0, v2

    iput-wide v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->s:J

    .line 7
    :cond_5b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahj;->h()V

    goto :goto_b

    .line 8
    :cond_5f
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->k:Z

    const/4 v11, 0x5

    if-eq v10, v0, :cond_66

    const/4 v0, 0x5

    goto :goto_67

    :cond_66
    const/4 v0, 0x7

    :goto_67
    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    .line 9
    invoke-direct {v6, v7, v12, v0}, Lcom/google/android/gms/internal/ads/zzahj;->k(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 10
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->p:Z

    if-nez v0, :cond_105

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 11
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    add-int/2addr v0, v10

    if-eq v0, v9, :cond_9e

    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Detected audio object type: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AdtsReader"

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 13
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 14
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzahj;->n:I

    .line 15
    sget v11, Lcom/google/android/gms/internal/ads/zzys;->c:I

    shr-int/lit8 v11, v5, 0x1

    and-int/2addr v11, v2

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    new-array v9, v9, [B

    aput-byte v11, v9, v8

    shl-int/lit8 v2, v5, 0x7

    shl-int/2addr v0, v4

    and-int/lit16 v2, v2, 0x80

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v9, v10

    .line 16
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzys;->a([B)Lcom/google/android/gms/internal/ads/zzyr;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzahj;->e:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string v4, "audio/mp4a-latm"

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzyr;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzad;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzyr;->b:I

    .line 20
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzyr;->a:I

    .line 21
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 22
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    int-to-long v8, v2

    .line 25
    div-long/2addr v4, v8

    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/zzahj;->q:J

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzahj;->f:Lcom/google/android/gms/internal/ads/zzabb;

    .line 26
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzahj;->p:Z

    goto :goto_10a

    .line 27
    :cond_105
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 28
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 29
    :goto_10a
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->k:Z

    if-eqz v1, :cond_11d

    add-int/lit8 v0, v0, -0x2

    :cond_11d
    move v5, v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->f:Lcom/google/android/gms/internal/ads/zzabb;

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzahj;->q:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzahj;->j(Lcom/google/android/gms/internal/ads/zzabb;JII)V

    goto/16 :goto_b

    .line 33
    :cond_12a
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->c:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    .line 34
    invoke-direct {v6, v7, v0, v5}, Lcom/google/android/gms/internal/ads/zzahj;->k(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->g:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 35
    invoke-interface {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->c:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v1, 0x6

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->g:Lcom/google/android/gms/internal/ads/zzabb;

    const-wide/16 v2, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->r()I

    move-result v0

    add-int/2addr v5, v0

    const/16 v4, 0xa

    move-object/from16 v0, p0

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzahj;->j(Lcom/google/android/gms/internal/ads/zzabb;JII)V

    goto/16 :goto_b

    .line 39
    :cond_157
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v4

    .line 40
    aget-byte v2, v2, v4

    aput-byte v2, v1, v8

    .line 41
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 42
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->n:I

    if-eq v1, v5, :cond_181

    if-eq v0, v1, :cond_181

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahj;->g()V

    goto/16 :goto_b

    :cond_181
    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->l:Z

    if-nez v1, :cond_18d

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzahj;->l:Z

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->o:I

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->m:I

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->n:I

    .line 44
    :cond_18d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahj;->i()V

    goto/16 :goto_b

    .line 45
    :cond_192
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v12

    :goto_19e
    if-ge v11, v12, :cond_2bc

    add-int/lit8 v13, v11, 0x1

    .line 46
    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    iget v14, v6, Lcom/google/android/gms/internal/ads/zzahj;->j:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_271

    int-to-byte v14, v11

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/ads/zzahj;->l(BB)Z

    move-result v14

    if-eqz v14, :cond_271

    iget-boolean v14, v6, Lcom/google/android/gms/internal/ads/zzahj;->l:Z

    if-nez v14, :cond_250

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    .line 47
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    .line 48
    invoke-static {v7, v15, v10}, Lcom/google/android/gms/internal/ads/zzahj;->m(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    move-result v15

    if-nez v15, :cond_1ca

    goto/16 :goto_271

    .line 49
    :cond_1ca
    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 50
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 51
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v15

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->m:I

    if-eq v8, v5, :cond_1db

    if-ne v15, v8, :cond_271

    :cond_1db
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->n:I

    if-eq v8, v5, :cond_1fe

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    .line 52
    invoke-static {v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzahj;->m(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    move-result v8

    if-nez v8, :cond_1ea

    goto :goto_250

    .line 53
    :cond_1ea
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 54
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 55
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v8

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzahj;->n:I

    if-ne v8, v9, :cond_271

    add-int/lit8 v8, v14, 0x2

    .line 56
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    :cond_1fe
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    .line 57
    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzahj;->m(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    move-result v8

    if-eqz v8, :cond_250

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    const/16 v9, 0xe

    .line 58
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->b:Lcom/google/android/gms/internal/ads/zzem;

    .line 59
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v8

    if-lt v8, v2, :cond_271

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v1

    add-int/2addr v14, v8

    if-ge v14, v1, :cond_250

    .line 60
    aget-byte v8, v9, v14

    if-ne v8, v5, :cond_238

    add-int/lit8 v14, v14, 0x1

    if-eq v14, v1, :cond_250

    .line 61
    aget-byte v1, v9, v14

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzahj;->l(BB)Z

    move-result v8

    if-eqz v8, :cond_271

    and-int/lit8 v1, v1, 0x8

    shr-int/2addr v1, v4

    if-ne v1, v15, :cond_271

    goto :goto_250

    :cond_238
    const/16 v15, 0x49

    if-ne v8, v15, :cond_271

    add-int/lit8 v8, v14, 0x1

    if-eq v8, v1, :cond_250

    .line 62
    aget-byte v8, v9, v8

    const/16 v15, 0x44

    if-ne v8, v15, :cond_271

    add-int/lit8 v14, v14, 0x2

    if-eq v14, v1, :cond_250

    .line 63
    aget-byte v1, v9, v14

    const/16 v8, 0x33

    if-ne v1, v8, :cond_271

    :cond_250
    :goto_250
    and-int/lit8 v0, v11, 0x8

    shr-int/2addr v0, v4

    .line 64
    iput v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->o:I

    and-int/lit8 v0, v11, 0x1

    xor-int/2addr v0, v10

    if-eq v10, v0, :cond_25c

    const/4 v0, 0x0

    goto :goto_25d

    :cond_25c
    const/4 v0, 0x1

    :goto_25d
    iput-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->k:Z

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->l:Z

    if-nez v0, :cond_269

    iput v10, v6, Lcom/google/android/gms/internal/ads/zzahj;->h:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    goto :goto_26c

    .line 65
    :cond_269
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahj;->i()V

    .line 66
    :goto_26c
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto/16 :goto_b

    .line 67
    :cond_271
    :goto_271
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->j:I

    or-int v8, v1, v11

    const/16 v9, 0x149

    if-eq v8, v9, :cond_2b0

    const/16 v9, 0x1ff

    if-eq v8, v9, :cond_2ab

    const/16 v9, 0x344

    if-eq v8, v9, :cond_2a6

    const/16 v9, 0x433

    if-eq v8, v9, :cond_294

    const/16 v8, 0x100

    if-eq v1, v8, :cond_291

    iput v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->j:I

    add-int/lit8 v11, v13, -0x1

    const/16 v1, 0xd

    const/4 v8, 0x0

    goto :goto_2b9

    :cond_291
    const/4 v1, 0x2

    const/4 v8, 0x0

    goto :goto_2b6

    :cond_294
    const/4 v1, 0x2

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzahj;->h:I

    iput v4, v6, Lcom/google/android/gms/internal/ads/zzahj;->i:I

    const/4 v8, 0x0

    iput v8, v6, Lcom/google/android/gms/internal/ads/zzahj;->r:I

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahj;->c:Lcom/google/android/gms/internal/ads/zzen;

    .line 68
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 69
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto/16 :goto_b

    :cond_2a6
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x400

    goto :goto_2b4

    :cond_2ab
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x200

    goto :goto_2b4

    :cond_2b0
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x300

    :goto_2b4
    iput v9, v6, Lcom/google/android/gms/internal/ads/zzahj;->j:I

    :goto_2b6
    move v11, v13

    const/16 v1, 0xd

    :goto_2b9
    const/4 v9, 0x2

    goto/16 :goto_19e

    .line 70
    :cond_2bc
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto/16 :goto_b

    :cond_2c1
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->f:Lcom/google/android/gms/internal/ads/zzabb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->t:Lcom/google/android/gms/internal/ads/zzabb;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->a:Z

    if-eqz v0, :cond_41

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->g:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string p2, "application/id3"

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p2

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    return-void

    :cond_41
    new-instance p1, Lcom/google/android/gms/internal/ads/zzzt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzzt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->g:Lcom/google/android/gms/internal/ads/zzabb;

    return-void
.end method

.method public final e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->s:J

    :cond_b
    return-void
.end method
