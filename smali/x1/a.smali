###### Class x1.a (x1.a)
.class public Lx1/a;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/a$a;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String; = "a"

.field private static final r:Landroid/graphics/Bitmap$Config;


# instance fields
.field private a:[I

.field private final b:[I

.field private c:Ljava/nio/ByteBuffer;

.field private final d:[B

.field private e:[S

.field private f:[B

.field private g:[B

.field private h:[B

.field private i:[I

.field private j:I

.field private k:[B

.field private l:Lx1/c;

.field private m:Lx1/a$a;

.field private n:Landroid/graphics/Bitmap;

.field private o:Z

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lx1/a;->r:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lx1/a$a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lx1/a;->b:[I

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lx1/a;->d:[B

    .line 4
    iput-object p1, p0, Lx1/a;->m:Lx1/a$a;

    .line 5
    new-instance p1, Lx1/c;

    invoke-direct {p1}, Lx1/c;-><init>()V

    iput-object p1, p0, Lx1/a;->l:Lx1/c;

    return-void
.end method

.method private c(Lx1/b;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_d

    .line 1
    iget-object v2, v0, Lx1/a;->c:Ljava/nio/ByteBuffer;

    iget v3, v1, Lx1/b;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_d
    if-nez v1, :cond_16

    .line 2
    iget-object v1, v0, Lx1/a;->l:Lx1/c;

    iget v2, v1, Lx1/c;->f:I

    iget v1, v1, Lx1/c;->g:I

    goto :goto_1a

    :cond_16
    iget v2, v1, Lx1/b;->c:I

    iget v1, v1, Lx1/b;->d:I

    :goto_1a
    mul-int v2, v2, v1

    .line 3
    iget-object v1, v0, Lx1/a;->h:[B

    if-eqz v1, :cond_23

    array-length v1, v1

    if-ge v1, v2, :cond_27

    .line 4
    :cond_23
    new-array v1, v2, [B

    iput-object v1, v0, Lx1/a;->h:[B

    .line 5
    :cond_27
    iget-object v1, v0, Lx1/a;->e:[S

    const/16 v3, 0x1000

    if-nez v1, :cond_31

    new-array v1, v3, [S

    .line 6
    iput-object v1, v0, Lx1/a;->e:[S

    .line 7
    :cond_31
    iget-object v1, v0, Lx1/a;->f:[B

    if-nez v1, :cond_39

    new-array v1, v3, [B

    .line 8
    iput-object v1, v0, Lx1/a;->f:[B

    .line 9
    :cond_39
    iget-object v1, v0, Lx1/a;->g:[B

    if-nez v1, :cond_43

    const/16 v1, 0x1001

    new-array v1, v1, [B

    .line 10
    iput-object v1, v0, Lx1/a;->g:[B

    .line 11
    :cond_43
    invoke-direct/range {p0 .. p0}, Lx1/a;->k()I

    move-result v1

    const/4 v4, 0x1

    shl-int v5, v4, v1

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v1, v4

    shl-int v8, v4, v1

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_54
    if-ge v10, v5, :cond_62

    .line 12
    iget-object v11, v0, Lx1/a;->e:[S

    aput-short v9, v11, v10

    .line 13
    iget-object v11, v0, Lx1/a;->f:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_54

    :cond_62
    const/4 v10, -0x1

    move/from16 v19, v1

    move/from16 v17, v7

    move/from16 v18, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_76
    if-ge v11, v2, :cond_168

    const/4 v9, 0x3

    if-nez v12, :cond_86

    .line 14
    invoke-direct/range {p0 .. p0}, Lx1/a;->l()I

    move-result v12

    if-gtz v12, :cond_85

    .line 15
    iput v9, v0, Lx1/a;->p:I

    goto/16 :goto_168

    :cond_85
    const/4 v13, 0x0

    .line 16
    :cond_86
    iget-object v3, v0, Lx1/a;->d:[B

    aget-byte v3, v3, v13

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v14

    add-int/2addr v15, v3

    add-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v4

    add-int/2addr v12, v10

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v10, v20

    move/from16 v23, v21

    :goto_9a
    if-lt v14, v4, :cond_153

    and-int v9, v15, v18

    shr-int/2addr v15, v4

    sub-int/2addr v14, v4

    if-ne v9, v5, :cond_a9

    move v4, v1

    move v3, v7

    move/from16 v18, v8

    const/4 v9, 0x3

    const/4 v10, -0x1

    goto :goto_9a

    :cond_a9
    if-le v9, v3, :cond_b1

    move/from16 v21, v1

    const/4 v1, 0x3

    .line 17
    iput v1, v0, Lx1/a;->p:I

    goto :goto_b6

    :cond_b1
    move/from16 v21, v1

    const/4 v1, 0x3

    if-ne v9, v6, :cond_c2

    :goto_b6
    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v20, v10

    move/from16 v1, v21

    move/from16 v21, v23

    goto/16 :goto_161

    :cond_c2
    const/4 v1, -0x1

    if-ne v10, v1, :cond_d8

    .line 18
    iget-object v10, v0, Lx1/a;->g:[B

    add-int/lit8 v19, v22, 0x1

    iget-object v1, v0, Lx1/a;->f:[B

    aget-byte v1, v1, v9

    aput-byte v1, v10, v22

    move v10, v9

    move/from16 v23, v10

    move/from16 v22, v19

    move/from16 v1, v21

    const/4 v9, 0x3

    goto :goto_9a

    :cond_d8
    if-lt v9, v3, :cond_e9

    .line 19
    iget-object v1, v0, Lx1/a;->g:[B

    add-int/lit8 v19, v22, 0x1

    move/from16 v24, v6

    move/from16 v6, v23

    int-to-byte v6, v6

    aput-byte v6, v1, v22

    move v1, v10

    move/from16 v22, v19

    goto :goto_ec

    :cond_e9
    move/from16 v24, v6

    move v1, v9

    :goto_ec
    if-lt v1, v5, :cond_103

    .line 20
    iget-object v6, v0, Lx1/a;->g:[B

    add-int/lit8 v19, v22, 0x1

    move/from16 v23, v5

    iget-object v5, v0, Lx1/a;->f:[B

    aget-byte v5, v5, v1

    aput-byte v5, v6, v22

    .line 21
    iget-object v5, v0, Lx1/a;->e:[S

    aget-short v1, v5, v1

    move/from16 v22, v19

    move/from16 v5, v23

    goto :goto_ec

    :cond_103
    move/from16 v23, v5

    .line 22
    iget-object v5, v0, Lx1/a;->f:[B

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    .line 23
    iget-object v6, v0, Lx1/a;->g:[B

    add-int/lit8 v19, v22, 0x1

    move/from16 v25, v7

    int-to-byte v7, v1

    aput-byte v7, v6, v22

    const/16 v6, 0x1000

    if-ge v3, v6, :cond_12e

    .line 24
    iget-object v6, v0, Lx1/a;->e:[S

    int-to-short v10, v10

    aput-short v10, v6, v3

    .line 25
    aput-byte v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    and-int v5, v3, v18

    if-nez v5, :cond_12e

    const/16 v5, 0x1000

    if-ge v3, v5, :cond_130

    add-int/lit8 v4, v4, 0x1

    add-int v18, v18, v3

    goto :goto_130

    :cond_12e
    const/16 v5, 0x1000

    :cond_130
    :goto_130
    move/from16 v22, v19

    :goto_132
    if-lez v22, :cond_145

    add-int/lit8 v22, v22, -0x1

    .line 26
    iget-object v6, v0, Lx1/a;->h:[B

    add-int/lit8 v7, v16, 0x1

    iget-object v10, v0, Lx1/a;->g:[B

    aget-byte v10, v10, v22

    aput-byte v10, v6, v16

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v7

    goto :goto_132

    :cond_145
    move v10, v9

    move/from16 v5, v23

    move/from16 v6, v24

    move/from16 v7, v25

    const/4 v9, 0x3

    move/from16 v23, v1

    move/from16 v1, v21

    goto/16 :goto_9a

    :cond_153
    move/from16 v24, v6

    move/from16 v6, v23

    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v21, v6

    move/from16 v20, v10

    move/from16 v6, v24

    :goto_161
    const/16 v3, 0x1000

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    goto/16 :goto_76

    :cond_168
    :goto_168
    move/from16 v1, v16

    :goto_16a
    if-ge v1, v2, :cond_174

    .line 27
    iget-object v3, v0, Lx1/a;->h:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16a

    :cond_174
    return-void
.end method

.method private g()Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    iget-object v0, p0, Lx1/a;->m:Lx1/a$a;

    iget-object v1, p0, Lx1/a;->l:Lx1/c;

    iget v2, v1, Lx1/c;->f:I

    iget v1, v1, Lx1/c;->g:I

    sget-object v3, Lx1/a;->r:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v2, v1, v3}, Lx1/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 2
    iget-object v0, p0, Lx1/a;->l:Lx1/c;

    iget v1, v0, Lx1/c;->f:I

    iget v0, v0, Lx1/c;->g:I

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    :cond_1a
    invoke-static {v0}, Lx1/a;->m(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private k()I
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lx1/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    and-int/lit16 v0, v0, 0xff

    goto :goto_d

    :catch_9
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lx1/a;->p:I

    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private l()I
    .registers 6

    .line 1
    invoke-direct {p0}, Lx1/a;->k()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1f

    :goto_7
    if-ge v1, v0, :cond_1f

    sub-int v2, v0, v1

    .line 2
    :try_start_b
    iget-object v3, p0, Lx1/a;->c:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lx1/a;->d:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_14

    add-int/2addr v1, v2

    goto :goto_7

    :catch_14
    move-exception v0

    .line 3
    sget-object v2, Lx1/a;->q:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lx1/a;->p:I

    :cond_1f
    return v1
.end method

.method private static m(Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_a
    return-void
.end method

.method private o(Lx1/b;Lx1/b;)Landroid/graphics/Bitmap;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lx1/a;->l:Lx1/c;

    iget v12, v3, Lx1/c;->f:I

    .line 2
    iget v3, v3, Lx1/c;->g:I

    .line 3
    iget-object v13, v0, Lx1/a;->i:[I

    const/4 v14, 0x0

    if-nez v2, :cond_14

    .line 4
    invoke-static {v13, v14}, Ljava/util/Arrays;->fill([II)V

    :cond_14
    const/4 v15, 0x3

    const/4 v11, 0x2

    if-eqz v2, :cond_5e

    .line 5
    iget v4, v2, Lx1/b;->g:I

    if-lez v4, :cond_5e

    if-ne v4, v11, :cond_4c

    .line 6
    iget-boolean v4, v1, Lx1/b;->f:Z

    if-nez v4, :cond_30

    .line 7
    iget-object v4, v0, Lx1/a;->l:Lx1/c;

    iget v5, v4, Lx1/c;->l:I

    .line 8
    iget-object v6, v1, Lx1/b;->k:[I

    if-eqz v6, :cond_31

    iget v4, v4, Lx1/c;->j:I

    iget v6, v1, Lx1/b;->h:I

    if-ne v4, v6, :cond_31

    :cond_30
    const/4 v5, 0x0

    .line 9
    :cond_31
    iget v4, v2, Lx1/b;->b:I

    mul-int v4, v4, v12

    iget v6, v2, Lx1/b;->a:I

    add-int/2addr v4, v6

    .line 10
    iget v6, v2, Lx1/b;->d:I

    mul-int v6, v6, v12

    add-int/2addr v6, v4

    :goto_3d
    if-ge v4, v6, :cond_5e

    .line 11
    iget v7, v2, Lx1/b;->c:I

    add-int/2addr v7, v4

    move v8, v4

    :goto_43
    if-ge v8, v7, :cond_4a

    .line 12
    aput v5, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    :cond_4a
    add-int/2addr v4, v12

    goto :goto_3d

    :cond_4c
    if-ne v4, v15, :cond_5e

    .line 13
    iget-object v4, v0, Lx1/a;->n:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5e

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v13

    move v7, v12

    move v10, v12

    const/4 v2, 0x2

    move v11, v3

    .line 14
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x2

    .line 15
    :goto_5f
    invoke-direct/range {p0 .. p1}, Lx1/a;->c(Lx1/b;)V

    const/16 v4, 0x8

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 16
    :goto_67
    iget v7, v1, Lx1/b;->d:I

    if-ge v14, v7, :cond_bf

    .line 17
    iget-boolean v8, v1, Lx1/b;->e:Z

    if-eqz v8, :cond_85

    const/4 v8, 0x4

    if-lt v5, v7, :cond_82

    add-int/lit8 v6, v6, 0x1

    if-eq v6, v2, :cond_81

    if-eq v6, v15, :cond_7e

    if-eq v6, v8, :cond_7b

    goto :goto_82

    :cond_7b
    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_82

    :cond_7e
    const/4 v4, 0x4

    const/4 v5, 0x2

    goto :goto_82

    :cond_81
    const/4 v5, 0x4

    :cond_82
    :goto_82
    add-int v7, v5, v4

    goto :goto_87

    :cond_85
    move v7, v5

    move v5, v14

    .line 18
    :goto_87
    iget v8, v1, Lx1/b;->b:I

    add-int/2addr v5, v8

    .line 19
    iget-object v8, v0, Lx1/a;->l:Lx1/c;

    iget v9, v8, Lx1/c;->g:I

    if-ge v5, v9, :cond_b9

    .line 20
    iget v8, v8, Lx1/c;->f:I

    mul-int v5, v5, v8

    .line 21
    iget v9, v1, Lx1/b;->a:I

    add-int/2addr v9, v5

    .line 22
    iget v10, v1, Lx1/b;->c:I

    add-int v2, v9, v10

    add-int v15, v5, v8

    if-ge v15, v2, :cond_a1

    add-int v2, v5, v8

    :cond_a1
    mul-int v10, v10, v14

    :goto_a3
    if-ge v9, v2, :cond_b9

    .line 23
    iget-object v5, v0, Lx1/a;->h:[B

    add-int/lit8 v8, v10, 0x1

    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    .line 24
    iget-object v10, v0, Lx1/a;->a:[I

    aget v5, v10, v5

    if-eqz v5, :cond_b5

    .line 25
    aput v5, v13, v9

    :cond_b5
    add-int/lit8 v9, v9, 0x1

    move v10, v8

    goto :goto_a3

    :cond_b9
    add-int/lit8 v14, v14, 0x1

    move v5, v7

    const/4 v2, 0x2

    const/4 v15, 0x3

    goto :goto_67

    .line 26
    :cond_bf
    iget-boolean v2, v0, Lx1/a;->o:Z

    if-eqz v2, :cond_df

    iget v1, v1, Lx1/b;->g:I

    if-eqz v1, :cond_c9

    if-ne v1, v11, :cond_df

    .line 27
    :cond_c9
    iget-object v1, v0, Lx1/a;->n:Landroid/graphics/Bitmap;

    if-nez v1, :cond_d3

    .line 28
    invoke-direct/range {p0 .. p0}, Lx1/a;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lx1/a;->n:Landroid/graphics/Bitmap;

    .line 29
    :cond_d3
    iget-object v4, v0, Lx1/a;->n:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v13

    move v7, v12

    move v10, v12

    move v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 30
    :cond_df
    invoke-direct/range {p0 .. p0}, Lx1/a;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v13

    move v7, v12

    move v10, v12

    move v11, v3

    .line 31
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget v0, p0, Lx1/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lx1/a;->l:Lx1/c;

    iget v1, v1, Lx1/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lx1/a;->j:I

    return-void
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lx1/a;->l:Lx1/c;

    .line 2
    iput-object v0, p0, Lx1/a;->k:[B

    .line 3
    iput-object v0, p0, Lx1/a;->h:[B

    .line 4
    iput-object v0, p0, Lx1/a;->i:[I

    .line 5
    iget-object v1, p0, Lx1/a;->n:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_12

    .line 6
    iget-object v2, p0, Lx1/a;->m:Lx1/a$a;

    invoke-interface {v2, v1}, Lx1/a$a;->b(Landroid/graphics/Bitmap;)V

    .line 7
    :cond_12
    iput-object v0, p0, Lx1/a;->n:Landroid/graphics/Bitmap;

    .line 8
    iput-object v0, p0, Lx1/a;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lx1/a;->j:I

    return v0
.end method

.method public e(I)I
    .registers 4

    if-ltz p1, :cond_13

    .line 1
    iget-object v0, p0, Lx1/a;->l:Lx1/c;

    iget v1, v0, Lx1/c;->c:I

    if-ge p1, v1, :cond_13

    .line 2
    iget-object v0, v0, Lx1/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx1/b;

    iget p1, p1, Lx1/b;->i:I

    goto :goto_14

    :cond_13
    const/4 p1, -0x1

    :goto_14
    return p1
.end method

.method public f()I
    .registers 2

    .line 1
    iget-object v0, p0, Lx1/a;->l:Lx1/c;

    iget v0, v0, Lx1/c;->c:I

    return v0
.end method

.method public h()I
    .registers 2

    .line 1
    iget-object v0, p0, Lx1/a;->l:Lx1/c;

    iget v0, v0, Lx1/c;->c:I

    if-lez v0, :cond_10

    iget v0, p0, Lx1/a;->j:I

    if-gez v0, :cond_b

    goto :goto_10

    .line 2
    :cond_b
    invoke-virtual {p0, v0}, Lx1/a;->e(I)I

    move-result v0

    return v0

    :cond_10
    :goto_10
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized i()Landroid/graphics/Bitmap;
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lx1/a;->l:Lx1/c;

    iget v0, v0, Lx1/c;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_d

    iget v0, p0, Lx1/a;->j:I

    if-gez v0, :cond_39

    .line 2
    :cond_d
    sget-object v0, Lx1/a;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lx1/a;->l:Lx1/c;

    iget v4, v4, Lx1/c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lx1/a;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_37
    iput v2, p0, Lx1/a;->p:I

    .line 5
    :cond_39
    iget v0, p0, Lx1/a;->p:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_98

    const/4 v4, 0x2

    if-ne v0, v4, :cond_42

    goto :goto_98

    :cond_42
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lx1/a;->p:I

    .line 7
    iget-object v4, p0, Lx1/a;->l:Lx1/c;

    iget-object v4, v4, Lx1/c;->e:Ljava/util/List;

    iget v5, p0, Lx1/a;->j:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx1/b;

    .line 8
    iget v5, p0, Lx1/a;->j:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_61

    .line 9
    iget-object v6, p0, Lx1/a;->l:Lx1/c;

    iget-object v6, v6, Lx1/c;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx1/b;

    goto :goto_62

    :cond_61
    move-object v5, v3

    .line 10
    :goto_62
    iget-object v6, v4, Lx1/b;->k:[I

    if-eqz v6, :cond_67

    goto :goto_6b

    :cond_67
    iget-object v6, p0, Lx1/a;->l:Lx1/c;

    iget-object v6, v6, Lx1/c;->a:[I

    :goto_6b
    iput-object v6, p0, Lx1/a;->a:[I

    if-nez v6, :cond_80

    .line 11
    sget-object v0, Lx1/a;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "No Valid Color Table"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_7c
    iput v2, p0, Lx1/a;->p:I
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_b8

    .line 14
    monitor-exit p0

    return-object v3

    .line 15
    :cond_80
    :try_start_80
    iget-boolean v1, v4, Lx1/b;->f:Z

    if-eqz v1, :cond_92

    .line 16
    iget-object v1, p0, Lx1/a;->b:[I

    array-length v2, v6

    invoke-static {v6, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object v1, p0, Lx1/a;->b:[I

    iput-object v1, p0, Lx1/a;->a:[I

    .line 18
    iget v2, v4, Lx1/b;->h:I

    aput v0, v1, v2

    .line 19
    :cond_92
    invoke-direct {p0, v4, v5}, Lx1/a;->o(Lx1/b;Lx1/b;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_96
    .catchall {:try_start_80 .. :try_end_96} :catchall_b8

    monitor-exit p0

    return-object v0

    .line 20
    :cond_98
    :goto_98
    :try_start_98
    sget-object v0, Lx1/a;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lx1/a;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_98 .. :try_end_b6} :catchall_b8

    .line 22
    :cond_b6
    monitor-exit p0

    return-object v3

    :catchall_b8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()I
    .registers 4

    .line 1
    iget-object v0, p0, Lx1/a;->l:Lx1/c;

    iget v0, v0, Lx1/c;->m:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    if-nez v0, :cond_d

    const/4 v0, 0x0

    return v0

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public n(Lx1/c;[B)V
    .registers 5

    .line 1
    iput-object p1, p0, Lx1/a;->l:Lx1/c;

    .line 2
    iput-object p2, p0, Lx1/a;->k:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lx1/a;->p:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lx1/a;->j:I

    .line 5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lx1/a;->c:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    iget-object p2, p0, Lx1/a;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    iput-boolean v0, p0, Lx1/a;->o:Z

    .line 9
    iget-object p2, p1, Lx1/c;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/b;

    .line 10
    iget v0, v0, Lx1/b;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Lx1/a;->o:Z

    .line 12
    :cond_36
    iget p2, p1, Lx1/c;->f:I

    iget p1, p1, Lx1/c;->g:I

    mul-int v0, p2, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lx1/a;->h:[B

    mul-int p2, p2, p1

    .line 13
    new-array p1, p2, [I

    iput-object p1, p0, Lx1/a;->i:[I

    return-void
.end method

###### Class x1.a.InterfaceC0293a (x1.a$a)
.class public interface abstract Lx1/a$a;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public abstract b(Landroid/graphics/Bitmap;)V
.end method
