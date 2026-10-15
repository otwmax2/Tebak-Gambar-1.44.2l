###### Class com.theartofdev.edmodo.cropper.h (com.theartofdev.edmodo.cropper.h)
.class final Lcom/theartofdev/edmodo/cropper/h;
.super Ljava/lang/Object;
.source "CropWindowMoveHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/h$b;
    }
.end annotation


# static fields
.field private static final g:Landroid/graphics/Matrix;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:Lcom/theartofdev/edmodo/cropper/h$b;

.field private final f:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/h;->g:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Lcom/theartofdev/edmodo/cropper/h$b;Lcom/theartofdev/edmodo/cropper/g;FF)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    .line 3
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/h;->e:Lcom/theartofdev/edmodo/cropper/h$b;

    .line 4
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/g;->e()F

    move-result p1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/h;->a:F

    .line 5
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/g;->d()F

    move-result p1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/h;->b:F

    .line 6
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/g;->c()F

    move-result p1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/h;->c:F

    .line 7
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/g;->b()F

    move-result p1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/h;->d:F

    .line 8
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/g;->h()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/theartofdev/edmodo/cropper/h;->l(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method private a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .registers 13

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    if-lez v0, :cond_18

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 2
    :cond_18
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, p4

    if-lez v0, :cond_2a

    .line 3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float v2, p2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_2a
    sub-float v0, p4, p2

    cmpg-float v0, v0, p5

    if-gez v0, :cond_31

    move p2, p4

    .line 4
    :cond_31
    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v0

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->b:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3d

    add-float p2, v0, v2

    :cond_3d
    sub-float v1, p2, v0

    .line 5
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->d:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_47

    add-float p2, v0, v2

    :cond_47
    sub-float v1, p4, p2

    cmpg-float p5, v1, p5

    if-gez p5, :cond_4e

    move p2, p4

    :cond_4e
    const/4 p5, 0x0

    cmpl-float p5, p6, p5

    if-lez p5, :cond_cd

    sub-float p5, p2, v0

    mul-float p5, p5, p6

    .line 6
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->a:F

    cmpg-float v2, p5, v1

    if-gez v2, :cond_69

    div-float/2addr v1, p6

    add-float/2addr v0, v1

    .line 7
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 8
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p5, p4, p6

    .line 9
    :cond_69
    iget p4, p0, Lcom/theartofdev/edmodo/cropper/h;->c:F

    cmpl-float v0, p5, p4

    if-lez v0, :cond_7f

    .line 10
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr p4, p6

    add-float/2addr p5, p4

    invoke-static {p2, p5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 11
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p5, p4, p6

    :cond_7f
    if-eqz p7, :cond_96

    if-eqz p8, :cond_96

    .line 12
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    .line 13
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p6

    add-float/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_cd

    :cond_96
    if-eqz p7, :cond_b3

    .line 14
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float p7, p4, p5

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p7, p7, v0

    if-gez p7, :cond_b3

    .line 15
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p4, v0

    div-float/2addr p4, p6

    add-float/2addr p5, p4

    invoke-static {p2, p5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 16
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p5, p4, p6

    :cond_b3
    if-eqz p8, :cond_cd

    .line 17
    iget p4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p5, p4

    iget p7, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p5, p5, p7

    if-lez p5, :cond_cd

    .line 18
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p7, p4

    div-float/2addr p7, p6

    add-float/2addr p5, p7

    .line 19
    invoke-static {p3, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 21
    :cond_cd
    :goto_cd
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private b(Landroid/graphics/RectF;F)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .registers 14

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_15

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    .line 1
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 2
    :cond_15
    iget v1, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p2, v1

    if-gez v2, :cond_27

    .line 3
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float v4, p2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    :cond_27
    sub-float v2, p2, v1

    cmpg-float v2, v2, p4

    if-gez v2, :cond_2e

    move p2, v1

    .line 4
    :cond_2e
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v3, v2, p2

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/h;->a:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3a

    sub-float p2, v2, v4

    :cond_3a
    sub-float v3, v2, p2

    .line 5
    iget v4, p0, Lcom/theartofdev/edmodo/cropper/h;->c:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_44

    sub-float p2, v2, v4

    :cond_44
    sub-float v3, p2, v1

    cmpg-float p4, v3, p4

    if-gez p4, :cond_4b

    move p2, v1

    :cond_4b
    cmpl-float p4, p5, v0

    if-lez p4, :cond_c7

    sub-float p4, v2, p2

    div-float/2addr p4, p5

    .line 6
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/h;->b:F

    cmpg-float v3, p4, v0

    if-gez v3, :cond_63

    mul-float v0, v0, p5

    sub-float/2addr v2, v0

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 8
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    .line 9
    :cond_63
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/h;->d:F

    cmpl-float v1, p4, v0

    if-lez v1, :cond_78

    .line 10
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    mul-float v0, v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 11
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    :cond_78
    if-eqz p6, :cond_90

    if-eqz p7, :cond_90

    .line 12
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget p6, p1, Landroid/graphics/RectF;->right:F

    .line 13
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p5

    sub-float/2addr p6, p3

    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_c7

    :cond_90
    if-eqz p6, :cond_ac

    .line 14
    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, p6, p4

    iget v1, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ac

    .line 15
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p6, v1

    mul-float p6, p6, p5

    sub-float/2addr p4, p6

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 16
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    :cond_ac
    if-eqz p7, :cond_c7

    .line 17
    iget p6, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p4, p6

    iget p7, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p4, p7

    if-lez p4, :cond_c7

    .line 18
    iget p3, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p7, p6

    mul-float p7, p7, p5

    sub-float/2addr p4, p7

    .line 19
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 21
    :cond_c7
    :goto_c7
    iput p2, p1, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method private d(Landroid/graphics/RectF;F)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method private e(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p3

    sub-float/2addr v0, v1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v0, p3

    const/4 p3, 0x0

    invoke-virtual {p1, v0, p3}, Landroid/graphics/RectF;->inset(FF)V

    .line 2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1e

    sub-float/2addr v1, v0

    .line 3
    invoke-virtual {p1, v1, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 4
    :cond_1e
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_2a

    sub-float/2addr p2, v0

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2a
    return-void
.end method

.method private f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .registers 13

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    if-lez v0, :cond_18

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2
    :cond_18
    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p2, p4

    if-lez v0, :cond_2a

    .line 3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v2, p2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_2a
    sub-float v0, p4, p2

    cmpg-float v0, v0, p5

    if-gez v0, :cond_31

    move p2, p4

    .line 4
    :cond_31
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v0

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->a:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3d

    add-float p2, v0, v2

    :cond_3d
    sub-float v1, p2, v0

    .line 5
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/h;->c:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_47

    add-float p2, v0, v2

    :cond_47
    sub-float v1, p4, p2

    cmpg-float p5, v1, p5

    if-gez p5, :cond_4e

    move p2, p4

    :cond_4e
    const/4 p5, 0x0

    cmpl-float p5, p6, p5

    if-lez p5, :cond_d1

    sub-float p5, p2, v0

    div-float/2addr p5, p6

    .line 6
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/h;->b:F

    cmpg-float v2, p5, v1

    if-gez v2, :cond_69

    mul-float v1, v1, p6

    add-float/2addr v0, v1

    .line 7
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 8
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float p5, p4, p6

    .line 9
    :cond_69
    iget p4, p0, Lcom/theartofdev/edmodo/cropper/h;->d:F

    cmpl-float v0, p5, p4

    if-lez v0, :cond_80

    .line 10
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    mul-float p4, p4, p6

    add-float/2addr p5, p4

    invoke-static {p2, p5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 11
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float p5, p4, p6

    :cond_80
    if-eqz p7, :cond_98

    if-eqz p8, :cond_98

    .line 12
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    .line 13
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p6

    add-float/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_d1

    :cond_98
    if-eqz p7, :cond_b6

    .line 14
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float p7, p4, p5

    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p7, p7, v0

    if-gez p7, :cond_b6

    .line 15
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p4, v0

    mul-float p4, p4, p6

    add-float/2addr p5, p4

    invoke-static {p2, p5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 16
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float p5, p4, p6

    :cond_b6
    if-eqz p8, :cond_d1

    .line 17
    iget p4, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p4

    iget p7, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p5, p5, p7

    if-lez p5, :cond_d1

    .line 18
    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p7, p4

    mul-float p7, p7, p6

    add-float/2addr p5, p7

    .line 19
    invoke-static {p3, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 21
    :cond_d1
    :goto_d1
    iput p2, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method private g(Landroid/graphics/RectF;F)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method private h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .registers 14

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_15

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    .line 1
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 2
    :cond_15
    iget v1, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p2, v1

    if-gez v2, :cond_27

    .line 3
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    sub-float v4, p2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :cond_27
    sub-float v2, p2, v1

    cmpg-float v2, v2, p4

    if-gez v2, :cond_2e

    move p2, v1

    .line 4
    :cond_2e
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v2, p2

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/h;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3a

    sub-float p2, v2, v4

    :cond_3a
    sub-float v3, v2, p2

    .line 5
    iget v4, p0, Lcom/theartofdev/edmodo/cropper/h;->d:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_44

    sub-float p2, v2, v4

    :cond_44
    sub-float v3, p2, v1

    cmpg-float p4, v3, p4

    if-gez p4, :cond_4b

    move p2, v1

    :cond_4b
    cmpl-float p4, p5, v0

    if-lez p4, :cond_c6

    sub-float p4, v2, p2

    mul-float p4, p4, p5

    .line 6
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/h;->a:F

    cmpg-float v3, p4, v0

    if-gez v3, :cond_64

    div-float/2addr v0, p5

    sub-float/2addr v2, v0

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 8
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    .line 9
    :cond_64
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/h;->c:F

    cmpl-float v1, p4, v0

    if-lez v1, :cond_79

    .line 10
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 11
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    :cond_79
    if-eqz p6, :cond_90

    if-eqz p7, :cond_90

    .line 12
    iget p4, p3, Landroid/graphics/RectF;->top:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p5

    sub-float/2addr p6, p3

    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_c6

    :cond_90
    if-eqz p6, :cond_ac

    .line 13
    iget p6, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, p6, p4

    iget v1, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ac

    .line 14
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p6, v1

    div-float/2addr p6, p5

    sub-float/2addr p4, p6

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 15
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    :cond_ac
    if-eqz p7, :cond_c6

    .line 16
    iget p6, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p4, p6

    iget p7, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p4, p7

    if-lez p4, :cond_c6

    .line 17
    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p7, p6

    div-float/2addr p7, p5

    sub-float/2addr p4, p7

    .line 18
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 19
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 20
    :cond_c6
    :goto_c6
    iput p2, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method private i(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v0, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1d

    sub-float/2addr v1, v0

    .line 3
    invoke-virtual {p1, p3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 4
    :cond_1d
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_29

    sub-float/2addr p2, v0

    .line 5
    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_29
    return-void
.end method

.method private j(Landroid/graphics/RectF;F)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method private static k(FFFF)F
    .registers 4

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    div-float/2addr p2, p3

    return p2
.end method

.method private l(Landroid/graphics/RectF;FF)V
    .registers 6

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/h;->e:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4c

    :goto_e
    const/4 p1, 0x0

    goto :goto_45

    .line 2
    :pswitch_10
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v1, v0, p2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    goto :goto_44

    .line 4
    :pswitch_1b
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_44

    .line 5
    :pswitch_1e
    iget p1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_26

    .line 6
    :pswitch_21
    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_44

    .line 7
    :pswitch_24
    iget p1, p1, Landroid/graphics/RectF;->left:F

    :goto_26
    sub-float/2addr p1, p2

    move v1, p1

    goto :goto_e

    .line 8
    :pswitch_29
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, p2

    .line 9
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_44

    .line 10
    :pswitch_30
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, p2

    .line 11
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_44

    .line 12
    :pswitch_37
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, p2

    .line 13
    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_44

    .line 14
    :pswitch_3e
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, p2

    .line 15
    iget p1, p1, Landroid/graphics/RectF;->top:F

    :goto_44
    sub-float/2addr p1, p3

    .line 16
    :goto_45
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 17
    iput p1, p2, Landroid/graphics/PointF;->y:F

    return-void

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method

.method private n(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V
    .registers 14

    .line 1
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p2, v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr p3, v0

    .line 3
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float v1, v0, p2

    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x3f866666    # 1.05f

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_2f

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float v5, v1, p2

    int-to-float p5, p5

    cmpl-float p5, v5, p5

    if-gtz p5, :cond_2f

    add-float/2addr v0, p2

    iget p5, p4, Landroid/graphics/RectF;->left:F

    cmpg-float p5, v0, p5

    if-ltz p5, :cond_2f

    add-float/2addr v1, p2

    iget p5, p4, Landroid/graphics/RectF;->right:F

    cmpl-float p5, v1, p5

    if-lez p5, :cond_39

    :cond_2f
    div-float/2addr p2, v3

    .line 4
    iget-object p5, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget v0, p5, Landroid/graphics/PointF;->x:F

    div-float v1, p2, v2

    sub-float/2addr v0, v1

    iput v0, p5, Landroid/graphics/PointF;->x:F

    .line 5
    :cond_39
    iget p5, p1, Landroid/graphics/RectF;->top:F

    add-float v0, p5, p3

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_58

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float v1, v0, p3

    int-to-float p6, p6

    cmpl-float p6, v1, p6

    if-gtz p6, :cond_58

    add-float/2addr p5, p3

    iget p6, p4, Landroid/graphics/RectF;->top:F

    cmpg-float p5, p5, p6

    if-ltz p5, :cond_58

    add-float/2addr v0, p3

    iget p5, p4, Landroid/graphics/RectF;->bottom:F

    cmpl-float p5, v0, p5

    if-lez p5, :cond_62

    :cond_58
    div-float/2addr p3, v3

    .line 6
    iget-object p5, p0, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget p6, p5, Landroid/graphics/PointF;->y:F

    div-float v0, p3, v2

    sub-float/2addr p6, v0

    iput p6, p5, Landroid/graphics/PointF;->y:F

    .line 7
    :cond_62
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 8
    invoke-direct {p0, p1, p4, p7}, Lcom/theartofdev/edmodo/cropper/h;->q(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method private o(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFF)V
    .registers 22

    move-object v9, p0

    move-object v10, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v11, p4

    move/from16 v12, p8

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    iget-object v1, v9, Lcom/theartofdev/edmodo/cropper/h;->e:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_13a

    goto/16 :goto_139

    :pswitch_18
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 3
    invoke-direct {p0, p1, v11, v12}, Lcom/theartofdev/edmodo/cropper/h;->e(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_139

    :pswitch_2e
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 5
    invoke-direct {p0, p1, v11, v12}, Lcom/theartofdev/edmodo/cropper/h;->i(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_139

    :pswitch_43
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/h;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 7
    invoke-direct {p0, p1, v11, v12}, Lcom/theartofdev/edmodo/cropper/h;->e(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_139

    :pswitch_57
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/h;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 9
    invoke-direct {p0, p1, v11, v12}, Lcom/theartofdev/edmodo/cropper/h;->i(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_139

    .line 10
    :pswitch_6a
    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v1, v10, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1, p2, v3}, Lcom/theartofdev/edmodo/cropper/h;->k(FFFF)F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_8c

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 12
    invoke-direct {p0, p1, v12}, Lcom/theartofdev/edmodo/cropper/h;->g(Landroid/graphics/RectF;F)V

    goto/16 :goto_139

    :cond_8c
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    .line 13
    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 14
    invoke-direct {p0, p1, v12}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;F)V

    goto/16 :goto_139

    .line 15
    :pswitch_a1
    iget v0, v10, Landroid/graphics/RectF;->top:F

    iget v1, v10, Landroid/graphics/RectF;->right:F

    invoke-static {p2, v0, v1, v3}, Lcom/theartofdev/edmodo/cropper/h;->k(FFFF)F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_c3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 16
    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 17
    invoke-direct {p0, p1, v12}, Lcom/theartofdev/edmodo/cropper/h;->d(Landroid/graphics/RectF;F)V

    goto/16 :goto_139

    :cond_c3
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/h;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 19
    invoke-direct {p0, p1, v12}, Lcom/theartofdev/edmodo/cropper/h;->b(Landroid/graphics/RectF;F)V

    goto/16 :goto_139

    .line 20
    :pswitch_d6
    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v1, v10, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v3, p2, v1}, Lcom/theartofdev/edmodo/cropper/h;->k(FFFF)F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_f5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/h;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 22
    invoke-direct {p0, p1, v12}, Lcom/theartofdev/edmodo/cropper/h;->g(Landroid/graphics/RectF;F)V

    goto :goto_139

    :cond_f5
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    .line 23
    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 24
    invoke-direct {p0, p1, v12}, Lcom/theartofdev/edmodo/cropper/h;->j(Landroid/graphics/RectF;F)V

    goto :goto_139

    .line 25
    :pswitch_109
    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v1, v10, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, v3, v0, v1}, Lcom/theartofdev/edmodo/cropper/h;->k(FFFF)F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_128

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/h;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 27
    invoke-direct {p0, p1, v12}, Lcom/theartofdev/edmodo/cropper/h;->d(Landroid/graphics/RectF;F)V

    goto :goto_139

    :cond_128
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/h;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 29
    invoke-direct {p0, p1, v12}, Lcom/theartofdev/edmodo/cropper/h;->j(Landroid/graphics/RectF;F)V

    :goto_139
    return-void

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_109
        :pswitch_d6
        :pswitch_a1
        :pswitch_6a
        :pswitch_57
        :pswitch_43
        :pswitch_2e
        :pswitch_18
    .end packed-switch
.end method

.method private p(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V
    .registers 19

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    move-object v10, p0

    iget-object v1, v10, Lcom/theartofdev/edmodo/cropper/h;->e:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a0

    goto/16 :goto_9f

    :pswitch_10
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 2
    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_9f

    :pswitch_20
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    .line 3
    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/h;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_9f

    :pswitch_30
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p7

    .line 4
    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_9f

    :pswitch_3e
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move/from16 v5, p7

    .line 5
    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_9f

    :pswitch_4c
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 6
    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v3, p2

    move/from16 v5, p5

    .line 7
    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/h;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_9f

    :pswitch_61
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 8
    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/h;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    move/from16 v5, p7

    .line 9
    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto :goto_9f

    :pswitch_78
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p7

    .line 10
    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v3, p2

    move/from16 v5, p5

    move/from16 v6, p7

    .line 11
    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/h;->f(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_9f

    :pswitch_8f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p7

    .line 12
    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->h(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    move v3, p2

    .line 13
    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->c(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    :goto_9f
    return-void

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_78
        :pswitch_61
        :pswitch_4c
        :pswitch_3e
        :pswitch_30
        :pswitch_20
        :pswitch_10
    .end packed-switch
.end method

.method private q(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 8

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float v2, v1, p3

    const/4 v3, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_f

    sub-float/2addr v1, v0

    .line 2
    invoke-virtual {p1, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 3
    :cond_f
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float v2, v1, p3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1d

    sub-float/2addr v1, v0

    .line 4
    invoke-virtual {p1, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 5
    :cond_1d
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float v2, v1, p3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2b

    sub-float/2addr v1, v0

    .line 6
    invoke-virtual {p1, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 7
    :cond_2b
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float p3, p2, p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_39

    sub-float/2addr p2, v0

    .line 8
    invoke-virtual {p1, v3, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_39
    return-void
.end method


# virtual methods
.method public m(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V
    .registers 20

    move-object v9, p0

    .line 1
    iget-object v0, v9, Lcom/theartofdev/edmodo/cropper/h;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float v2, p2, v1

    .line 2
    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float v3, p3, v0

    .line 3
    iget-object v0, v9, Lcom/theartofdev/edmodo/cropper/h;->e:Lcom/theartofdev/edmodo/cropper/h$b;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->w:Lcom/theartofdev/edmodo/cropper/h$b;

    if-ne v0, v1, :cond_1d

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/h;->n(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V

    goto :goto_38

    :cond_1d
    if-eqz p8, :cond_2d

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/h;->o(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFF)V

    goto :goto_38

    :cond_2d
    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/h;->p(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V

    :goto_38
    return-void
.end method

###### Class com.theartofdev.edmodo.cropper.h.a (com.theartofdev.edmodo.cropper.h$a)
.class synthetic Lcom/theartofdev/edmodo/cropper/h$a;
.super Ljava/lang/Object;
.source "CropWindowMoveHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/h$b;->values()[Lcom/theartofdev/edmodo/cropper/h$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->o:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    sget-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->p:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    sget-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->q:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    sget-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->r:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    sget-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->s:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    sget-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->t:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    sget-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->u:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    sget-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->v:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$a;->a:[I

    sget-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->w:Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    return-void
.end method

###### Class com.theartofdev.edmodo.cropper.h.b (com.theartofdev.edmodo.cropper.h$b)
.class public final enum Lcom/theartofdev/edmodo/cropper/h$b;
.super Ljava/lang/Enum;
.source "CropWindowMoveHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/theartofdev/edmodo/cropper/h$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lcom/theartofdev/edmodo/cropper/h$b;

.field public static final enum p:Lcom/theartofdev/edmodo/cropper/h$b;

.field public static final enum q:Lcom/theartofdev/edmodo/cropper/h$b;

.field public static final enum r:Lcom/theartofdev/edmodo/cropper/h$b;

.field public static final enum s:Lcom/theartofdev/edmodo/cropper/h$b;

.field public static final enum t:Lcom/theartofdev/edmodo/cropper/h$b;

.field public static final enum u:Lcom/theartofdev/edmodo/cropper/h$b;

.field public static final enum v:Lcom/theartofdev/edmodo/cropper/h$b;

.field public static final enum w:Lcom/theartofdev/edmodo/cropper/h$b;

.field private static final synthetic x:[Lcom/theartofdev/edmodo/cropper/h$b;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/h$b;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/h$b;->o:Lcom/theartofdev/edmodo/cropper/h$b;

    .line 2
    new-instance v1, Lcom/theartofdev/edmodo/cropper/h$b;

    const-string v3, "TOP_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/theartofdev/edmodo/cropper/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/theartofdev/edmodo/cropper/h$b;->p:Lcom/theartofdev/edmodo/cropper/h$b;

    .line 3
    new-instance v3, Lcom/theartofdev/edmodo/cropper/h$b;

    const-string v5, "BOTTOM_LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/theartofdev/edmodo/cropper/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/theartofdev/edmodo/cropper/h$b;->q:Lcom/theartofdev/edmodo/cropper/h$b;

    .line 4
    new-instance v5, Lcom/theartofdev/edmodo/cropper/h$b;

    const-string v7, "BOTTOM_RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/theartofdev/edmodo/cropper/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/theartofdev/edmodo/cropper/h$b;->r:Lcom/theartofdev/edmodo/cropper/h$b;

    .line 5
    new-instance v7, Lcom/theartofdev/edmodo/cropper/h$b;

    const-string v9, "LEFT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/theartofdev/edmodo/cropper/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/theartofdev/edmodo/cropper/h$b;->s:Lcom/theartofdev/edmodo/cropper/h$b;

    .line 6
    new-instance v9, Lcom/theartofdev/edmodo/cropper/h$b;

    const-string v11, "TOP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/theartofdev/edmodo/cropper/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/theartofdev/edmodo/cropper/h$b;->t:Lcom/theartofdev/edmodo/cropper/h$b;

    .line 7
    new-instance v11, Lcom/theartofdev/edmodo/cropper/h$b;

    const-string v13, "RIGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/theartofdev/edmodo/cropper/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/theartofdev/edmodo/cropper/h$b;->u:Lcom/theartofdev/edmodo/cropper/h$b;

    .line 8
    new-instance v13, Lcom/theartofdev/edmodo/cropper/h$b;

    const-string v15, "BOTTOM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/theartofdev/edmodo/cropper/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/theartofdev/edmodo/cropper/h$b;->v:Lcom/theartofdev/edmodo/cropper/h$b;

    .line 9
    new-instance v15, Lcom/theartofdev/edmodo/cropper/h$b;

    const-string v14, "CENTER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/theartofdev/edmodo/cropper/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/theartofdev/edmodo/cropper/h$b;->w:Lcom/theartofdev/edmodo/cropper/h$b;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/theartofdev/edmodo/cropper/h$b;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lcom/theartofdev/edmodo/cropper/h$b;->x:[Lcom/theartofdev/edmodo/cropper/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/h$b;
    .registers 2

    .line 1
    const-class v0, Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/theartofdev/edmodo/cropper/h$b;

    return-object p0
.end method

.method public static values()[Lcom/theartofdev/edmodo/cropper/h$b;
    .registers 1

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/h$b;->x:[Lcom/theartofdev/edmodo/cropper/h$b;

    invoke-virtual {v0}, [Lcom/theartofdev/edmodo/cropper/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/theartofdev/edmodo/cropper/h$b;

    return-object v0
.end method
