###### Class com.android.volley.toolbox.ImageRequest (com.android.volley.toolbox.ImageRequest)
.class public Lcom/android/volley/toolbox/ImageRequest;
.super Lcom/android/volley/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final K:Ljava/lang/Object;


# instance fields
.field private final E:Ljava/lang/Object;

.field private F:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Landroid/graphics/Bitmap$Config;

.field private final H:I

.field private final I:I

.field private final J:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ImageRequest;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p7}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageRequest;->E:Ljava/lang/Object;

    .line 3
    new-instance p1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 p7, 0x3e8

    const/4 v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p1, p7, v0, v1}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->d0(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 4
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageRequest;->F:Lcom/android/volley/Response$Listener;

    .line 5
    iput-object p6, p0, Lcom/android/volley/toolbox/ImageRequest;->G:Landroid/graphics/Bitmap$Config;

    .line 6
    iput p3, p0, Lcom/android/volley/toolbox/ImageRequest;->H:I

    .line 7
    iput p4, p0, Lcom/android/volley/toolbox/ImageRequest;->I:I

    .line 8
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageRequest;->J:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private j0(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->b:[B

    .line 2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3
    iget v2, p0, Lcom/android/volley/toolbox/ImageRequest;->H:I

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    iget v2, p0, Lcom/android/volley/toolbox/ImageRequest;->I:I

    if-nez v2, :cond_1a

    .line 4
    iget-object v2, p0, Lcom/android/volley/toolbox/ImageRequest;->G:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 5
    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5c

    :cond_1a
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 9
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 10
    iget v6, p0, Lcom/android/volley/toolbox/ImageRequest;->H:I

    iget v7, p0, Lcom/android/volley/toolbox/ImageRequest;->I:I

    iget-object v8, p0, Lcom/android/volley/toolbox/ImageRequest;->J:Landroid/widget/ImageView$ScaleType;

    .line 11
    invoke-static {v6, v7, v4, v5, v8}, Lcom/android/volley/toolbox/ImageRequest;->l0(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 12
    iget v7, p0, Lcom/android/volley/toolbox/ImageRequest;->I:I

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->H:I

    iget-object v9, p0, Lcom/android/volley/toolbox/ImageRequest;->J:Landroid/widget/ImageView$ScaleType;

    .line 13
    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/volley/toolbox/ImageRequest;->l0(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    .line 14
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    invoke-static {v4, v5, v6, v7}, Lcom/android/volley/toolbox/ImageRequest;->k0(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 16
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v6, :cond_54

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v7, :cond_5c

    .line 19
    :cond_54
    invoke-static {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_5c
    :goto_5c
    if-nez v0, :cond_68

    .line 21
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/android/volley/Response;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 22
    :cond_68
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->e(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/Response;->c(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method

.method static k0(IIII)I
    .registers 8

    int-to-double v0, p0

    int-to-double v2, p2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, p2

    .line 3
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_18
    const/high16 p3, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-double v0, p3

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_23

    move p2, p3

    goto :goto_18

    :cond_23
    float-to-int p0, p2

    return p0
.end method

.method private static l0(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 9

    if-nez p0, :cond_5

    if-nez p1, :cond_5

    return p2

    .line 1
    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_d

    if-nez p0, :cond_c

    return p2

    :cond_c
    return p0

    :cond_d
    if-nez p0, :cond_20

    int-to-double p0, p1

    int-to-double p3, p3

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, p3

    int-to-double p2, p2

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0

    :cond_20
    if-nez p1, :cond_23

    return p0

    :cond_23
    int-to-double v0, p3

    int-to-double p2, p2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p2

    .line 5
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_41

    int-to-double p2, p0

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_40

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_40
    return p0

    :cond_41
    int-to-double p2, p0

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_51

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_51
    return p0
.end method


# virtual methods
.method public N()Lcom/android/volley/Request$Priority;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/volley/Request$Priority;->o:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected Y(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/volley/toolbox/ImageRequest;->K:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->j0(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_7} :catch_b
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    :try_start_7
    monitor-exit v0

    return-object p1

    :catchall_9
    move-exception p1

    goto :goto_30

    :catch_b
    move-exception v1

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    iget-object p1, p1, Lcom/android/volley/NetworkResponse;->b:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/android/volley/Request;->R()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/android/volley/ParseError;

    invoke-direct {p1, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/android/volley/Response;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 5
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_9

    throw p1
.end method

.method public f()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/volley/Request;->f()V

    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageRequest;->E:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_7
    iput-object v1, p0, Lcom/android/volley/toolbox/ImageRequest;->F:Lcom/android/volley/Response$Listener;

    .line 4
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method protected i0(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageRequest;->E:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/toolbox/ImageRequest;->F:Lcom/android/volley/Response$Listener;

    .line 3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 4
    invoke-interface {v1, p1}, Lcom/android/volley/Response$Listener;->b(Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 5
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected bridge synthetic j(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->i0(Landroid/graphics/Bitmap;)V

    return-void
.end method
