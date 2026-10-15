###### Class com.theartofdev.edmodo.cropper.c (com.theartofdev.edmodo.cropper.c)
.class final Lcom/theartofdev/edmodo/cropper/c;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/c$b;,
        Lcom/theartofdev/edmodo/cropper/c$a;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/Rect;

.field static final b:Landroid/graphics/RectF;

.field static final c:Landroid/graphics/RectF;

.field static final d:[F

.field static final e:[F

.field private static f:I

.field static g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->a:Landroid/graphics/Rect;

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->b:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 4
    sput-object v1, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    new-array v0, v0, [F

    .line 5
    sput-object v0, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    return-void
.end method

.method static A(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/c$b;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 2
    new-instance p2, Ln0/a;

    invoke-direct {p2, p1}, Ln0/a;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_15

    .line 3
    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    move-object v0, p2

    goto :goto_16

    :catch_15
    nop

    :cond_16
    :goto_16
    if-eqz v0, :cond_1d

    .line 4
    invoke-static {p0, v0}, Lcom/theartofdev/edmodo/cropper/c;->B(Landroid/graphics/Bitmap;Ln0/a;)Lcom/theartofdev/edmodo/cropper/c$b;

    move-result-object p0

    goto :goto_24

    :cond_1d
    new-instance p1, Lcom/theartofdev/edmodo/cropper/c$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/theartofdev/edmodo/cropper/c$b;-><init>(Landroid/graphics/Bitmap;I)V

    move-object p0, p1

    :goto_24
    return-object p0
.end method

.method static B(Landroid/graphics/Bitmap;Ln0/a;)Lcom/theartofdev/edmodo/cropper/c$b;
    .registers 4

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Ln0/a;->e(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x6

    if-eq p1, v0, :cond_16

    const/16 v0, 0x8

    if-eq p1, v0, :cond_13

    const/4 p1, 0x0

    goto :goto_1b

    :cond_13
    const/16 p1, 0x10e

    goto :goto_1b

    :cond_16
    const/16 p1, 0x5a

    goto :goto_1b

    :cond_19
    const/16 p1, 0xb4

    .line 2
    :goto_1b
    new-instance v0, Lcom/theartofdev/edmodo/cropper/c$b;

    invoke-direct {v0, p0, p1}, Lcom/theartofdev/edmodo/cropper/c$b;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method static C(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 2
    invoke-virtual {p1, p3, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    .line 3
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->c(Ljava/io/Closeable;)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->c(Ljava/io/Closeable;)V

    throw p0
.end method

.method static D(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6

    const/4 v0, 0x1

    if-nez p2, :cond_14

    :try_start_3
    const-string p2, "aic_state_store_temp"

    const-string v1, ".jpg"

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {p2, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_24

    .line 3
    :cond_14
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    :cond_24
    :goto_24
    if-eqz v0, :cond_2d

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5f

    invoke-static {p0, p1, p2, v0, v1}, Lcom/theartofdev/edmodo/cropper/c;->C(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_2e

    :cond_2d
    return-object p2

    :catch_2e
    move-exception p0

    const-string p1, "AIC"

    const-string p2, "Failed to write bitmap to temp file for image-cropper save instance state"

    .line 5
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(II)I
    .registers 5

    .line 1
    sget v0, Lcom/theartofdev/edmodo/cropper/c;->f:I

    if-nez v0, :cond_a

    .line 2
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/c;->o()I

    move-result v0

    sput v0, Lcom/theartofdev/edmodo/cropper/c;->f:I

    .line 3
    :cond_a
    sget v0, Lcom/theartofdev/edmodo/cropper/c;->f:I

    const/4 v1, 0x1

    if-lez v0, :cond_1c

    .line 4
    :goto_f
    div-int v0, p1, v1

    sget v2, Lcom/theartofdev/edmodo/cropper/c;->f:I

    if-gt v0, v2, :cond_19

    div-int v0, p0, v1

    if-le v0, v2, :cond_1c

    :cond_19
    mul-int/lit8 v1, v1, 0x2

    goto :goto_f

    :cond_1c
    return v1
.end method

.method private static b(IIII)I
    .registers 6

    const/4 v0, 0x1

    if-gt p1, p3, :cond_5

    if-le p0, p2, :cond_12

    .line 1
    :cond_5
    :goto_5
    div-int/lit8 v1, p1, 0x2

    div-int/2addr v1, v0

    if-le v1, p3, :cond_12

    div-int/lit8 v1, p0, 0x2

    div-int/2addr v1, v0

    if-le v1, p2, :cond_12

    mul-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_12
    return v0
.end method

.method private static c(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 1
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method static d(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;
    .registers 29

    const/4 v0, 0x1

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move v14, v15

    .line 1
    :try_start_1d
    invoke-static/range {v1 .. v14}, Lcom/theartofdev/edmodo/cropper/c;->e(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception v0

    move-object v1, v0

    mul-int/lit8 v15, v15, 0x2

    const/16 v0, 0x10

    if-gt v15, v0, :cond_2b

    goto :goto_2

    .line 2
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle OOM by sampling ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59

    :goto_58
    throw v0

    :goto_59
    goto :goto_58
.end method

.method private static e(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/theartofdev/edmodo/cropper/c$a;
    .registers 28

    move/from16 v0, p3

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1
    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->s([FIIZII)Landroid/graphics/Rect;

    move-result-object v9

    if-lez p9, :cond_17

    move/from16 v10, p9

    goto :goto_1c

    .line 2
    :cond_17
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    move v10, v1

    :goto_1c
    if-lez p10, :cond_21

    move/from16 v11, p10

    goto :goto_26

    .line 3
    :cond_21
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    move v11, v1

    :goto_26
    const/4 v1, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v9

    move v5, v10

    move v6, v11

    move/from16 v7, p13

    .line 4
    :try_start_2f
    invoke-static/range {v2 .. v7}, Lcom/theartofdev/edmodo/cropper/c;->m(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v2

    .line 5
    iget-object v1, v2, Lcom/theartofdev/edmodo/cropper/c$a;->a:Landroid/graphics/Bitmap;

    .line 6
    iget v8, v2, Lcom/theartofdev/edmodo/cropper/c$a;->b:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_38

    goto :goto_39

    :catch_38
    nop

    :goto_39
    if-eqz v1, :cond_67

    move/from16 v12, p11

    move/from16 v13, p12

    .line 7
    :try_start_3f
    invoke-static {v1, v0, v12, v13}, Lcom/theartofdev/edmodo/cropper/c;->z(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_43
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3f .. :try_end_43} :catch_60

    .line 8
    :try_start_43
    rem-int/lit8 v1, v0, 0x5a

    if-eqz v1, :cond_57

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v9

    move/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 9
    invoke-static/range {v1 .. v7}, Lcom/theartofdev/edmodo/cropper/c;->i(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_43 .. :try_end_57} :catch_5d

    .line 10
    :cond_57
    new-instance v0, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-direct {v0, v10, v8}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0

    :catch_5d
    move-exception v0

    move-object v1, v10

    goto :goto_61

    :catch_60
    move-exception v0

    :goto_61
    if-eqz v1, :cond_66

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    :cond_66
    throw v0

    :cond_67
    move/from16 v12, p11

    move/from16 v13, p12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p13

    .line 13
    invoke-static/range {v1 .. v13}, Lcom/theartofdev/edmodo/cropper/c;->f(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static f(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/theartofdev/edmodo/cropper/c$a;
    .registers 28

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const/4 v2, 0x0

    .line 1
    :try_start_5
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v5

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-static {v4, v5, v6, v7}, Lcom/theartofdev/edmodo/cropper/c;->b(IIII)I

    move-result v4

    mul-int v4, v4, p7

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Lcom/theartofdev/edmodo/cropper/c;->j(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_26
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_26} :catch_85
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_61

    if-eqz v5, :cond_5b

    .line 4
    :try_start_28
    array-length v6, v0

    new-array v7, v6, [F

    .line 5
    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_30
    if-ge v9, v6, :cond_3d

    .line 6
    aget v0, v7, v9

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v8, v8

    div-float/2addr v0, v8

    aput v0, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_3d
    const/high16 v12, 0x3f800000    # 1.0f

    move-object v6, v5

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v13, p11

    move/from16 v14, p12

    .line 7
    invoke-static/range {v6 .. v14}, Lcom/theartofdev/edmodo/cropper/c;->h(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_50
    .catchall {:try_start_28 .. :try_end_50} :catchall_56

    if-eq v2, v5, :cond_5b

    .line 8
    :try_start_52
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5b

    :catchall_56
    move-exception v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
    :try_end_5b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_52 .. :try_end_5b} :catch_85
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5b} :catch_61

    .line 9
    :cond_5b
    :goto_5b
    new-instance v0, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-direct {v0, v2, v4}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0

    :catch_61
    move-exception v0

    .line 10
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load sampled bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_85
    move-exception v0

    if-eqz v2, :cond_8b

    .line 12
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    :cond_8b
    goto :goto_8d

    :goto_8c
    throw v0

    :goto_8d
    goto :goto_8c
.end method

.method static g(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;
    .registers 20

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v2, v1

    div-float v9, v0, v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 1
    :try_start_13
    invoke-static/range {v3 .. v11}, Lcom/theartofdev/edmodo/cropper/c;->h(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-direct {v2, v0, v1}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_1c} :catch_1d

    return-object v2

    :catch_1d
    move-exception v0

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-gt v1, v2, :cond_25

    goto :goto_2

    .line 3
    :cond_25
    goto :goto_27

    :goto_26
    throw v0

    :goto_27
    goto :goto_26
.end method

.method private static h(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;
    .registers 19

    move-object v7, p0

    move v8, p2

    move/from16 v0, p6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->s([FIIZII)Landroid/graphics/Rect;

    move-result-object v9

    .line 4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v8

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    if-eqz p7, :cond_2f

    neg-float v1, v0

    goto :goto_30

    :cond_2f
    move v1, v0

    :goto_30
    if-eqz p8, :cond_33

    neg-float v0, v0

    .line 6
    :cond_33
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 7
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    .line 8
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v0, v7, :cond_53

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    :cond_53
    rem-int/lit8 v1, v8, 0x5a

    if-eqz v1, :cond_61

    move-object v1, p1

    move-object v2, v9

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 11
    invoke-static/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->i(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_61
    return-object v0
.end method

.method private static i(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    .registers 15

    .line 1
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_ad

    int-to-double v0, p3

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const/16 v2, 0x5a

    if-lt p3, v2, :cond_19

    const/16 v2, 0xb4

    if-le p3, v2, :cond_16

    const/16 v2, 0x10e

    if-ge p3, v2, :cond_16

    goto :goto_19

    .line 3
    :cond_16
    iget p3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1b

    :cond_19
    :goto_19
    iget p3, p2, Landroid/graphics/Rect;->left:I

    :goto_1b
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_1d
    array-length v4, p1

    if-ge v3, v4, :cond_8a

    .line 5
    aget v4, p1, v3

    add-int/lit8 v5, p3, -0x1

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_87

    aget v4, p1, v3

    add-int/lit8 v5, p3, 0x1

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_87

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    add-int/lit8 v3, v3, 0x1

    aget v2, p1, v3

    sub-float/2addr p3, v2

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aget p3, p1, v3

    iget v6, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr p3, v6

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int p3, v4

    .line 8
    aget v4, p1, v3

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 9
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    aget p1, p1, v3

    sub-float/2addr v5, p1

    float-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_8d

    :cond_87
    add-int/lit8 v3, v3, 0x2

    goto :goto_1d

    :cond_8a
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_8d
    add-int/2addr v4, v2

    add-int/2addr p1, p3

    .line 10
    invoke-virtual {p2, v2, p3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p4, :cond_97

    .line 11
    invoke-static {p2, p5, p6}, Lcom/theartofdev/edmodo/cropper/c;->n(Landroid/graphics/Rect;II)V

    .line 12
    :cond_97
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p0, p1, p3, p4, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_ac

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_ac
    move-object p0, p1

    :cond_ad
    return-object p0
.end method

.method private static j(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->a:Landroid/graphics/Rect;

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    .line 3
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->c(Ljava/io/Closeable;)V

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_38

    .line 4
    :catch_11
    :try_start_11
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_f

    .line 5
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->c(Ljava/io/Closeable;)V

    .line 6
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x200

    if-gt v0, v1, :cond_21

    goto :goto_0

    .line 7
    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to decode image: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :goto_38
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->c(Ljava/io/Closeable;)V

    goto :goto_3d

    :goto_3c
    throw p0

    :goto_3d
    goto :goto_3c
.end method

.method private static k(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_1a

    .line 2
    :try_start_4
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    sget-object v0, Lcom/theartofdev/edmodo/cropper/c;->a:Landroid/graphics/Rect;

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 6
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->c(Ljava/io/Closeable;)V

    return-object p1

    :catchall_18
    move-exception p1

    goto :goto_1c

    :catchall_1a
    move-exception p1

    const/4 p0, 0x0

    :goto_1c
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->c(Ljava/io/Closeable;)V

    throw p1
.end method

.method static l(Landroid/content/Context;Landroid/net/Uri;II)Lcom/theartofdev/edmodo/cropper/c$a;
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lcom/theartofdev/edmodo/cropper/c;->k(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v3, v2, :cond_12

    goto :goto_1a

    .line 4
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "File is not a picture"

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1a
    :goto_1a
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    invoke-static {v1, v2, p2, p3}, Lcom/theartofdev/edmodo/cropper/c;->b(IIII)I

    move-result p2

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 7
    invoke-static {p3, v1}, Lcom/theartofdev/edmodo/cropper/c;->a(II)I

    move-result p3

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 9
    invoke-static {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/c;->j(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 10
    new-instance p2, Lcom/theartofdev/edmodo/cropper/c$a;

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {p2, p0, p3}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    return-object p2

    :catch_3a
    move-exception p0

    .line 11
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to load sampled bitmap: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static m(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/theartofdev/edmodo/cropper/c$a;
    .registers 10

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 3
    invoke-static {v2, v3, p3, p4}, Lcom/theartofdev/edmodo/cropper/c;->b(IIII)I

    move-result p3

    mul-int p5, p5, p3

    iput p5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_5d
    .catchall {:try_start_1 .. :try_end_1e} :catchall_5a

    const/4 p3, 0x0

    .line 5
    :try_start_1f
    invoke-static {p0, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_56
    .catchall {:try_start_1f .. :try_end_23} :catchall_52

    .line 6
    :cond_23
    :try_start_23
    new-instance p4, Lcom/theartofdev/edmodo/cropper/c$a;

    invoke-virtual {p3, p2, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p5

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {p4, p5, v2}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_2e} :catch_39
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2e} :catch_37
    .catchall {:try_start_23 .. :try_end_2e} :catchall_35

    .line 7
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->c(Ljava/io/Closeable;)V

    .line 8
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    return-object p4

    :catchall_35
    move-exception p1

    goto :goto_54

    :catch_37
    move-exception p2

    goto :goto_58

    .line 9
    :catch_39
    :try_start_39
    iget p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 p4, p4, 0x2

    iput p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3f} :catch_37
    .catchall {:try_start_39 .. :try_end_3f} :catchall_35

    const/16 p5, 0x200

    if-le p4, p5, :cond_23

    .line 10
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->c(Ljava/io/Closeable;)V

    if-eqz p3, :cond_4b

    .line 11
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 12
    :cond_4b
    new-instance p0, Lcom/theartofdev/edmodo/cropper/c$a;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/theartofdev/edmodo/cropper/c$a;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p0

    :catchall_52
    move-exception p1

    move-object p3, v0

    :goto_54
    move-object v0, p0

    goto :goto_83

    :catch_56
    move-exception p2

    move-object p3, v0

    :goto_58
    move-object v0, p0

    goto :goto_5f

    :catchall_5a
    move-exception p1

    move-object p3, v0

    goto :goto_83

    :catch_5d
    move-exception p2

    move-object p3, v0

    .line 13
    :goto_5f
    :try_start_5f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to load sampled bitmap: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_82
    .catchall {:try_start_5f .. :try_end_82} :catchall_82

    :catchall_82
    move-exception p1

    .line 15
    :goto_83
    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/c;->c(Ljava/io/Closeable;)V

    if-eqz p3, :cond_8b

    .line 16
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_8b
    goto :goto_8d

    :goto_8c
    throw p1

    :goto_8d
    goto :goto_8c
.end method

.method private static n(Landroid/graphics/Rect;II)V
    .registers 4

    if-ne p1, p2, :cond_33

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eq p1, p2, :cond_33

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-le p1, p2, :cond_25

    .line 3
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_33

    .line 4
    :cond_25
    iget p1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_33
    :goto_33
    return-void
.end method

.method private static o()I
    .registers 11

    const/16 v0, 0x800

    .line 1
    :try_start_2
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 3
    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    invoke-interface {v1, v2, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 5
    aget v5, v4, v6

    new-array v5, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 6
    aget v7, v4, v6

    invoke-interface {v1, v2, v5, v7, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-array v3, v3, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    :goto_29
    aget v9, v4, v6

    if-ge v7, v9, :cond_3d

    .line 8
    aget-object v9, v5, v7

    const/16 v10, 0x302c

    invoke-interface {v1, v2, v9, v10, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 9
    aget v9, v3, v6

    if-ge v8, v9, :cond_3a

    .line 10
    aget v8, v3, v6

    :cond_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 11
    :cond_3d
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 12
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_44

    :catch_44
    return v0
.end method

.method static p([F)F
    .registers 3

    const/4 v0, 0x1

    .line 1
    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x7

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static q([F)F
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->v([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->u([F)F

    move-result p0

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method static r([F)F
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->p([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->w([F)F

    move-result p0

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method static s([FIIZII)Landroid/graphics/Rect;
    .registers 9

    .line 1
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->u([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->w([F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float p1, p1

    .line 3
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->v([F)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    .line 4
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->p([F)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 5
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v1, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p3, :cond_3d

    .line 6
    invoke-static {p2, p4, p5}, Lcom/theartofdev/edmodo/cropper/c;->n(Landroid/graphics/Rect;II)V

    :cond_3d
    return-object p2
.end method

.method static t([F)F
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->p([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->w([F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method static u([F)F
    .registers 3

    const/4 v0, 0x0

    .line 1
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x6

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static v([F)F
    .registers 3

    const/4 v0, 0x0

    .line 1
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x6

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static w([F)F
    .registers 3

    const/4 v0, 0x1

    .line 1
    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x7

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static x([F)F
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->v([F)F

    move-result v0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/c;->u([F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method static y(Landroid/graphics/Bitmap;IILcom/theartofdev/edmodo/cropper/CropImageView$j;)Landroid/graphics/Bitmap;
    .registers 9

    if-lez p1, :cond_4f

    if-lez p2, :cond_4f

    .line 1
    :try_start_4
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->r:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-eq p3, v0, :cond_10

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->q:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-eq p3, v1, :cond_10

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->s:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-ne p3, v1, :cond_4f

    :cond_10
    const/4 v1, 0x0

    .line 2
    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->s:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const/4 v3, 0x0

    if-ne p3, v2, :cond_1b

    .line 3
    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3f

    .line 4
    :cond_1b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v2, v2

    int-to-float p1, p1

    div-float p1, v2, p1

    int-to-float v4, v4

    int-to-float p2, p2

    div-float p2, v4, p2

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-gtz p2, :cond_37

    if-ne p3, v0, :cond_3f

    :cond_37
    div-float/2addr v2, p1

    float-to-int p2, v2

    div-float/2addr v4, p1

    float-to-int p1, v4

    .line 7
    invoke-static {p0, p2, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3f
    :goto_3f
    if-eqz v1, :cond_4f

    if-eq v1, p0, :cond_46

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_46} :catch_47

    :cond_46
    return-object v1

    :catch_47
    move-exception p1

    const-string p2, "AIC"

    const-string p3, "Failed to resize cropped image, return bitmap before resize"

    .line 9
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    return-object p0
.end method

.method private static z(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .registers 11

    if-gtz p1, :cond_8

    if-nez p2, :cond_8

    if-eqz p3, :cond_7

    goto :goto_8

    :cond_7
    return-object p0

    .line 1
    :cond_8
    :goto_8
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 2
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1a

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_1c

    :cond_1a
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1c
    if-eqz p3, :cond_1f

    goto :goto_21

    :cond_1f
    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    :goto_21
    invoke-virtual {v5, p2, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_39

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_39
    return-object p1
.end method

###### Class com.theartofdev.edmodo.cropper.c.a (com.theartofdev.edmodo.cropper.c$a)
.class final Lcom/theartofdev/edmodo/cropper/c$a;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field final b:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/c$a;->a:Landroid/graphics/Bitmap;

    .line 3
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/c$a;->b:I

    return-void
.end method

###### Class com.theartofdev.edmodo.cropper.c.b (com.theartofdev.edmodo.cropper.c$b)
.class final Lcom/theartofdev/edmodo/cropper/c$b;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field final b:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/c$b;->a:Landroid/graphics/Bitmap;

    .line 3
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/c$b;->b:I

    return-void
.end method
