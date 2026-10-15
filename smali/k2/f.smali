###### Class k2.f (k2.f)
.class public abstract Lk2/f;
.super Ljava/lang/Object;
.source "Downsampler.java"

# interfaces
.implements Lk2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lk2/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lk2/f;

.field public static final d:Lk2/f;

.field public static final e:Lk2/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Lk2/l$a;->q:Lk2/l$a;

    sget-object v1, Lk2/l$a;->r:Lk2/l$a;

    sget-object v2, Lk2/l$a;->s:Lk2/l$a;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lk2/f;->a:Ljava/util/Set;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lx2/h;->d(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lk2/f;->b:Ljava/util/Queue;

    .line 3
    new-instance v0, Lk2/f$a;

    invoke-direct {v0}, Lk2/f$a;-><init>()V

    sput-object v0, Lk2/f;->c:Lk2/f;

    .line 4
    new-instance v0, Lk2/f$b;

    invoke-direct {v0}, Lk2/f$b;-><init>()V

    sput-object v0, Lk2/f;->d:Lk2/f;

    .line 5
    new-instance v0, Lk2/f$c;

    invoke-direct {v0}, Lk2/f$c;-><init>()V

    sput-object v0, Lk2/f;->e:Lk2/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c(Lx2/f;Lk2/o;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_a

    const/high16 p1, 0x500000

    .line 2
    invoke-virtual {p0, p1}, Lx2/f;->mark(I)V

    goto :goto_d

    .line 3
    :cond_a
    invoke-virtual {p1}, Lk2/o;->c()V

    :goto_d
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    :try_start_12
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_44

    .line 6
    invoke-virtual {p0}, Lx2/f;->reset()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_44

    :catch_1a
    move-exception p0

    const/4 v0, 0x6

    const-string v1, "Downsampler"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception loading inDecodeBounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sample="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    :goto_44
    return-object p1
.end method

.method private d(Lx2/f;Lk2/o;Landroid/graphics/BitmapFactory$Options;Lc2/c;IIILz1/a;)Landroid/graphics/Bitmap;
    .registers 13

    .line 1
    invoke-static {p1, p8}, Lk2/f;->e(Ljava/io/InputStream;Lz1/a;)Landroid/graphics/Bitmap$Config;

    move-result-object p8

    .line 2
    iput p7, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3
    iput-object p8, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    if-eq p7, v0, :cond_11

    const/16 v0, 0x13

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_39

    :cond_11
    invoke-static {p1}, Lk2/f;->m(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_39

    int-to-double v0, p5

    int-to-double v2, p7

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p5, v0

    int-to-double p6, p6

    .line 6
    invoke-static {p6, p7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p6, v2

    invoke-static {p6, p7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p6

    double-to-int p6, p6

    .line 7
    invoke-interface {p4, p5, p6, p8}, Lc2/c;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-static {p3, p4}, Lk2/f;->l(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    .line 8
    :cond_39
    invoke-static {p1, p2, p3}, Lk2/f;->c(Lx2/f;Lk2/o;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static e(Ljava/io/InputStream;Lz1/a;)Landroid/graphics/Bitmap$Config;
    .registers 9

    const-string v0, "Cannot reset the input stream"

    const-string v1, "Downsampler"

    .line 1
    sget-object v2, Lz1/a;->o:Lz1/a;

    if-eq p1, v2, :cond_72

    sget-object v2, Lz1/a;->p:Lz1/a;

    if-eq p1, v2, :cond_72

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    goto :goto_72

    :cond_13
    const/4 v2, 0x0

    const/16 v3, 0x400

    .line 2
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    const/4 v3, 0x5

    .line 3
    :try_start_1a
    new-instance v4, Lk2/l;

    invoke-direct {v4, p0}, Lk2/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Lk2/l;->f()Z

    move-result v2
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_34
    .catchall {:try_start_1a .. :try_end_23} :catchall_32

    .line 4
    :try_start_23
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_5b

    :catch_27
    move-exception p0

    .line 5
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 6
    :goto_2e
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :catchall_32
    move-exception p1

    goto :goto_63

    :catch_34
    move-exception v4

    .line 7
    :try_start_35
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot determine whether the image has alpha or not from header for format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_32

    .line 9
    :cond_4f
    :try_start_4f
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_5b

    :catch_53
    move-exception p0

    .line 10
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5b

    goto :goto_2e

    :cond_5b
    :goto_5b
    if-eqz v2, :cond_60

    .line 11
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_62

    :cond_60
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_62
    return-object p0

    .line 12
    :goto_63
    :try_start_63
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_71

    :catch_67
    move-exception p0

    .line 13
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 14
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :cond_71
    :goto_71
    throw p1

    .line 16
    :cond_72
    :goto_72
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method private static declared-synchronized f()Landroid/graphics/BitmapFactory$Options;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-class v0, Lk2/f;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lk2/f;->b:Ljava/util/Queue;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    .line 2
    :try_start_6
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 3
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_19

    if-nez v2, :cond_17

    .line 4
    :try_start_f
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5
    invoke-static {v2}, Lk2/f;->k(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1c

    .line 6
    :cond_17
    monitor-exit v0

    return-object v2

    :catchall_19
    move-exception v2

    .line 7
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private h(IIIII)I
    .registers 7

    const/high16 v0, -0x80000000

    if-ne p5, v0, :cond_5

    move p5, p3

    :cond_5
    if-ne p4, v0, :cond_8

    move p4, p2

    :cond_8
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_16

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_11

    goto :goto_16

    .line 1
    :cond_11
    invoke-virtual {p0, p2, p3, p4, p5}, Lk2/f;->i(IIII)I

    move-result p1

    goto :goto_1a

    .line 2
    :cond_16
    :goto_16
    invoke-virtual {p0, p3, p2, p4, p5}, Lk2/f;->i(IIII)I

    move-result p1

    :goto_1a
    if-nez p1, :cond_1e

    const/4 p1, 0x0

    goto :goto_22

    .line 3
    :cond_1e
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    :goto_22
    const/4 p2, 0x1

    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private static j(Landroid/graphics/BitmapFactory$Options;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lk2/f;->k(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    sget-object v0, Lk2/f;->b:Ljava/util/Queue;

    monitor-enter v0

    .line 3
    :try_start_6
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p0
.end method

.method private static k(Landroid/graphics/BitmapFactory$Options;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 8
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 9
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-gt v3, v1, :cond_1f

    .line 11
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 12
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_1f
    return-void
.end method

.method private static l(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_8

    .line 2
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_8
    return-void
.end method

.method private static m(Ljava/io/InputStream;)Z
    .registers 6

    const-string v0, "Cannot reset the input stream"

    const-string v1, "Downsampler"

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v3, v2, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/16 v2, 0x400

    .line 2
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x5

    .line 3
    :try_start_12
    new-instance v3, Lk2/l;

    invoke-direct {v3, p0}, Lk2/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lk2/l;->d()Lk2/l$a;

    move-result-object v3

    .line 4
    sget-object v4, Lk2/f;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_32
    .catchall {:try_start_12 .. :try_end_21} :catchall_30

    .line 5
    :try_start_21
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_2f

    :catch_25
    move-exception p0

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 7
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    :goto_2f
    return v3

    :catchall_30
    move-exception v3

    goto :goto_4e

    :catch_32
    move-exception v3

    .line 8
    :try_start_33
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string v4, "Cannot determine the image type from header"

    .line 9
    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    .line 10
    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_4c

    :catch_42
    move-exception p0

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 12
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4c
    :goto_4c
    const/4 p0, 0x0

    return p0

    .line 13
    :goto_4e
    :try_start_4e
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_5c

    :catch_52
    move-exception p0

    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 15
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :cond_5c
    :goto_5c
    throw v3
.end method


# virtual methods
.method public b(Ljava/io/InputStream;Lc2/c;IILz1/a;)Landroid/graphics/Bitmap;
    .registers 28

    move-object/from16 v10, p2

    const-string v1, "Cannot reset the input stream"

    const-string v2, "Downsampler"

    .line 1
    invoke-static {}, Lx2/a;->a()Lx2/a;

    move-result-object v11

    .line 2
    invoke-virtual {v11}, Lx2/a;->b()[B

    move-result-object v12

    .line 3
    invoke-virtual {v11}, Lx2/a;->b()[B

    move-result-object v13

    .line 4
    invoke-static {}, Lk2/f;->f()Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    .line 5
    new-instance v3, Lk2/o;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v13}, Lk2/o;-><init>(Ljava/io/InputStream;[B)V

    .line 6
    invoke-static {v3}, Lx2/c;->c(Ljava/io/InputStream;)Lx2/c;

    move-result-object v15

    .line 7
    new-instance v4, Lx2/f;

    invoke-direct {v4, v15}, Lx2/f;-><init>(Ljava/io/InputStream;)V

    const/high16 v0, 0x500000

    .line 8
    :try_start_28
    invoke-virtual {v15, v0}, Lx2/c;->mark(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_d1

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 9
    :try_start_2d
    new-instance v0, Lk2/l;

    invoke-direct {v0, v15}, Lk2/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lk2/l;->c()I

    move-result v7
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_36} :catch_4b
    .catchall {:try_start_2d .. :try_end_36} :catchall_47

    .line 10
    :try_start_36
    invoke-virtual {v15}, Lx2/c;->reset()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a
    .catchall {:try_start_36 .. :try_end_39} :catchall_d1

    goto :goto_45

    :catch_3a
    move-exception v0

    move-object v8, v0

    .line 11
    :try_start_3c
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 12
    invoke-static {v2, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_d1

    :cond_45
    :goto_45
    move v0, v7

    goto :goto_67

    :catchall_47
    move-exception v0

    move-object v3, v0

    goto/16 :goto_c1

    :catch_4b
    move-exception v0

    .line 13
    :try_start_4c
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_57

    const-string v7, "Cannot determine the image orientation from header"

    .line 14
    invoke-static {v2, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_47

    .line 15
    :cond_57
    :try_start_57
    invoke-virtual {v15}, Lx2/c;->reset()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b
    .catchall {:try_start_57 .. :try_end_5a} :catchall_d1

    goto :goto_66

    :catch_5b
    move-exception v0

    move-object v7, v0

    .line 16
    :try_start_5d
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 17
    invoke-static {v2, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_66
    :goto_66
    const/4 v0, 0x0

    .line 18
    :goto_67
    iput-object v12, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    move-object/from16 v9, p0

    .line 19
    invoke-virtual {v9, v4, v3, v14}, Lk2/f;->g(Lx2/f;Lk2/o;Landroid/graphics/BitmapFactory$Options;)[I

    move-result-object v1

    .line 20
    aget v6, v1, v5

    const/4 v2, 0x1

    .line 21
    aget v7, v1, v2

    .line 22
    invoke-static {v0}, Lk2/r;->c(I)I

    move-result v17

    move-object/from16 v16, p0

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, p3

    move/from16 v21, p4

    .line 23
    invoke-direct/range {v16 .. v21}, Lk2/f;->h(IIIII)I

    move-result v8

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v9, p5

    .line 24
    invoke-direct/range {v1 .. v9}, Lk2/f;->d(Lx2/f;Lk2/o;Landroid/graphics/BitmapFactory$Options;Lc2/c;IIILz1/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 25
    invoke-virtual {v15}, Lx2/c;->b()Ljava/io/IOException;

    move-result-object v2

    if-nez v2, :cond_bb

    const/4 v2, 0x0

    if-eqz v1, :cond_ae

    .line 26
    invoke-static {v1, v10, v0}, Lk2/r;->f(Landroid/graphics/Bitmap;Lc2/c;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-interface {v10, v1}, Lc2/c;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 28
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_ae
    .catchall {:try_start_5d .. :try_end_ae} :catchall_d1

    .line 29
    :cond_ae
    invoke-virtual {v11, v12}, Lx2/a;->c([B)Z

    .line 30
    invoke-virtual {v11, v13}, Lx2/a;->c([B)Z

    .line 31
    invoke-virtual {v15}, Lx2/c;->d()V

    .line 32
    invoke-static {v14}, Lk2/f;->j(Landroid/graphics/BitmapFactory$Options;)V

    return-object v2

    .line 33
    :cond_bb
    :try_start_bb
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_c1
    .catchall {:try_start_bb .. :try_end_c1} :catchall_d1

    .line 34
    :goto_c1
    :try_start_c1
    invoke-virtual {v15}, Lx2/c;->reset()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_d1

    goto :goto_d0

    :catch_c5
    move-exception v0

    move-object v4, v0

    .line 35
    :try_start_c7
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 36
    invoke-static {v2, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :cond_d0
    :goto_d0
    throw v3
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_d1

    :catchall_d1
    move-exception v0

    .line 38
    invoke-virtual {v11, v12}, Lx2/a;->c([B)Z

    .line 39
    invoke-virtual {v11, v13}, Lx2/a;->c([B)Z

    .line 40
    invoke-virtual {v15}, Lx2/c;->d()V

    .line 41
    invoke-static {v14}, Lk2/f;->j(Landroid/graphics/BitmapFactory$Options;)V

    throw v0
.end method

.method public g(Lx2/f;Lk2/o;Landroid/graphics/BitmapFactory$Options;)[I
    .registers 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    invoke-static {p1, p2, p3}, Lk2/f;->c(Lx2/f;Lk2/o;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 4
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, p2, p1

    iget p1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p1, p2, v0

    return-object p2
.end method

.method protected abstract i(IIII)I
.end method

###### Class k2.f.a (k2.f$a)
.class final Lk2/f$a;
.super Lk2/f;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lk2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "AT_LEAST.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method

.method protected i(IIII)I
    .registers 5

    .line 1
    div-int/2addr p2, p4

    div-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

###### Class k2.f.b (k2.f$b)
.class final Lk2/f$b;
.super Lk2/f;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lk2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "AT_MOST.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method

.method protected i(IIII)I
    .registers 5

    int-to-float p2, p2

    int-to-float p4, p4

    div-float/2addr p2, p4

    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 1
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ge p2, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 p3, 0x0

    :goto_1d
    shl-int p1, p2, p3

    return p1
.end method

###### Class k2.f.c (k2.f$c)
.class final Lk2/f$c;
.super Lk2/f;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lk2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "NONE.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method

.method protected i(IIII)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
