###### Class f8.c (f8.c)
.class Lf8/c;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final H:Ljava/lang/Object;

.field private static final I:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final J:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final K:Lf8/y;


# instance fields
.field A:Landroid/graphics/Bitmap;

.field B:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field C:Lf8/t$e;

.field D:Ljava/lang/Exception;

.field E:I

.field F:I

.field G:Lf8/t$f;

.field final o:I

.field final p:Lf8/t;

.field final q:Lf8/i;

.field final r:Lf8/d;

.field final s:Lf8/a0;

.field final t:Ljava/lang/String;

.field final u:Lf8/w;

.field final v:I

.field w:I

.field final x:Lf8/y;

.field y:Lf8/a;

.field z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf8/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/c;->H:Ljava/lang/Object;

    .line 2
    new-instance v0, Lf8/c$a;

    invoke-direct {v0}, Lf8/c$a;-><init>()V

    sput-object v0, Lf8/c;->I:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lf8/c;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Lf8/c$b;

    invoke-direct {v0}, Lf8/c$b;-><init>()V

    sput-object v0, Lf8/c;->K:Lf8/y;

    return-void
.end method

.method constructor <init>(Lf8/t;Lf8/i;Lf8/d;Lf8/a0;Lf8/a;Lf8/y;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lf8/c;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lf8/c;->o:I

    .line 3
    iput-object p1, p0, Lf8/c;->p:Lf8/t;

    .line 4
    iput-object p2, p0, Lf8/c;->q:Lf8/i;

    .line 5
    iput-object p3, p0, Lf8/c;->r:Lf8/d;

    .line 6
    iput-object p4, p0, Lf8/c;->s:Lf8/a0;

    .line 7
    iput-object p5, p0, Lf8/c;->y:Lf8/a;

    .line 8
    invoke-virtual {p5}, Lf8/a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf8/c;->t:Ljava/lang/String;

    .line 9
    invoke-virtual {p5}, Lf8/a;->i()Lf8/w;

    move-result-object p1

    iput-object p1, p0, Lf8/c;->u:Lf8/w;

    .line 10
    invoke-virtual {p5}, Lf8/a;->h()Lf8/t$f;

    move-result-object p1

    iput-object p1, p0, Lf8/c;->G:Lf8/t$f;

    .line 11
    invoke-virtual {p5}, Lf8/a;->e()I

    move-result p1

    iput p1, p0, Lf8/c;->v:I

    .line 12
    invoke-virtual {p5}, Lf8/a;->f()I

    move-result p1

    iput p1, p0, Lf8/c;->w:I

    .line 13
    iput-object p6, p0, Lf8/c;->x:Lf8/y;

    .line 14
    invoke-virtual {p6}, Lf8/y;->e()I

    move-result p1

    iput p1, p0, Lf8/c;->F:I

    return-void
.end method

.method static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf8/c0;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_90

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/c0;

    const/4 v3, 0x0

    .line 3
    :try_start_e
    invoke-interface {v2, p1}, Lf8/c0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_12} :catch_84

    if-nez v4, :cond_5a

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transformation "

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {v2}, Lf8/c0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null after "

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/c0;

    .line 11
    invoke-interface {v0}, Lf8/c0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 12
    :cond_4f
    sget-object p0, Lf8/t;->p:Landroid/os/Handler;

    new-instance v0, Lf8/c$d;

    invoke-direct {v0, p1}, Lf8/c$d;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_5a
    if-ne v4, p1, :cond_6d

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 14
    sget-object p0, Lf8/t;->p:Landroid/os/Handler;

    new-instance p1, Lf8/c$e;

    invoke-direct {p1, v2}, Lf8/c$e;-><init>(Lf8/c0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_6d
    if-eq v4, p1, :cond_80

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_80

    .line 16
    sget-object p0, Lf8/t;->p:Landroid/os/Handler;

    new-instance p1, Lf8/c$f;

    invoke-direct {p1, v2}, Lf8/c$f;-><init>(Lf8/c0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_80
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_5

    :catch_84
    move-exception p0

    .line 17
    sget-object p1, Lf8/t;->p:Landroid/os/Handler;

    new-instance v0, Lf8/c$c;

    invoke-direct {v0, v2, p0}, Lf8/c$c;-><init>(Lf8/c0;Ljava/lang/RuntimeException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_90
    return-object p1
.end method

.method private d()Lf8/t$f;
    .registers 7

    .line 1
    sget-object v0, Lf8/t$f;->o:Lf8/t$f;

    .line 2
    iget-object v1, p0, Lf8/c;->z:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 3
    :goto_11
    iget-object v4, p0, Lf8/c;->y:Lf8/a;

    if-nez v4, :cond_19

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :cond_19
    :goto_19
    if-nez v2, :cond_1c

    return-object v0

    :cond_1c
    if-eqz v4, :cond_22

    .line 4
    invoke-virtual {v4}, Lf8/a;->h()Lf8/t$f;

    move-result-object v0

    :cond_22
    if-eqz v1, :cond_46

    .line 5
    iget-object v1, p0, Lf8/c;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2a
    if-ge v3, v1, :cond_46

    .line 6
    iget-object v2, p0, Lf8/c;->z:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/a;

    invoke-virtual {v2}, Lf8/a;->h()Lf8/t$f;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_43

    move-object v0, v2

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_46
    return-object v0
.end method

.method static e(Ljava/io/InputStream;Lf8/w;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf8/n;

    invoke-direct {v0, p0}, Lf8/n;-><init>(Ljava/io/InputStream;)V

    const/high16 p0, 0x10000

    .line 2
    invoke-virtual {v0, p0}, Lf8/n;->c(I)J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lf8/y;->d(Lf8/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lf8/y;->g(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    .line 5
    invoke-static {v0}, Lf8/e0;->t(Ljava/io/InputStream;)Z

    move-result v4

    .line 6
    invoke-virtual {v0, v1, v2}, Lf8/n;->b(J)V

    if-eqz v4, :cond_34

    .line 7
    invoke-static {v0}, Lf8/e0;->x(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v3, :cond_2e

    .line 8
    array-length v2, v0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 9
    iget v2, p1, Lf8/w;->h:I

    iget v3, p1, Lf8/w;->i:I

    invoke-static {v2, v3, p0, p1}, Lf8/y;->b(IILandroid/graphics/BitmapFactory$Options;Lf8/w;)V

    .line 10
    :cond_2e
    array-length p1, v0

    invoke-static {v0, v1, p1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_34
    const/4 v4, 0x0

    if-eqz v3, :cond_44

    .line 11
    invoke-static {v0, v4, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 12
    iget v3, p1, Lf8/w;->h:I

    iget v5, p1, Lf8/w;->i:I

    invoke-static {v3, v5, p0, p1}, Lf8/y;->b(IILandroid/graphics/BitmapFactory$Options;Lf8/w;)V

    .line 13
    invoke-virtual {v0, v1, v2}, Lf8/n;->b(J)V

    .line 14
    :cond_44
    invoke-static {v0, v4, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4b

    return-object p0

    .line 15
    :cond_4b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to decode stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static g(Lf8/t;Lf8/i;Lf8/d;Lf8/a0;Lf8/a;)Lf8/c;
    .registers 17

    .line 1
    invoke-virtual/range {p4 .. p4}, Lf8/a;->i()Lf8/w;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lf8/t;->h()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_2c

    .line 4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lf8/y;

    .line 5
    invoke-virtual {v11, v0}, Lf8/y;->c(Lf8/w;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 6
    new-instance v0, Lf8/c;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lf8/c;-><init>(Lf8/t;Lf8/i;Lf8/d;Lf8/a0;Lf8/a;Lf8/y;)V

    return-object v0

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 7
    :cond_2c
    new-instance v0, Lf8/c;

    sget-object v10, Lf8/c;->K:Lf8/y;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lf8/c;-><init>(Lf8/t;Lf8/i;Lf8/d;Lf8/a0;Lf8/a;Lf8/y;)V

    return-object v0
.end method

.method private static t(ZIIII)Z
    .registers 5

    if-eqz p0, :cond_9

    if-gt p1, p3, :cond_9

    if-le p2, p4, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method static w(Lf8/w;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 16

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    iget-boolean v2, p0, Lf8/w;->l:Z

    .line 4
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    invoke-virtual {p0}, Lf8/w;->e()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_af

    .line 6
    iget v3, p0, Lf8/w;->h:I

    .line 7
    iget v5, p0, Lf8/w;->i:I

    .line 8
    iget v6, p0, Lf8/w;->m:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_30

    .line 9
    iget-boolean v7, p0, Lf8/w;->p:Z

    if-eqz v7, :cond_2d

    .line 10
    iget v7, p0, Lf8/w;->n:F

    iget v9, p0, Lf8/w;->o:F

    invoke-virtual {v8, v6, v7, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_30

    .line 11
    :cond_2d
    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 12
    :cond_30
    :goto_30
    iget-boolean v6, p0, Lf8/w;->j:Z

    if-eqz v6, :cond_74

    int-to-float p0, v3

    int-to-float v6, v0

    div-float v7, p0, v6

    int-to-float v9, v5

    int-to-float v10, v1

    div-float v11, v9, v10

    cmpl-float v12, v7, v11

    if-lez v12, :cond_53

    div-float/2addr v11, v7

    mul-float v10, v10, v11

    float-to-double v10, v10

    .line 13
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int p0, v10

    sub-int v6, v1, p0

    .line 14
    div-int/lit8 v6, v6, 0x2

    int-to-float v10, p0

    div-float v11, v9, v10

    move v9, v7

    move v7, v0

    goto :goto_67

    :cond_53
    div-float/2addr v7, v11

    mul-float v6, v6, v7

    float-to-double v6, v6

    .line 15
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int v7, v0, v6

    .line 16
    div-int/lit8 v7, v7, 0x2

    int-to-float v9, v6

    div-float/2addr p0, v9

    move v9, p0

    move p0, v1

    move v4, v7

    move v7, v6

    const/4 v6, 0x0

    .line 17
    :goto_67
    invoke-static {v2, v0, v1, v3, v5}, Lf8/c;->t(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 18
    invoke-virtual {v8, v9, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_70
    move v5, v6

    move v6, v7

    move v7, p0

    goto :goto_b2

    .line 19
    :cond_74
    iget-boolean p0, p0, Lf8/w;->k:Z

    if-eqz p0, :cond_8e

    int-to-float p0, v3

    int-to-float v6, v0

    div-float/2addr p0, v6

    int-to-float v6, v5

    int-to-float v7, v1

    div-float/2addr v6, v7

    cmpg-float v7, p0, v6

    if-gez v7, :cond_83

    goto :goto_84

    :cond_83
    move p0, v6

    .line 20
    :goto_84
    invoke-static {v2, v0, v1, v3, v5}, Lf8/c;->t(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 21
    invoke-virtual {v8, p0, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_af

    :cond_8e
    if-nez v3, :cond_92

    if-eqz v5, :cond_af

    :cond_92
    if-ne v3, v0, :cond_96

    if-eq v5, v1, :cond_af

    :cond_96
    if-eqz v3, :cond_9b

    int-to-float p0, v3

    int-to-float v6, v0

    goto :goto_9d

    :cond_9b
    int-to-float p0, v5

    int-to-float v6, v1

    :goto_9d
    div-float/2addr p0, v6

    if-eqz v5, :cond_a3

    int-to-float v6, v5

    int-to-float v7, v1

    goto :goto_a5

    :cond_a3
    int-to-float v6, v3

    int-to-float v7, v0

    :goto_a5
    div-float/2addr v6, v7

    .line 22
    invoke-static {v2, v0, v1, v3, v5}, Lf8/c;->t(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 23
    invoke-virtual {v8, p0, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_af
    :goto_af
    move v6, v0

    move v7, v1

    const/4 v5, 0x0

    :goto_b2
    if-eqz p2, :cond_b8

    int-to-float p0, p2

    .line 24
    invoke-virtual {v8, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_b8
    const/4 v9, 0x1

    move-object v3, p1

    .line 25
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_c4

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, p0

    :cond_c4
    return-object p1
.end method

.method static x(Lf8/w;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lf8/w;->a()Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lf8/c;->I:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method b(Lf8/a;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lf8/c;->p:Lf8/t;

    iget-boolean v0, v0, Lf8/t;->n:Z

    .line 2
    iget-object v1, p1, Lf8/a;->b:Lf8/w;

    .line 3
    iget-object v2, p0, Lf8/c;->y:Lf8/a;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_35

    .line 4
    iput-object p1, p0, Lf8/c;->y:Lf8/a;

    if-eqz v0, :cond_34

    .line 5
    iget-object p1, p0, Lf8/c;->z:Ljava/util/List;

    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_2b

    .line 6
    :cond_1f
    invoke-virtual {v1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3}, Lf8/e0;->m(Lf8/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, p1, v0}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 7
    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "to empty hunter"

    invoke-static {v5, v4, p1, v0}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void

    .line 8
    :cond_35
    iget-object v2, p0, Lf8/c;->z:Ljava/util/List;

    if-nez v2, :cond_41

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lf8/c;->z:Ljava/util/List;

    .line 10
    :cond_41
    iget-object v2, p0, Lf8/c;->z:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_53

    .line 11
    invoke-virtual {v1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3}, Lf8/e0;->m(Lf8/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v0, v1}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_53
    invoke-virtual {p1}, Lf8/a;->h()Lf8/t$f;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lf8/c;->G:Lf8/t$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_65

    .line 14
    iput-object p1, p0, Lf8/c;->G:Lf8/t$f;

    :cond_65
    return-void
.end method

.method c()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lf8/c;->y:Lf8/a;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lf8/c;->z:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_f
    iget-object v0, p0, Lf8/c;->B:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1a

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method f(Lf8/a;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lf8/c;->y:Lf8/a;

    if-ne v0, p1, :cond_9

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf8/c;->y:Lf8/a;

    const/4 v0, 0x1

    goto :goto_13

    .line 3
    :cond_9
    iget-object v0, p0, Lf8/c;->z:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_23

    .line 5
    invoke-virtual {p1}, Lf8/a;->h()Lf8/t$f;

    move-result-object v0

    iget-object v1, p0, Lf8/c;->G:Lf8/t$f;

    if-ne v0, v1, :cond_23

    .line 6
    invoke-direct {p0}, Lf8/c;->d()Lf8/t$f;

    move-result-object v0

    iput-object v0, p0, Lf8/c;->G:Lf8/t$f;

    .line 7
    :cond_23
    iget-object v0, p0, Lf8/c;->p:Lf8/t;

    iget-boolean v0, v0, Lf8/t;->n:Z

    if-eqz v0, :cond_3c

    .line 8
    iget-object p1, p1, Lf8/a;->b:Lf8/w;

    invoke-virtual {p1}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from "

    invoke-static {p0, v0}, Lf8/e0;->m(Lf8/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hunter"

    const-string v2, "removed"

    invoke-static {v1, v2, p1, v0}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method h()Lf8/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/c;->y:Lf8/a;

    return-object v0
.end method

.method i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf8/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf8/c;->z:Ljava/util/List;

    return-object v0
.end method

.method j()Lf8/w;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/c;->u:Lf8/w;

    return-object v0
.end method

.method k()Ljava/lang/Exception;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/c;->D:Ljava/lang/Exception;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method m()Lf8/t$e;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/c;->C:Lf8/t$e;

    return-object v0
.end method

.method n()I
    .registers 2

    .line 1
    iget v0, p0, Lf8/c;->v:I

    return v0
.end method

.method o()Lf8/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/c;->p:Lf8/t;

    return-object v0
.end method

.method p()Lf8/t$f;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/c;->G:Lf8/t$f;

    return-object v0
.end method

.method q()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/c;->A:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method r()Landroid/graphics/Bitmap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lf8/c;->v:I

    invoke-static {v0}, Lf8/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2
    iget-object v0, p0, Lf8/c;->r:Lf8/d;

    iget-object v1, p0, Lf8/c;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf8/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 3
    iget-object v1, p0, Lf8/c;->s:Lf8/a0;

    invoke-virtual {v1}, Lf8/a0;->d()V

    .line 4
    sget-object v1, Lf8/t$e;->p:Lf8/t$e;

    iput-object v1, p0, Lf8/c;->C:Lf8/t$e;

    .line 5
    iget-object v1, p0, Lf8/c;->p:Lf8/t;

    iget-boolean v1, v1, Lf8/t;->n:Z

    if-eqz v1, :cond_30

    const-string v1, "Hunter"

    const-string v2, "decoded"

    .line 6
    iget-object v3, p0, Lf8/c;->u:Lf8/w;

    invoke-virtual {v3}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    .line 7
    :cond_32
    iget-object v1, p0, Lf8/c;->u:Lf8/w;

    iget v2, p0, Lf8/c;->F:I

    if-nez v2, :cond_3d

    sget-object v2, Lf8/q;->r:Lf8/q;

    iget v2, v2, Lf8/q;->o:I

    goto :goto_3f

    :cond_3d
    iget v2, p0, Lf8/c;->w:I

    :goto_3f
    iput v2, v1, Lf8/w;->c:I

    .line 8
    iget-object v2, p0, Lf8/c;->x:Lf8/y;

    iget v3, p0, Lf8/c;->w:I

    invoke-virtual {v2, v1, v3}, Lf8/y;->f(Lf8/w;I)Lf8/y$a;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 9
    invoke-virtual {v1}, Lf8/y$a;->c()Lf8/t$e;

    move-result-object v0

    iput-object v0, p0, Lf8/c;->C:Lf8/t$e;

    .line 10
    invoke-virtual {v1}, Lf8/y$a;->b()I

    move-result v0

    iput v0, p0, Lf8/c;->E:I

    .line 11
    invoke-virtual {v1}, Lf8/y$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_71

    .line 12
    invoke-virtual {v1}, Lf8/y$a;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 13
    :try_start_61
    iget-object v1, p0, Lf8/c;->u:Lf8/w;

    invoke-static {v0, v1}, Lf8/c;->e(Ljava/io/InputStream;Lf8/w;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_6c

    .line 14
    invoke-static {v0}, Lf8/e0;->e(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_71

    :catchall_6c
    move-exception v1

    invoke-static {v0}, Lf8/e0;->e(Ljava/io/InputStream;)V

    throw v1

    :cond_71
    :goto_71
    if-eqz v0, :cond_f2

    .line 15
    iget-object v1, p0, Lf8/c;->p:Lf8/t;

    iget-boolean v1, v1, Lf8/t;->n:Z

    if-eqz v1, :cond_86

    const-string v1, "Hunter"

    const-string v2, "decoded"

    .line 16
    iget-object v3, p0, Lf8/c;->u:Lf8/w;

    invoke-virtual {v3}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lf8/e0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_86
    iget-object v1, p0, Lf8/c;->s:Lf8/a0;

    invoke-virtual {v1, v0}, Lf8/a0;->b(Landroid/graphics/Bitmap;)V

    .line 18
    iget-object v1, p0, Lf8/c;->u:Lf8/w;

    invoke-virtual {v1}, Lf8/w;->f()Z

    move-result v1

    if-nez v1, :cond_97

    iget v1, p0, Lf8/c;->E:I

    if-eqz v1, :cond_f2

    .line 19
    :cond_97
    sget-object v1, Lf8/c;->H:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_9a
    iget-object v2, p0, Lf8/c;->u:Lf8/w;

    invoke-virtual {v2}, Lf8/w;->e()Z

    move-result v2

    if-nez v2, :cond_a6

    iget v2, p0, Lf8/c;->E:I

    if-eqz v2, :cond_c1

    .line 21
    :cond_a6
    iget-object v2, p0, Lf8/c;->u:Lf8/w;

    iget v3, p0, Lf8/c;->E:I

    invoke-static {v2, v0, v3}, Lf8/c;->w(Lf8/w;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 22
    iget-object v2, p0, Lf8/c;->p:Lf8/t;

    iget-boolean v2, v2, Lf8/t;->n:Z

    if-eqz v2, :cond_c1

    const-string v2, "Hunter"

    const-string v3, "transformed"

    .line 23
    iget-object v4, p0, Lf8/c;->u:Lf8/w;

    invoke-virtual {v4}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lf8/e0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_c1
    iget-object v2, p0, Lf8/c;->u:Lf8/w;

    invoke-virtual {v2}, Lf8/w;->b()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 25
    iget-object v2, p0, Lf8/c;->u:Lf8/w;

    iget-object v2, v2, Lf8/w;->g:Ljava/util/List;

    invoke-static {v2, v0}, Lf8/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lf8/c;->p:Lf8/t;

    iget-boolean v2, v2, Lf8/t;->n:Z

    if-eqz v2, :cond_e6

    const-string v2, "Hunter"

    const-string v3, "transformed"

    .line 27
    iget-object v4, p0, Lf8/c;->u:Lf8/w;

    invoke-virtual {v4}, Lf8/w;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "from custom transformations"

    invoke-static {v2, v3, v4, v5}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_9a .. :try_end_e7} :catchall_ef

    if-eqz v0, :cond_f2

    .line 29
    iget-object v1, p0, Lf8/c;->s:Lf8/a0;

    invoke-virtual {v1, v0}, Lf8/a0;->c(Landroid/graphics/Bitmap;)V

    goto :goto_f2

    :catchall_ef
    move-exception v0

    .line 30
    :try_start_f0
    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v0

    :cond_f2
    :goto_f2
    return-object v0
.end method

.method public run()V
    .registers 6

    const-string v0, "Picasso-Idle"

    .line 1
    :try_start_2
    iget-object v1, p0, Lf8/c;->u:Lf8/w;

    invoke-static {v1}, Lf8/c;->x(Lf8/w;)V

    .line 2
    iget-object v1, p0, Lf8/c;->p:Lf8/t;

    iget-boolean v1, v1, Lf8/t;->n:Z

    if-eqz v1, :cond_18

    const-string v1, "Hunter"

    const-string v2, "executing"

    .line 3
    invoke-static {p0}, Lf8/e0;->l(Lf8/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lf8/e0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_18
    invoke-virtual {p0}, Lf8/c;->r()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lf8/c;->A:Landroid/graphics/Bitmap;

    if-nez v1, :cond_26

    .line 5
    iget-object v1, p0, Lf8/c;->q:Lf8/i;

    invoke-virtual {v1, p0}, Lf8/i;->e(Lf8/c;)V

    goto :goto_6d

    .line 6
    :cond_26
    iget-object v1, p0, Lf8/c;->q:Lf8/i;

    invoke-virtual {v1, p0}, Lf8/i;->d(Lf8/c;)V
    :try_end_2b
    .catch Lf8/j$b; {:try_start_2 .. :try_end_2b} :catch_75
    .catch Lf8/r$a; {:try_start_2 .. :try_end_2b} :catch_65
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2b} :catch_5c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2b} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2e
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2c

    goto :goto_6d

    :catchall_2c
    move-exception v1

    goto :goto_89

    :catch_2e
    move-exception v1

    .line 7
    :try_start_2f
    iput-object v1, p0, Lf8/c;->D:Ljava/lang/Exception;

    .line 8
    iget-object v1, p0, Lf8/c;->q:Lf8/i;

    invoke-virtual {v1, p0}, Lf8/i;->e(Lf8/c;)V

    goto :goto_6d

    :catch_37
    move-exception v1

    .line 9
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 10
    iget-object v3, p0, Lf8/c;->s:Lf8/a0;

    invoke-virtual {v3}, Lf8/a0;->a()Lf8/b0;

    move-result-object v3

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Lf8/b0;->a(Ljava/io/PrintWriter;)V

    .line 11
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lf8/c;->D:Ljava/lang/Exception;

    .line 12
    iget-object v1, p0, Lf8/c;->q:Lf8/i;

    invoke-virtual {v1, p0}, Lf8/i;->e(Lf8/c;)V

    goto :goto_6d

    :catch_5c
    move-exception v1

    .line 13
    iput-object v1, p0, Lf8/c;->D:Ljava/lang/Exception;

    .line 14
    iget-object v1, p0, Lf8/c;->q:Lf8/i;

    invoke-virtual {v1, p0}, Lf8/i;->g(Lf8/c;)V

    goto :goto_6d

    :catch_65
    move-exception v1

    .line 15
    iput-object v1, p0, Lf8/c;->D:Ljava/lang/Exception;

    .line 16
    iget-object v1, p0, Lf8/c;->q:Lf8/i;

    invoke-virtual {v1, p0}, Lf8/i;->g(Lf8/c;)V
    :try_end_6d
    .catchall {:try_start_2f .. :try_end_6d} :catchall_2c

    .line 17
    :goto_6d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_88

    :catch_75
    move-exception v1

    .line 18
    :try_start_76
    iget-boolean v2, v1, Lf8/j$b;->o:Z

    if-eqz v2, :cond_80

    iget v2, v1, Lf8/j$b;->p:I

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_82

    .line 19
    :cond_80
    iput-object v1, p0, Lf8/c;->D:Ljava/lang/Exception;

    .line 20
    :cond_82
    iget-object v1, p0, Lf8/c;->q:Lf8/i;

    invoke-virtual {v1, p0}, Lf8/i;->e(Lf8/c;)V
    :try_end_87
    .catchall {:try_start_76 .. :try_end_87} :catchall_2c

    goto :goto_6d

    :goto_88
    return-void

    .line 21
    :goto_89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_92

    :goto_91
    throw v1

    :goto_92
    goto :goto_91
.end method

.method s()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/c;->B:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method u(ZLandroid/net/NetworkInfo;)Z
    .registers 7

    .line 1
    iget v0, p0, Lf8/c;->F:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_c

    return v2

    :cond_c
    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lf8/c;->F:I

    .line 3
    iget-object v0, p0, Lf8/c;->x:Lf8/y;

    invoke-virtual {v0, p1, p2}, Lf8/y;->h(ZLandroid/net/NetworkInfo;)Z

    move-result p1

    return p1
.end method

.method v()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/c;->x:Lf8/y;

    invoke-virtual {v0}, Lf8/y;->i()Z

    move-result v0

    return v0
.end method

###### Class f8.c.a (f8.c$a)
.class final Lf8/c$a;
.super Ljava/lang/ThreadLocal;
.source "BitmapHunter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/StringBuilder;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Picasso-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lf8/c$a;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

###### Class f8.c.b (f8.c$b)
.class final Lf8/c$b;
.super Lf8/y;
.source "BitmapHunter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf8/y;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lf8/w;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public f(Lf8/w;I)Lf8/y$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized type of request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

###### Class f8.c.RunnableC0158c (f8.c$c)
.class final Lf8/c$c;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic o:Lf8/c0;

.field final synthetic p:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lf8/c0;Ljava/lang/RuntimeException;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lf8/c$c;->o:Lf8/c0;

    iput-object p2, p0, Lf8/c$c;->p:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transformation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf8/c$c;->o:Lf8/c0;

    .line 2
    invoke-interface {v2}, Lf8/c0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " crashed with exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lf8/c$c;->p:Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class f8.c.d (f8.c$d)
.class final Lf8/c$d;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lf8/c$d;->o:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lf8/c$d;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class f8.c.e (f8.c$e)
.class final Lf8/c$e;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic o:Lf8/c0;


# direct methods
.method constructor <init>(Lf8/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lf8/c$e;->o:Lf8/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transformation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf8/c$e;->o:Lf8/c0;

    .line 2
    invoke-interface {v2}, Lf8/c0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned input Bitmap but recycled it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class f8.c.f (f8.c$f)
.class final Lf8/c$f;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic o:Lf8/c0;


# direct methods
.method constructor <init>(Lf8/c0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lf8/c$f;->o:Lf8/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transformation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf8/c$f;->o:Lf8/c0;

    .line 2
    invoke-interface {v2}, Lf8/c0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mutated input Bitmap but failed to recycle the original."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
