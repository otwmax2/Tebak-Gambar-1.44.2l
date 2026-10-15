###### Class com.framer.FrameView (com.framer.FrameView)
.class public Lcom/framer/FrameView;
.super Lab/a;
.source "FrameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/framer/FrameView$a;
    }
.end annotation


# static fields
.field private static K:I = -0x1


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Landroid/graphics/Paint;

.field private C:Landroid/graphics/Paint;

.field private D:Landroid/graphics/Rect;

.field private E:Z

.field private F:Landroid/graphics/Bitmap;

.field private G:Lab/b;

.field private H:I

.field private I:Lza/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lza/a<",
            "Lab/b;",
            ">;"
        }
    .end annotation
.end field

.field private J:I

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lab/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x44bb8000    # 1500.0f

    .line 2
    iput p1, p0, Lcom/framer/FrameView;->u:F

    .line 3
    iput p1, p0, Lcom/framer/FrameView;->v:F

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/framer/FrameView;->H:I

    .line 5
    new-instance p2, Lza/a;

    new-instance v0, Lcom/framer/FrameView$a;

    invoke-direct {v0, p0}, Lcom/framer/FrameView$a;-><init>(Lcom/framer/FrameView;)V

    invoke-direct {p2, v0}, Lza/a;-><init>(Lza/a$a;)V

    iput-object p2, p0, Lcom/framer/FrameView;->I:Lza/a;

    .line 6
    iput p1, p0, Lcom/framer/FrameView;->J:I

    .line 7
    invoke-direct {p0}, Lcom/framer/FrameView;->m()V

    return-void
.end method

.method public static i(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 9

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/framer/FrameView;)Lab/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/framer/FrameView;->G:Lab/b;

    return-object p0
.end method

.method static synthetic k(Lcom/framer/FrameView;Lab/b;)Lab/b;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/framer/FrameView;->G:Lab/b;

    return-object p1
.end method

.method static synthetic l(Lcom/framer/FrameView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/framer/FrameView;->H:I

    return p0
.end method

.method private m()V
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/framer/FrameView;->B:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/framer/FrameView;->C:Landroid/graphics/Paint;

    const-string v1, "#13beb5"

    .line 4
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getFrameDefaultWidth()I
    .registers 3

    .line 1
    sget v0, Lcom/framer/FrameView;->K:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Li3/a;->a:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcom/framer/FrameView;->K:I

    .line 3
    :cond_15
    sget v0, Lcom/framer/FrameView;->K:I

    return v0
.end method

.method public getMode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/framer/FrameView;->J:I

    return v0
.end method

.method public getPictureBitmap()Landroid/graphics/Bitmap;
    .registers 10

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget v2, p0, Lcom/framer/FrameView;->u:F

    float-to-int v2, v2

    iget v3, p0, Lcom/framer/FrameView;->v:F

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_3b

    .line 5
    :try_start_23
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v4, p0, Lcom/framer/FrameView;->D:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/framer/FrameView;->u:F

    float-to-int v6, v6

    iget v7, p0, Lcom/framer/FrameView;->v:F

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_3a

    goto :goto_3c

    :catch_3a
    move-object v0, v2

    :catch_3b
    move-object v2, v0

    :goto_3c
    return-object v2
.end method

.method public n(Landroid/graphics/Bitmap;F)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_9

    .line 1
    invoke-static {p1, p2}, Lcom/framer/FrameView;->i(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    if-eqz p2, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    if-nez p2, :cond_16

    goto :goto_1a

    .line 3
    :cond_16
    invoke-virtual {p0, p1}, Lab/a;->setPinchWidget(Landroid/graphics/Bitmap;)V

    goto :goto_1f

    :cond_1a
    :goto_1a
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/framer/FrameView;->E:Z

    .line 5
    iput-object p1, p0, Lcom/framer/FrameView;->F:Landroid/graphics/Bitmap;

    .line 6
    :goto_1f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public o(Landroid/net/Uri;Z)V
    .registers 12

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_89

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    .line 3
    :try_start_14
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-lt v4, v5, :cond_20

    .line 4
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    goto :goto_26

    .line 5
    :cond_20
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_26
    const-string v4, "Orientation"

    .line 6
    invoke-virtual {v2, v4, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2c} :catch_2d

    goto :goto_32

    :catch_2d
    move-exception v2

    .line 7
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_31
    const/4 v2, 0x0

    :goto_32
    const/4 v4, 0x6

    if-eq v2, v4, :cond_3d

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3a

    goto :goto_3f

    :cond_3a
    const/high16 v1, 0x43870000    # 270.0f

    goto :goto_3f

    :cond_3d
    const/high16 v1, 0x42b40000    # 90.0f

    :goto_3f
    if-eqz p2, :cond_81

    .line 8
    iget p2, p0, Lcom/framer/FrameView;->u:F

    .line 9
    iget v2, p0, Lcom/framer/FrameView;->v:F

    .line 10
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 11
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x0

    .line 12
    invoke-static {v0, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 13
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    .line 14
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v8, v8

    div-float/2addr v7, p2

    div-float/2addr v8, v2

    .line 15
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 17
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 19
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 21
    invoke-static {p1, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 23
    invoke-virtual {p0, p2, v1}, Lcom/framer/FrameView;->n(Landroid/graphics/Bitmap;F)V

    goto :goto_8d

    .line 24
    :cond_81
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/framer/FrameView;->n(Landroid/graphics/Bitmap;F)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_8d
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 1
    invoke-super {p0, p1}, Lab/a;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/framer/FrameView;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_66

    .line 3
    iget v1, p0, Lcom/framer/FrameView;->J:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/framer/FrameView;->D:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/framer/FrameView;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1d

    :cond_15
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1d

    .line 5
    iget-object v0, p0, Lcom/framer/FrameView;->G:Lab/b;

    invoke-virtual {v0, p1}, Lab/b;->b(Landroid/graphics/Canvas;)V

    :cond_1d
    :goto_1d
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    iget-object v0, p0, Lcom/framer/FrameView;->D:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/framer/FrameView;->C:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    .line 7
    iget-object v0, p0, Lcom/framer/FrameView;->D:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v10, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v11, v0

    iget-object v12, p0, Lcom/framer/FrameView;->C:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 8
    iget-object v0, p0, Lcom/framer/FrameView;->D:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/framer/FrameView;->C:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lcom/framer/FrameView;->D:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/framer/FrameView;->D:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/framer/FrameView;->C:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_66
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/framer/FrameView;->y:F

    .line 3
    iget p3, p0, Lcom/framer/FrameView;->v:F

    iget p4, p0, Lcom/framer/FrameView;->u:F

    div-float/2addr p3, p4

    mul-float p3, p3, p2

    iput p3, p0, Lcom/framer/FrameView;->z:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-gtz p2, :cond_27

    iget p2, p0, Lcom/framer/FrameView;->z:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_37

    .line 5
    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/framer/FrameView;->z:F

    .line 6
    iget p3, p0, Lcom/framer/FrameView;->u:F

    iget p4, p0, Lcom/framer/FrameView;->v:F

    div-float/2addr p3, p4

    mul-float p3, p3, p2

    iput p3, p0, Lcom/framer/FrameView;->y:F

    :cond_37
    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/framer/FrameView;->w:F

    .line 8
    iput p2, p0, Lcom/framer/FrameView;->x:F

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/framer/FrameView;->y:F

    sub-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/framer/FrameView;->w:F

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    iget p4, p0, Lcom/framer/FrameView;->z:F

    sub-float/2addr p2, p4

    div-float/2addr p2, p3

    iput p2, p0, Lcom/framer/FrameView;->x:F

    if-nez p1, :cond_5a

    .line 11
    iget-object p1, p0, Lcom/framer/FrameView;->D:Landroid/graphics/Rect;

    if-nez p1, :cond_6f

    .line 12
    :cond_5a
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/framer/FrameView;->w:F

    float-to-int p3, p2

    iget p4, p0, Lcom/framer/FrameView;->x:F

    float-to-int p5, p4

    iget v0, p0, Lcom/framer/FrameView;->y:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iget v0, p0, Lcom/framer/FrameView;->z:F

    add-float/2addr p4, v0

    float-to-int p4, p4

    invoke-direct {p1, p3, p5, p2, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/framer/FrameView;->D:Landroid/graphics/Rect;

    .line 13
    :cond_6f
    iget-boolean p1, p0, Lcom/framer/FrameView;->E:Z

    if-eqz p1, :cond_8b

    .line 14
    iget-object p1, p0, Lcom/framer/FrameView;->F:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lab/a;->setPinchWidget(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/framer/FrameView;->F:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/framer/FrameView;->E:Z

    .line 17
    new-instance p1, Lab/b;

    iget-object p2, p0, Lcom/framer/FrameView;->A:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Lab/b;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/framer/FrameView;->G:Lab/b;

    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p0, p2}, Lab/b;->h(Landroid/view/View;Z)V

    :cond_8b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/framer/FrameView;->J:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 2
    invoke-super {p0, p1}, Lab/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_a
    iget-object v0, p0, Lcom/framer/FrameView;->I:Lza/a;

    invoke-virtual {v0, p1}, Lza/a;->e(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setFrameBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/framer/FrameView;->A:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/framer/FrameView;->u:F

    .line 3
    iget-object v0, p0, Lcom/framer/FrameView;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/framer/FrameView;->v:F

    .line 4
    invoke-virtual {p0}, Lcom/framer/FrameView;->getFrameDefaultWidth()I

    move-result v0

    .line 5
    iget v1, p0, Lcom/framer/FrameView;->u:F

    int-to-float v0, v0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_21

    .line 6
    iput v0, p0, Lcom/framer/FrameView;->u:F

    .line 7
    iput v0, p0, Lcom/framer/FrameView;->v:F

    .line 8
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_3a

    .line 9
    :cond_2f
    new-instance v0, Lab/b;

    invoke-direct {v0, p1}, Lab/b;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/framer/FrameView;->G:Lab/b;

    .line 10
    invoke-virtual {v0, p0, v1}, Lab/b;->h(Landroid/view/View;Z)V

    goto :goto_3c

    .line 11
    :cond_3a
    :goto_3a
    iput-boolean v1, p0, Lcom/framer/FrameView;->E:Z

    .line 12
    :goto_3c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/framer/FrameView;->J:I

    return-void
.end method

.method public setOuterColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/framer/FrameView;->C:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class com.framer.FrameView.a (com.framer.FrameView$a)
.class Lcom/framer/FrameView$a;
.super Ljava/lang/Object;
.source "FrameView.java"

# interfaces
.implements Lza/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/framer/FrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lza/a$a<",
        "Lab/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lcom/framer/FrameView;


# direct methods
.method constructor <init>(Lcom/framer/FrameView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/framer/FrameView$a;->o:Lcom/framer/FrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lza/a$b;)V
    .registers 3

    .line 1
    check-cast p1, Lab/b;

    invoke-virtual {p0, p1, p2}, Lcom/framer/FrameView$a;->g(Lab/b;Lza/a$b;)V

    return-void
.end method

.method public bridge synthetic b(Lza/a$b;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/framer/FrameView$a;->e(Lza/a$b;)Lab/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;Lza/a$c;)V
    .registers 3

    .line 1
    check-cast p1, Lab/b;

    invoke-virtual {p0, p1, p2}, Lcom/framer/FrameView$a;->f(Lab/b;Lza/a$c;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Lza/a$c;Lza/a$b;)Z
    .registers 4

    .line 1
    check-cast p1, Lab/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/framer/FrameView$a;->h(Lab/b;Lza/a$c;Lza/a$b;)Z

    move-result p1

    return p1
.end method

.method public e(Lza/a$b;)Lab/b;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lza/a$b;->i()F

    move-result v0

    invoke-virtual {p1}, Lza/a$b;->j()F

    move-result p1

    .line 2
    iget-object v1, p0, Lcom/framer/FrameView$a;->o:Lcom/framer/FrameView;

    invoke-static {v1}, Lcom/framer/FrameView;->j(Lcom/framer/FrameView;)Lab/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lab/b;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 3
    iget-object p1, p0, Lcom/framer/FrameView$a;->o:Lcom/framer/FrameView;

    invoke-static {p1}, Lcom/framer/FrameView;->j(Lcom/framer/FrameView;)Lab/b;

    move-result-object p1

    return-object p1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lab/b;Lza/a$c;)V
    .registers 14

    .line 1
    invoke-virtual {p1}, Lab/b;->d()F

    move-result v1

    invoke-virtual {p1}, Lab/b;->e()F

    move-result v2

    iget-object v0, p0, Lcom/framer/FrameView$a;->o:Lcom/framer/FrameView;

    .line 2
    invoke-static {v0}, Lcom/framer/FrameView;->l(Lcom/framer/FrameView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_16

    const/4 v5, 0x1

    goto :goto_17

    :cond_16
    const/4 v5, 0x0

    .line 3
    :goto_17
    invoke-virtual {p1}, Lab/b;->f()F

    move-result v0

    invoke-virtual {p1}, Lab/b;->f()F

    move-result v6

    add-float/2addr v0, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v0, v6

    iget-object v0, p0, Lcom/framer/FrameView$a;->o:Lcom/framer/FrameView;

    .line 4
    invoke-static {v0}, Lcom/framer/FrameView;->l(Lcom/framer/FrameView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_30

    const/4 v7, 0x1

    goto :goto_31

    :cond_30
    const/4 v7, 0x0

    .line 5
    :goto_31
    invoke-virtual {p1}, Lab/b;->f()F

    move-result v8

    .line 6
    invoke-virtual {p1}, Lab/b;->f()F

    move-result v9

    iget-object v0, p0, Lcom/framer/FrameView$a;->o:Lcom/framer/FrameView;

    .line 7
    invoke-static {v0}, Lcom/framer/FrameView;->l(Lcom/framer/FrameView;)I

    move-result v0

    and-int/2addr v0, v4

    if-eqz v0, :cond_44

    const/4 v10, 0x1

    goto :goto_45

    :cond_44
    const/4 v10, 0x0

    .line 8
    :goto_45
    invoke-virtual {p1}, Lab/b;->c()F

    move-result p1

    move-object v0, p2

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, p1

    .line 9
    invoke-virtual/range {v0 .. v9}, Lza/a$c;->q(FFZFZFFZF)V

    return-void
.end method

.method public g(Lab/b;Lza/a$b;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Lza/a$b;->k()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 2
    iget-object p2, p0, Lcom/framer/FrameView$a;->o:Lcom/framer/FrameView;

    invoke-static {p2, p1}, Lcom/framer/FrameView;->k(Lcom/framer/FrameView;Lab/b;)Lab/b;

    .line 3
    :cond_b
    iget-object p1, p0, Lcom/framer/FrameView$a;->o:Lcom/framer/FrameView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public h(Lab/b;Lza/a$c;Lza/a$b;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/framer/FrameView$a;->o:Lcom/framer/FrameView;

    invoke-static {v0}, Lcom/framer/FrameView;->l(Lcom/framer/FrameView;)I

    move-result v0

    invoke-virtual {p3}, Lza/a$b;->l()Z

    move-result p3

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1, p3}, Lab/b;->k(Lza/a$c;IIZ)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2
    iget-object p2, p0, Lcom/framer/FrameView$a;->o:Lcom/framer/FrameView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_16
    return p1
.end method
