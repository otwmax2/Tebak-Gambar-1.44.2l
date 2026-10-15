###### Class com.google.android.gms.internal.ads.zzaca (com.google.android.gms.internal.ads.zzaca)
.class public final Lcom/google/android/gms/internal/ads/zzaca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final n:Lcom/google/android/gms/internal/ads/zzaab;


# instance fields
.field private final a:[B

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private final c:Lcom/google/android/gms/internal/ads/zzaac;

.field private d:Lcom/google/android/gms/internal/ads/zzzx;

.field private e:Lcom/google/android/gms/internal/ads/zzabb;

.field private f:I

.field private g:Lcom/google/android/gms/internal/ads/zzbq;

.field private h:Lcom/google/android/gms/internal/ads/zzaah;

.field private i:I

.field private j:I

.field private k:Lcom/google/android/gms/internal/ads/zzaby;

.field private l:I

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabz;->b:Lcom/google/android/gms/internal/ads/zzabz;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaca;->n:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaca;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->a:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaac;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->c:Lcom/google/android/gms/internal/ads/zzaac;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaca;->f:I

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/zzen;Z)J
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->h:Lcom/google/android/gms/internal/ads/zzaah;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v0

    :goto_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_2b

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaca;->h:Lcom/google/android/gms/internal/ads/zzaah;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaca;->j:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaca;->c:Lcom/google/android/gms/internal/ads/zzaac;

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaad;->c(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzaah;ILcom/google/android/gms/internal/ads/zzaac;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->c:Lcom/google/android/gms/internal/ads/zzaac;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzaac;->a:J

    return-wide p1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2b
    if-eqz p2, :cond_65

    :goto_2d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaca;->i:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_5d

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    :try_start_39
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaca;->h:Lcom/google/android/gms/internal/ads/zzaah;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaca;->j:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaca;->c:Lcom/google/android/gms/internal/ads/zzaac;

    .line 7
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzaad;->c(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzaah;ILcom/google/android/gms/internal/ads/zzaac;)Z

    move-result p2
    :try_end_43
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    const/4 p2, 0x0

    :goto_45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v2

    if-le v1, v2, :cond_50

    goto :goto_5a

    :cond_50
    if-eqz p2, :cond_5a

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->c:Lcom/google/android/gms/internal/ads/zzaac;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzaac;->a:J

    return-wide p1

    :cond_5a
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_5d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto :goto_68

    .line 10
    :cond_65
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    :goto_68
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private final c()V
    .registers 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->m:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaca;->h:Lcom/google/android/gms/internal/ads/zzaah;

    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaah;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaca;->e:Lcom/google/android/gms/internal/ads/zzabb;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaca;->l:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaae;->a(Lcom/google/android/gms/internal/ads/zzzv;Z)Lcom/google/android/gms/internal/ads/zzbq;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 3
    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    return v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_235

    const/4 v5, 0x2

    if-eq v2, v3, :cond_225

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v2, v5, :cond_202

    if-eq v2, v7, :cond_14b

    const-wide/16 v9, -0x1

    if-eq v2, v8, :cond_da

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->e:Lcom/google/android/gms/internal/ads/zzabb;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->h:Lcom/google/android/gms/internal/ads/zzaah;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->k:Lcom/google/android/gms/internal/ads/zzaby;

    const/4 v6, -0x1

    if-eqz v5, :cond_35

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzzg;->e()Z

    move-result v7

    if-eqz v7, :cond_35

    move-object/from16 v7, p2

    invoke-virtual {v5, v1, v7}, Lcom/google/android/gms/internal/ads/zzzg;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I

    move-result v4

    goto/16 :goto_bb

    :cond_35
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaca;->m:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_43

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaad;->b(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaah;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->m:J

    goto/16 :goto_bb

    :cond_43
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v5

    const v7, 0x8000

    if-ge v5, v7, :cond_71

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    sub-int/2addr v7, v5

    .line 7
    invoke-interface {v1, v2, v5, v7}, Lcom/google/android/gms/internal/ads/zzzv;->e([BII)I

    move-result v1

    if-ne v1, v6, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    if-nez v3, :cond_64

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    add-int/2addr v5, v1

    .line 8
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    goto :goto_72

    .line 9
    :cond_64
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v1

    if-nez v1, :cond_72

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaca;->c()V

    const/4 v4, -0x1

    goto :goto_bb

    :cond_71
    const/4 v3, 0x0

    .line 11
    :cond_72
    :goto_72
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v2

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->l:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->i:I

    if-ge v5, v6, :cond_8a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v7

    sub-int/2addr v6, v5

    .line 12
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :cond_8a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 13
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzaca;->b(Lcom/google/android/gms/internal/ads/zzen;Z)J

    move-result-wide v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v3

    sub-int/2addr v3, v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->e:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 15
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaaz;->b(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->l:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->l:I

    cmp-long v1, v5, v9

    if-eqz v1, :cond_b1

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaca;->c()V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaca;->l:I

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->m:J

    :cond_b1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_bc

    :goto_bb
    return v4

    :cond_bc
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    .line 17
    invoke-static {v3, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 18
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    return v4

    .line 20
    :cond_da
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    .line 21
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzzk;

    .line 22
    invoke-virtual {v7, v3, v4, v5, v4}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_141

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->j:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->d:Lcom/google/android/gms/internal/ads/zzzx;

    .line 25
    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v16

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaca;->h:Lcom/google/android/gms/internal/ads/zzaah;

    .line 26
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzaah;->k:Lcom/google/android/gms/internal/ads/zzaag;

    if-eqz v1, :cond_116

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaf;

    invoke-direct {v1, v12, v14, v15}, Lcom/google/android/gms/internal/ads/zzaaf;-><init>(Lcom/google/android/gms/internal/ads/zzaah;J)V

    goto :goto_13a

    :cond_116
    const-wide/16 v5, 0x0

    cmp-long v1, v16, v9

    if-eqz v1, :cond_131

    .line 28
    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzaah;->j:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_131

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaby;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaca;->j:I

    move-object v11, v1

    .line 29
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzaby;-><init>(Lcom/google/android/gms/internal/ads/zzaah;IJJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->k:Lcom/google/android/gms/internal/ads/zzaby;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzg;->b()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    goto :goto_13a

    .line 31
    :cond_131
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaw;

    .line 32
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaah;->a()J

    move-result-wide v7

    invoke-direct {v1, v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    .line 33
    :goto_13a
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->f:I

    return v4

    .line 34
    :cond_141
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    const-string v1, "First frame does not start with sync code."

    .line 35
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 36
    :cond_14b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->h:Lcom/google/android/gms/internal/ads/zzaah;

    .line 37
    :cond_14d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzem;

    new-array v5, v8, [B

    invoke-direct {v3, v5, v8}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzzk;

    .line 38
    invoke-virtual {v6, v5, v4, v8, v4}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 39
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v5

    const/4 v9, 0x7

    .line 40
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v9

    const/16 v10, 0x18

    .line 41
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    add-int/2addr v3, v8

    const/4 v10, 0x6

    if-nez v9, :cond_17f

    const/16 v2, 0x26

    new-array v3, v2, [B

    .line 42
    invoke-virtual {v6, v3, v4, v2, v4}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaah;

    .line 43
    invoke-direct {v2, v3, v8}, Lcom/google/android/gms/internal/ads/zzaah;-><init>([BI)V

    goto :goto_1d9

    :cond_17f
    if-eqz v2, :cond_1fc

    if-ne v9, v7, :cond_198

    .line 44
    new-instance v9, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v11

    .line 45
    invoke-virtual {v6, v11, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    .line 46
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzaae;->b(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaah;->f(Lcom/google/android/gms/internal/ads/zzaag;)Lcom/google/android/gms/internal/ads/zzaah;

    move-result-object v2

    goto :goto_1d9

    :cond_198
    if-ne v9, v8, :cond_1b8

    .line 47
    new-instance v9, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v11

    .line 48
    invoke-virtual {v6, v11, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    .line 49
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 50
    invoke-static {v9, v4, v4}, Lcom/google/android/gms/internal/ads/zzabh;->c(Lcom/google/android/gms/internal/ads/zzen;ZZ)Lcom/google/android/gms/internal/ads/zzabe;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzabe;->b:[Ljava/lang/String;

    .line 51
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaah;->g(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaah;

    move-result-object v2

    goto :goto_1d9

    :cond_1b8
    if-ne v9, v10, :cond_1d6

    .line 53
    new-instance v9, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v11

    .line 54
    invoke-virtual {v6, v11, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    .line 55
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 56
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzacu;->h(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzacu;

    move-result-object v3

    .line 57
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaah;->e(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaah;

    move-result-object v2

    goto :goto_1d9

    .line 58
    :cond_1d6
    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 59
    :goto_1d9
    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->h:Lcom/google/android/gms/internal/ads/zzaah;

    if-eqz v5, :cond_14d

    .line 60
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzaah;->c:I

    .line 61
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->i:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->e:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->h:Lcom/google/android/gms/internal/ads/zzaah;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->a:[B

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->g:Lcom/google/android/gms/internal/ads/zzbq;

    .line 62
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzaah;->c([BLcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaca;->f:I

    return v4

    :cond_1fc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 63
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 64
    :cond_202
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 65
    invoke-virtual {v1, v3, v4, v8, v4}, Lcom/google/android/gms/internal/ads/zzzk;->g([BIIZ)Z

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v1

    const-wide/32 v8, 0x664c6143

    cmp-long v3, v1, v8

    if-nez v3, :cond_21e

    .line 67
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaca;->f:I

    return v4

    :cond_21e
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 68
    :cond_225
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->a:[B

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzzk;

    const/16 v6, 0x2a

    .line 69
    invoke-virtual {v3, v2, v4, v6, v4}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    .line 70
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->f:I

    return v4

    .line 71
    :cond_235
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v5

    .line 72
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzaae;->a(Lcom/google/android/gms/internal/ads/zzzv;Z)Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v7

    sub-long/2addr v7, v5

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    long-to-int v5, v7

    .line 73
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->g:Lcom/google/android/gms/internal/ads/zzbq;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->f:I

    return v4
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->d:Lcom/google/android/gms/internal/ads/zzzx;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->e:Lcom/google/android/gms/internal/ads/zzabb;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    return-void
.end method

.method public final h(JJ)V
    .registers 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_a

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->f:I

    goto :goto_11

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->k:Lcom/google/android/gms/internal/ads/zzaby;

    if-eqz p1, :cond_11

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzzg;->d(J)V

    :cond_11
    :goto_11
    cmp-long p1, p3, v1

    if-nez p1, :cond_16

    goto :goto_18

    :cond_16
    const-wide/16 v1, -0x1

    .line 3
    :goto_18
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaca;->m:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->l:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzabz (com.google.android.gms.internal.ads.zzabz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzabz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzabz;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabz;->b:Lcom/google/android/gms/internal/ads/zzabz;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaca;->n:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaca;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaca;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method
