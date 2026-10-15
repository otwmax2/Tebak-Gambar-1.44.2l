###### Class com.theartofdev.edmodo.cropper.CropImageView (com.theartofdev.edmodo.cropper.CropImageView)
.class public Lcom/theartofdev/edmodo/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropImageView$b;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$e;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$i;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$h;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$f;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$g;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$j;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$d;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$k;,
        Lcom/theartofdev/edmodo/cropper/CropImageView$c;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Lcom/theartofdev/edmodo/cropper/CropImageView$g;

.field private L:Lcom/theartofdev/edmodo/cropper/CropImageView$f;

.field private M:Lcom/theartofdev/edmodo/cropper/CropImageView$h;

.field private N:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

.field private O:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

.field private P:Landroid/net/Uri;

.field private Q:I

.field private R:F

.field private S:F

.field private T:F

.field private U:Landroid/graphics/RectF;

.field private V:I

.field private W:Z

.field private a0:Landroid/net/Uri;

.field private b0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/theartofdev/edmodo/cropper/b;",
            ">;"
        }
    .end annotation
.end field

.field private c0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/theartofdev/edmodo/cropper/a;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/widget/ImageView;

.field private final p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

.field private final q:Landroid/graphics/Matrix;

.field private final r:Landroid/graphics/Matrix;

.field private final s:Landroid/widget/ProgressBar;

.field private final t:[F

.field private final u:[F

.field private v:Lcom/theartofdev/edmodo/cropper/e;

.field private w:Landroid/graphics/Bitmap;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Landroid/graphics/Matrix;

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:[F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:Z

    .line 8
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:Z

    .line 9
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Z

    .line 10
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    .line 12
    instance-of v2, p1, Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_38

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_39

    :cond_38
    move-object v2, v3

    :goto_39
    if-eqz v2, :cond_4c

    const-string v4, "CROP_IMAGE_EXTRA_BUNDLE"

    .line 13
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4c

    const-string v3, "CROP_IMAGE_EXTRA_OPTIONS"

    .line 14
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/theartofdev/edmodo/cropper/f;

    :cond_4c
    if-nez v3, :cond_1e8

    .line 15
    new-instance v3, Lcom/theartofdev/edmodo/cropper/f;

    invoke-direct {v3}, Lcom/theartofdev/edmodo/cropper/f;-><init>()V

    if-eqz p2, :cond_1e8

    .line 16
    sget-object v2, Lz8/e;->u:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 17
    :try_start_5b
    sget v0, Lz8/e;->F:I

    iget-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/f;->z:Z

    .line 18
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Lcom/theartofdev/edmodo/cropper/f;->z:Z

    .line 19
    sget v2, Lz8/e;->v:I

    iget v4, v3, Lcom/theartofdev/edmodo/cropper/f;->A:I

    .line 20
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->A:I

    .line 21
    sget v4, Lz8/e;->w:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->B:I

    .line 22
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->B:I

    .line 23
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    move-result-object v4

    sget v5, Lz8/e;->U:I

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/f;->s:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    .line 24
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/theartofdev/edmodo/cropper/f;->s:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    .line 25
    sget v4, Lz8/e;->x:I

    iget-boolean v5, v3, Lcom/theartofdev/edmodo/cropper/f;->v:Z

    .line 26
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Lcom/theartofdev/edmodo/cropper/f;->v:Z

    .line 27
    sget v4, Lz8/e;->S:I

    iget-boolean v5, v3, Lcom/theartofdev/edmodo/cropper/f;->w:Z

    .line 28
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Lcom/theartofdev/edmodo/cropper/f;->w:Z

    .line 29
    sget v4, Lz8/e;->N:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->x:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->x:I

    .line 30
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    move-result-object v4

    sget v5, Lz8/e;->V:I

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/f;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    .line 31
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/theartofdev/edmodo/cropper/f;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    .line 32
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    move-result-object v4

    sget v5, Lz8/e;->H:I

    iget-object v6, v3, Lcom/theartofdev/edmodo/cropper/f;->r:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    .line 33
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    .line 34
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/theartofdev/edmodo/cropper/f;->r:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    .line 35
    sget v4, Lz8/e;->Y:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->p:F

    .line 36
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->p:F

    .line 37
    sget v4, Lz8/e;->Z:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->q:F

    .line 38
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->q:F

    .line 39
    sget v4, Lz8/e;->K:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->y:F

    .line 40
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->y:F

    .line 41
    sget v4, Lz8/e;->E:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->C:F

    .line 42
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->C:F

    .line 43
    sget v4, Lz8/e;->D:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->D:I

    .line 44
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->D:I

    .line 45
    sget v4, Lz8/e;->C:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->E:F

    .line 46
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v3, Lcom/theartofdev/edmodo/cropper/f;->E:F

    .line 47
    sget v5, Lz8/e;->B:I

    iget v6, v3, Lcom/theartofdev/edmodo/cropper/f;->F:F

    .line 48
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v3, Lcom/theartofdev/edmodo/cropper/f;->F:F

    .line 49
    sget v5, Lz8/e;->A:I

    iget v6, v3, Lcom/theartofdev/edmodo/cropper/f;->G:F

    .line 50
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v3, Lcom/theartofdev/edmodo/cropper/f;->G:F

    .line 51
    sget v5, Lz8/e;->z:I

    iget v6, v3, Lcom/theartofdev/edmodo/cropper/f;->H:I

    .line 52
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Lcom/theartofdev/edmodo/cropper/f;->H:I

    .line 53
    sget v5, Lz8/e;->J:I

    iget v6, v3, Lcom/theartofdev/edmodo/cropper/f;->I:F

    .line 54
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v3, Lcom/theartofdev/edmodo/cropper/f;->I:F

    .line 55
    sget v5, Lz8/e;->I:I

    iget v6, v3, Lcom/theartofdev/edmodo/cropper/f;->J:I

    .line 56
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Lcom/theartofdev/edmodo/cropper/f;->J:I

    .line 57
    sget v5, Lz8/e;->y:I

    iget v6, v3, Lcom/theartofdev/edmodo/cropper/f;->K:I

    .line 58
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Lcom/theartofdev/edmodo/cropper/f;->K:I

    .line 59
    sget v5, Lz8/e;->W:I

    iget-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:Z

    .line 60
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v3, Lcom/theartofdev/edmodo/cropper/f;->t:Z

    .line 61
    sget v5, Lz8/e;->X:I

    iget-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:Z

    .line 62
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v3, Lcom/theartofdev/edmodo/cropper/f;->u:Z

    .line 63
    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->E:F

    .line 64
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->E:F

    .line 65
    sget v4, Lz8/e;->R:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->L:I

    int-to-float v5, v5

    .line 66
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->L:I

    .line 67
    sget v4, Lz8/e;->Q:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->M:I

    int-to-float v5, v5

    .line 68
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->M:I

    .line 69
    sget v4, Lz8/e;->P:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->N:I

    int-to-float v5, v5

    .line 70
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->N:I

    .line 71
    sget v4, Lz8/e;->O:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->O:I

    int-to-float v5, v5

    .line 72
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->O:I

    .line 73
    sget v4, Lz8/e;->M:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->P:I

    int-to-float v5, v5

    .line 74
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->P:I

    .line 75
    sget v4, Lz8/e;->L:I

    iget v5, v3, Lcom/theartofdev/edmodo/cropper/f;->Q:I

    int-to-float v5, v5

    .line 76
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/theartofdev/edmodo/cropper/f;->Q:I

    .line 77
    sget v4, Lz8/e;->G:I

    iget-boolean v5, v3, Lcom/theartofdev/edmodo/cropper/f;->g0:Z

    .line 78
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v3, Lcom/theartofdev/edmodo/cropper/f;->g0:Z

    .line 79
    iget-boolean v5, v3, Lcom/theartofdev/edmodo/cropper/f;->h0:Z

    .line 80
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Lcom/theartofdev/edmodo/cropper/f;->h0:Z

    .line 81
    sget v4, Lz8/e;->T:I

    iget-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:Z

    .line 82
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:Z

    .line 83
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1df

    .line 84
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1df

    .line 85
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1df

    .line 86
    iput-boolean v1, v3, Lcom/theartofdev/edmodo/cropper/f;->z:Z
    :try_end_1df
    .catchall {:try_start_5b .. :try_end_1df} :catchall_1e3

    .line 87
    :cond_1df
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1e8

    :catchall_1e3
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 88
    :cond_1e8
    :goto_1e8
    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/f;->h()V

    .line 89
    iget-object p2, v3, Lcom/theartofdev/edmodo/cropper/f;->s:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    .line 90
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/f;->v:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Z

    .line 91
    iget p2, v3, Lcom/theartofdev/edmodo/cropper/f;->x:I

    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    .line 92
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/f;->t:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:Z

    .line 93
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/f;->u:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:Z

    .line 94
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/f;->g0:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    .line 95
    iget-boolean p2, v3, Lcom/theartofdev/edmodo/cropper/f;->h0:Z

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 97
    sget p2, Lz8/b;->b:I

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 98
    sget p2, Lz8/a;->c:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ImageView;

    .line 99
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    sget p2, Lz8/a;->a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 101
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;

    invoke-direct {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView$a;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;)V

    invoke-virtual {p2, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowChangeListener(Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;)V

    .line 102
    invoke-virtual {p2, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/f;)V

    .line 103
    sget p2, Lz8/a;->b:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->s:Landroid/widget/ProgressBar;

    .line 104
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->s()V

    return-void
.end method

.method static synthetic a(Lcom/theartofdev/edmodo/cropper/CropImageView;ZZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->k(ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$g;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->K:Lcom/theartofdev/edmodo/cropper/CropImageView$g;

    return-object p0
.end method

.method static synthetic c(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$f;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->L:Lcom/theartofdev/edmodo/cropper/CropImageView$f;

    return-object p0
.end method

.method private d(FFZZ)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19a

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_19a

    cmpl-float v1, p2, v0

    if-lez v1, :cond_19a

    .line 2
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 6
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    .line 7
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p2, v5

    div-float/2addr v5, v4

    .line 8
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->l()V

    .line 10
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    if-lez v2, :cond_5b

    .line 11
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    int-to-float v2, v2

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    .line 12
    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->q([F)F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    .line 13
    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/c;->r([F)F

    move-result v6

    .line 14
    invoke-virtual {v3, v2, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 15
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->l()V

    .line 16
    :cond_5b
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    .line 17
    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->x([F)F

    move-result v2

    div-float v2, p1, v2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    .line 18
    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/c;->t([F)F

    move-result v3

    div-float v3, p2, v3

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 20
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    if-eq v3, v5, :cond_87

    sget-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->r:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_7f

    cmpg-float v3, v2, v6

    if-ltz v3, :cond_87

    :cond_7f
    cmpl-float v3, v2, v6

    if-lez v3, :cond_9b

    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Z

    if-eqz v3, :cond_9b

    .line 21
    :cond_87
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    .line 22
    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->q([F)F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    .line 23
    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/c;->r([F)F

    move-result v6

    .line 24
    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 25
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->l()V

    .line 26
    :cond_9b
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    if-eqz v2, :cond_a3

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    neg-float v2, v2

    goto :goto_a5

    :cond_a3
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    .line 27
    :goto_a5
    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    if-eqz v3, :cond_ad

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    neg-float v3, v3

    goto :goto_af

    :cond_ad
    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    .line 28
    :goto_af
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    .line 29
    invoke-static {v6}, Lcom/theartofdev/edmodo/cropper/c;->q([F)F

    move-result v6

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    .line 30
    invoke-static {v7}, Lcom/theartofdev/edmodo/cropper/c;->r([F)F

    move-result v7

    .line 31
    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 32
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->l()V

    .line 33
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz p3, :cond_12b

    .line 34
    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    .line 35
    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/c;->x([F)F

    move-result p3

    cmpl-float p3, p1, p3

    if-lez p3, :cond_d6

    const/4 p1, 0x0

    goto :goto_f8

    :cond_d6
    div-float/2addr p1, v4

    .line 36
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float/2addr p1, p3

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/c;->u([F)F

    move-result p3

    neg-float p3, p3

    .line 37
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/c;->v([F)F

    move-result v5

    sub-float/2addr p3, v5

    .line 39
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, v2

    :goto_f8
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->S:F

    .line 40
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    .line 41
    invoke-static {p1}, Lcom/theartofdev/edmodo/cropper/c;->t([F)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_105

    goto :goto_128

    :cond_105
    div-float/2addr p2, v4

    .line 42
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    invoke-static {p1}, Lcom/theartofdev/edmodo/cropper/c;->w([F)F

    move-result p1

    neg-float p1, p1

    .line 43
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/c;->p([F)F

    move-result p3

    sub-float/2addr p2, p3

    .line 45
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float v0, p1, v3

    :goto_128
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->T:F

    goto :goto_157

    .line 46
    :cond_12b
    iget p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->S:F

    mul-float p3, p3, v2

    iget v0, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    .line 47
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget v0, v1, Landroid/graphics/RectF;->right:F

    neg-float v0, v0

    add-float/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->S:F

    .line 48
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->T:F

    mul-float p1, p1, v3

    iget p3, v1, Landroid/graphics/RectF;->top:F

    neg-float p3, p3

    .line 49
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p3, v1, Landroid/graphics/RectF;->bottom:F

    neg-float p3, p3

    add-float/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v3

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->T:F

    .line 50
    :goto_157
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->S:F

    mul-float p2, p2, v2

    iget p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->T:F

    mul-float p3, p3, v3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 51
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->S:F

    mul-float p1, p1, v2

    iget p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->T:F

    mul-float p2, p2, v3

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 52
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 53
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->l()V

    .line 54
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    if-eqz p4, :cond_18f

    .line 55
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->v:Lcom/theartofdev/edmodo/cropper/e;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Lcom/theartofdev/edmodo/cropper/e;->a([FLandroid/graphics/Matrix;)V

    .line 56
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->v:Lcom/theartofdev/edmodo/cropper/e;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_196

    .line 57
    :cond_18f
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_196
    const/4 p1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->u(Z)V

    :cond_19a
    return-void
.end method

.method private e()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->D:I

    if-gtz v1, :cond_c

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    if-eqz v1, :cond_f

    .line 2
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->D:I

    .line 5
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 6
    iput v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    .line 7
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->S:F

    .line 10
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->T:F

    .line 11
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 12
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a0:Landroid/net/Uri;

    .line 13
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->r()V

    return-void
.end method

.method private static j(III)I
    .registers 4

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_5

    goto :goto_f

    :cond_5
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_e

    .line 1
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_f

    :cond_e
    move p1, p2

    :goto_f
    return p1
.end method

.method private k(ZZ)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_102

    if-lez v0, :cond_102

    if-lez v1, :cond_102

    .line 4
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_3b

    .line 5
    iget p2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float p2, p2, v3

    if-ltz p2, :cond_33

    iget p2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v3

    if-ltz p2, :cond_33

    iget p2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    cmpl-float p2, p2, v3

    if-gtz p2, :cond_33

    iget p2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v1

    cmpl-float p2, p2, v2

    if-lez p2, :cond_f9

    :cond_33
    int-to-float p2, v0

    int-to-float v0, v1

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p2, v0, v1, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    goto/16 :goto_f9

    .line 7
    :cond_3b
    iget-boolean v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_47

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f9

    .line 8
    :cond_47
    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_89

    .line 9
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v6, v0

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v8, v6, v7

    cmpg-float v4, v4, v8

    if-gez v4, :cond_89

    .line 10
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v8, v1

    mul-float v7, v7, v8

    cmpg-float v4, v4, v7

    if-gez v4, :cond_89

    .line 11
    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    int-to-float v4, v4

    .line 12
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    div-float/2addr v7, v9

    const v9, 0x3f23d70a    # 0.64f

    div-float/2addr v7, v9

    div-float/2addr v6, v7

    .line 13
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v10, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    div-float/2addr v7, v10

    div-float/2addr v7, v9

    div-float/2addr v8, v7

    .line 14
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 15
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_8a

    :cond_89
    const/4 v4, 0x0

    .line 16
    :goto_8a
    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_c7

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v7, v0

    const v8, 0x3f266666    # 0.65f

    mul-float v9, v7, v8

    cmpl-float v6, v6, v9

    if-gtz v6, :cond_a9

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v9, v1

    mul-float v9, v9, v8

    cmpl-float v6, v6, v9

    if-lez v6, :cond_c7

    .line 17
    :cond_a9
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    div-float/2addr v4, v6

    const v6, 0x3f028f5c    # 0.51f

    div-float/2addr v4, v6

    div-float/2addr v7, v4

    int-to-float v4, v1

    .line 18
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    div-float/2addr v2, v8

    div-float/2addr v2, v6

    div-float/2addr v4, v2

    .line 19
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 20
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 21
    :cond_c7
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Z

    if-nez v2, :cond_cc

    goto :goto_cd

    :cond_cc
    move v5, v4

    :goto_cd
    cmpl-float v2, v5, v3

    if-lez v2, :cond_f9

    .line 22
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_f9

    if-eqz p2, :cond_f1

    .line 23
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->v:Lcom/theartofdev/edmodo/cropper/e;

    if-nez v2, :cond_e8

    .line 24
    new-instance v2, Lcom/theartofdev/edmodo/cropper/e;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-direct {v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/e;-><init>(Landroid/widget/ImageView;Lcom/theartofdev/edmodo/cropper/CropOverlayView;)V

    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->v:Lcom/theartofdev/edmodo/cropper/e;

    .line 25
    :cond_e8
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->v:Lcom/theartofdev/edmodo/cropper/e;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/e;->b([FLandroid/graphics/Matrix;)V

    .line 26
    :cond_f1
    iput v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 27
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    .line 28
    :cond_f9
    :goto_f9
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->M:Lcom/theartofdev/edmodo/cropper/CropImageView$h;

    if-eqz p2, :cond_102

    if-nez p1, :cond_102

    .line 29
    invoke-interface {p2}, Lcom/theartofdev/edmodo/cropper/CropImageView$h;->a()V

    :cond_102
    return-void
.end method

.method private l()V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 2
    aput v2, v0, v3

    .line 3
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 4
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 5
    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x4

    aput v6, v0, v7

    .line 6
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x5

    aput v6, v0, v8

    .line 7
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    const/4 v6, 0x6

    aput v2, v0, v6

    .line 8
    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x7

    aput v9, v0, v10

    .line 9
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 10
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:[F

    aput v2, v0, v1

    .line 11
    aput v2, v0, v3

    const/high16 v1, 0x42c80000    # 100.0f

    .line 12
    aput v1, v0, v5

    .line 13
    aput v2, v0, v4

    .line 14
    aput v1, v0, v7

    .line 15
    aput v1, v0, v8

    .line 16
    aput v2, v0, v6

    .line 17
    aput v1, v0, v10

    .line 18
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method private q(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 2
    :cond_a
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e()V

    .line 4
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    .line 5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    .line 7
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->D:I

    .line 8
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    .line 9
    iput p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    .line 11
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz p1, :cond_3a

    .line 12
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->r()V

    .line 13
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->r()V

    :cond_3a
    return-void
.end method

.method private r()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz v0, :cond_12

    .line 2
    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    const/4 v1, 0x4

    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method private s()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->b0:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_11

    :cond_d
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 2
    :goto_14
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->s:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x4

    :goto_1a
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private u(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2f

    if-nez p1, :cond_2f

    .line 2
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:[F

    .line 3
    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/c;->x([F)F

    move-result v2

    div-float/2addr v0, v2

    .line 4
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->u:[F

    .line 5
    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/c;->t([F)F

    move-result v1

    div-float/2addr v2, v1

    .line 6
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 8
    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->t(FFFF)V

    .line 9
    :cond_2f
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    goto :goto_37

    :cond_35
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->t:[F

    :goto_37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->s([FII)V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    return-void
.end method

.method public g()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    return-void
.end method

.method public getAspectRatio()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCropPoints()[F
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 2
    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x1

    aput v5, v2, v6

    iget v6, v0, Landroid/graphics/RectF;->right:F

    const/4 v7, 0x2

    aput v6, v2, v7

    const/4 v7, 0x3

    aput v5, v2, v7

    const/4 v5, 0x4

    aput v6, v2, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x5

    aput v0, v2, v5

    const/4 v5, 0x6

    aput v3, v2, v5

    const/4 v3, 0x7

    aput v0, v2, v3

    .line 3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :goto_36
    if-ge v4, v1, :cond_44

    .line 5
    aget v0, v2, v4

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    aput v0, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_44
    return-object v2
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 8

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    .line 2
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_8
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v3, v3, v0

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    .line 6
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 7
    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m()Z

    move-result v4

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 8
    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v5

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 9
    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v6

    move-object v1, v2

    move v2, v3

    move v3, v0

    .line 10
    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/c;->s([FIIZII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    move-result-object v0

    return-object v0
.end method

.method public getCropWindowRect()Landroid/graphics/RectF;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_6
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedImage()Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->h(IILcom/theartofdev/edmodo/cropper/CropImageView$j;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedImageAsync()V
    .registers 3

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->i(IILcom/theartofdev/edmodo/cropper/CropImageView$j;)V

    return-void
.end method

.method public getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$d;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    move-result-object v0

    return-object v0
.end method

.method public getImageResource()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->D:I

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    return-object v0
.end method

.method public getMaxZoom()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    return v0
.end method

.method public getRotatedDegrees()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    return v0
.end method

.method public getScaleType()Lcom/theartofdev/edmodo/cropper/CropImageView$k;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    return-object v0
.end method

.method public getWholeImageRect()Landroid/graphics/Rect;
    .registers 5

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    .line 2
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, v0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v1, v1, v0

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public h(IILcom/theartofdev/edmodo/cropper/CropImageView$j;)Landroid/graphics/Bitmap;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_97

    .line 2
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3
    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_15

    move/from16 v15, p1

    goto :goto_16

    :cond_15
    const/4 v15, 0x0

    :goto_16
    if-eq v1, v2, :cond_1a

    move/from16 v3, p2

    .line 4
    :cond_1a
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    if-eqz v2, :cond_6a

    iget v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    const/4 v4, 0x1

    if-gt v2, v4, :cond_27

    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-ne v1, v2, :cond_6a

    .line 5
    :cond_27
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    mul-int v8, v2, v4

    .line 6
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    mul-int v9, v2, v4

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v6

    iget v7, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 9
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m()Z

    move-result v10

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 10
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v11

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 11
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v12

    iget-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    iget-boolean v14, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    move v13, v15

    move/from16 v16, v14

    move v14, v3

    move v1, v15

    move v15, v2

    .line 12
    invoke-static/range {v4 .. v16}, Lcom/theartofdev/edmodo/cropper/c;->d(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v2

    .line 13
    iget-object v2, v2, Lcom/theartofdev/edmodo/cropper/c$a;->a:Landroid/graphics/Bitmap;

    goto :goto_8f

    :cond_6a
    move v1, v15

    .line 14
    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v5

    iget v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 16
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m()Z

    move-result v7

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 17
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v8

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 18
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v9

    iget-boolean v10, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    iget-boolean v11, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    .line 19
    invoke-static/range {v4 .. v11}, Lcom/theartofdev/edmodo/cropper/c;->g(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v2

    iget-object v2, v2, Lcom/theartofdev/edmodo/cropper/c$a;->a:Landroid/graphics/Bitmap;

    :goto_8f
    move v4, v1

    move-object/from16 v1, p3

    .line 20
    invoke-static {v2, v4, v3, v1}, Lcom/theartofdev/edmodo/cropper/c;->y(Landroid/graphics/Bitmap;IILcom/theartofdev/edmodo/cropper/CropImageView$j;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_98

    :cond_97
    const/4 v1, 0x0

    :goto_98
    return-object v1
.end method

.method public i(IILcom/theartofdev/edmodo/cropper/CropImageView$j;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->O:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

    if-eqz v0, :cond_f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/theartofdev/edmodo/cropper/CropImageView;->t(IILcom/theartofdev/edmodo/cropper/CropImageView$j;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void

    .line 3
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mOnCropImageCompleteListener is not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method m(Lcom/theartofdev/edmodo/cropper/a$a;)V
    .registers 15

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->c0:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->s()V

    .line 3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->O:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

    if-eqz v0, :cond_2f

    .line 4
    new-instance v12, Lcom/theartofdev/edmodo/cropper/CropImageView$b;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    iget-object v4, p1, Lcom/theartofdev/edmodo/cropper/a$a;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Lcom/theartofdev/edmodo/cropper/a$a;->b:Landroid/net/Uri;

    iget-object v6, p1, Lcom/theartofdev/edmodo/cropper/a$a;->c:Ljava/lang/Exception;

    .line 5
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v7

    .line 6
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 7
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 8
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getRotatedDegrees()I

    move-result v10

    iget v11, p1, Lcom/theartofdev/edmodo/cropper/a$a;->e:I

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 9
    invoke-interface {v0, p0, v12}, Lcom/theartofdev/edmodo/cropper/CropImageView$e;->x(Lcom/theartofdev/edmodo/cropper/CropImageView;Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V

    :cond_2f
    return-void
.end method

.method n(Lcom/theartofdev/edmodo/cropper/b$a;)V
    .registers 9

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->b0:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->s()V

    .line 3
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/b$a;->e:Ljava/lang/Exception;

    if-nez v0, :cond_19

    .line 4
    iget v6, p1, Lcom/theartofdev/edmodo/cropper/b$a;->d:I

    iput v6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->x:I

    .line 5
    iget-object v2, p1, Lcom/theartofdev/edmodo/cropper/b$a;->b:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/theartofdev/edmodo/cropper/b$a;->a:Landroid/net/Uri;

    iget v5, p1, Lcom/theartofdev/edmodo/cropper/b$a;->c:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->q(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 6
    :cond_19
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->N:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    if-eqz v0, :cond_24

    .line 7
    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/b$a;->a:Landroid/net/Uri;

    iget-object p1, p1, Lcom/theartofdev/edmodo/cropper/b$a;->e:Ljava/lang/Exception;

    invoke-interface {v0, p0, v1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView$i;->w(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V

    :cond_24
    return-void
.end method

.method public o(I)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_141

    if-gez v1, :cond_f

    .line 2
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    goto :goto_11

    .line 3
    :cond_f
    rem-int/lit16 v1, v1, 0x168

    .line 4
    :goto_11
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 5
    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2d

    const/16 v2, 0x2d

    if-le v1, v2, :cond_23

    const/16 v2, 0x87

    if-lt v1, v2, :cond_2b

    :cond_23
    const/16 v2, 0xd7

    if-le v1, v2, :cond_2d

    const/16 v2, 0x131

    if-ge v1, v2, :cond_2d

    :cond_2b
    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 6
    :goto_2e
    sget-object v5, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-eqz v2, :cond_40

    .line 7
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v6

    goto :goto_44

    :cond_40
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    :goto_44
    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    if-eqz v2, :cond_4e

    .line 8
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    goto :goto_52

    :cond_4e
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    :goto_52
    div-float/2addr v8, v7

    if-eqz v2, :cond_5d

    .line 9
    iget-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    .line 10
    iget-boolean v7, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    iput-boolean v7, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    .line 11
    iput-boolean v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    .line 12
    :cond_5d
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 13
    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->d:[F

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    aput v7, v2, v4

    .line 14
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    aput v7, v2, v3

    const/4 v7, 0x2

    const/4 v9, 0x0

    .line 15
    aput v9, v2, v7

    const/4 v10, 0x3

    .line 16
    aput v9, v2, v10

    const/4 v11, 0x4

    const/high16 v12, 0x3f800000    # 1.0f

    .line 17
    aput v12, v2, v11

    const/4 v13, 0x5

    .line 18
    aput v9, v2, v13

    .line 19
    iget-object v9, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 20
    iget v9, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    add-int/2addr v9, v1

    rem-int/lit16 v9, v9, 0x168

    iput v9, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v0, v1, v9, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    .line 22
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    sget-object v9, Lcom/theartofdev/edmodo/cropper/c;->e:[F

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 23
    iget v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    float-to-double v14, v1

    aget v1, v9, v11

    aget v16, v9, v7

    sub-float v1, v1, v16

    move/from16 p1, v8

    float-to-double v7, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 24
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    aget v17, v9, v13

    aget v18, v9, v10

    sub-float v1, v17, v18

    float-to-double v10, v1

    .line 25
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v7, v10

    .line 26
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v7

    double-to-float v1, v14

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    .line 27
    invoke-static {v1, v12}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-direct {v0, v1, v7, v8, v10}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    .line 29
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    invoke-virtual {v7, v9, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    const/4 v2, 0x4

    .line 30
    aget v2, v9, v2

    const/4 v7, 0x2

    aget v7, v9, v7

    sub-float/2addr v2, v7

    float-to-double v7, v2

    .line 31
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    aget v2, v9, v13

    const/4 v10, 0x3

    aget v10, v9, v10

    sub-float/2addr v2, v10

    float-to-double v10, v2

    .line 32
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v7, v2

    .line 33
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    float-to-double v6, v6

    .line 34
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    double-to-float v4, v6

    move/from16 v8, p1

    float-to-double v6, v8

    .line 35
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    double-to-float v2, v6

    const/4 v3, 0x0

    .line 36
    aget v6, v9, v3

    sub-float/2addr v6, v4

    const/4 v1, 0x1

    aget v7, v9, v1

    sub-float/2addr v7, v2

    aget v8, v9, v3

    add-float/2addr v8, v4

    aget v3, v9, v1

    add-float/2addr v3, v2

    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->r()V

    .line 38
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2, v5}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    .line 40
    invoke-direct {v0, v4, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView;->k(ZZ)V

    .line 41
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->i()V

    :cond_141
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->B:I

    const/4 v0, 0x1

    if-lez p1, :cond_5e

    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->C:I

    if-lez p1, :cond_5e

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 4
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->B:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->C:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5a

    sub-int/2addr p4, p2

    int-to-float p1, p4

    sub-int/2addr p5, p3

    int-to-float p2, p5

    const/4 p3, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    .line 9
    iget-object p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->U:Landroid/graphics/RectF;

    if-eqz p4, :cond_50

    .line 10
    iget p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->V:I

    iget p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->x:I

    if-eq p4, p5, :cond_36

    .line 11
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    .line 12
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    .line 13
    :cond_36
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->U:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 14
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->U:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 15
    invoke-direct {p0, p3, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->k(ZZ)V

    .line 16
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->i()V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->U:Landroid/graphics/RectF;

    goto :goto_61

    .line 18
    :cond_50
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->W:Z

    if-eqz p1, :cond_61

    .line 19
    iput-boolean p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->W:Z

    .line 20
    invoke-direct {p0, p3, p3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->k(ZZ)V

    goto :goto_61

    .line 21
    :cond_5a
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->u(Z)V

    goto :goto_61

    .line 22
    :cond_5e
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->u(Z)V

    :cond_61
    :goto_61
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 6
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_98

    if-nez p2, :cond_1d

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 8
    :cond_1d
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ge p1, v2, :cond_37

    int-to-double v5, p1

    .line 9
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v7, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    goto :goto_38

    :cond_37
    move-wide v5, v3

    .line 10
    :goto_38
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge p2, v2, :cond_50

    int-to-double v7, p2

    .line 11
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v9, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    goto :goto_51

    :cond_50
    move-wide v7, v3

    :goto_51
    cmpl-double v2, v5, v3

    if-nez v2, :cond_67

    cmpl-double v2, v7, v3

    if-eqz v2, :cond_5a

    goto :goto_67

    .line 12
    :cond_5a
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 13
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_88

    :cond_67
    :goto_67
    cmpg-double v2, v5, v7

    if-gtz v2, :cond_7a

    .line 14
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v5

    double-to-int v3, v2

    move v2, p1

    goto :goto_88

    .line 15
    :cond_7a
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v7

    double-to-int v2, v2

    move v3, p2

    .line 16
    :goto_88
    invoke-static {v0, p1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->j(III)I

    move-result p1

    .line 17
    invoke-static {v1, p2, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView;->j(III)I

    move-result p2

    .line 18
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->B:I

    .line 19
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->C:I

    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_9b

    .line 21
    :cond_98
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :goto_9b
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 9

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_f9

    .line 2
    check-cast p1, Landroid/os/Bundle;

    .line 3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->b0:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_ef

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    if-nez v0, :cond_ef

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-nez v0, :cond_ef

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->D:I

    if-nez v0, :cond_ef

    const-string v0, "LOADED_IMAGE_URI"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_65

    const-string v1, "LOADED_IMAGE_STATE_BITMAP_KEY"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 6
    sget-object v2, Lcom/theartofdev/edmodo/cropper/c;->g:Landroid/util/Pair;

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->g:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v2, v1

    goto :goto_46

    :cond_45
    move-object v2, v3

    .line 9
    :goto_46
    sput-object v3, Lcom/theartofdev/edmodo/cropper/c;->g:Landroid/util/Pair;

    if-eqz v2, :cond_5d

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5d

    const/4 v3, 0x0

    const-string v1, "LOADED_SAMPLE_SIZE"

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->q(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 12
    :cond_5d
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    if-nez v1, :cond_7e

    .line 13
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_7e

    :cond_65
    const-string v0, "LOADED_IMAGE_RESOURCE"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_71

    .line 15
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageResource(I)V

    goto :goto_7e

    :cond_71
    const-string v0, "LOADING_IMAGE_URI"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_7e

    .line 17
    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_7e
    :goto_7e
    const-string v0, "DEGREES_ROTATED"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->V:I

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    const-string v0, "INITIAL_CROP_RECT"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_a3

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_9e

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_a3

    .line 21
    :cond_9e
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    :cond_a3
    const-string v0, "CROP_WINDOW_RECT"

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-eqz v0, :cond_c0

    .line 23
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_be

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c0

    .line 24
    :cond_be
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->U:Landroid/graphics/RectF;

    .line 25
    :cond_c0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const-string v1, "CROP_SHAPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V

    const-string v0, "CROP_AUTO_ZOOM_ENABLED"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Z

    const-string v0, "CROP_MAX_ZOOM"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    const-string v0, "CROP_FLIP_HORIZONTALLY"

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    const-string v0, "CROP_FLIP_VERTICALLY"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    :cond_ef
    const-string v0, "instanceState"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_fc

    .line 31
    :cond_f9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_fc
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    const/4 v1, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->D:I

    if-ge v0, v1, :cond_12

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    .line 5
    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:Z

    if-eqz v3, :cond_31

    if-nez v2, :cond_31

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->D:I

    if-ge v3, v1, :cond_31

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a0:Landroid/net/Uri;

    .line 7
    invoke-static {v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/c;->D(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->a0:Landroid/net/Uri;

    :cond_31
    if-eqz v2, :cond_52

    .line 8
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_52

    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lcom/theartofdev/edmodo/cropper/c;->g:Landroid/util/Pair;

    const-string v3, "LOADED_IMAGE_STATE_BITMAP_KEY"

    .line 11
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_52
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->b0:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_67

    .line 13
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/b;

    if-eqz v1, :cond_67

    .line 14
    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/b;->b()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "LOADING_IMAGE_URI"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    :cond_67
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v3, "instanceState"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "LOADED_IMAGE_URI"

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->D:I

    const-string v2, "LOADED_IMAGE_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    const-string v2, "LOADED_SAMPLE_SIZE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    const-string v2, "DEGREES_ROTATED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getInitialCropWindowRect()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "INITIAL_CROP_RECT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    sget-object v1, Lcom/theartofdev/edmodo/cropper/c;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 22
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->q:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 23
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const-string v2, "CROP_WINDOW_RECT"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CROP_SHAPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Z

    const-string v2, "CROP_AUTO_ZOOM_ENABLED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    const-string v2, "CROP_MAX_ZOOM"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    const-string v2, "CROP_FLIP_HORIZONTALLY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    iget-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    const-string v2, "CROP_FLIP_VERTICALLY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-lez p3, :cond_9

    if-lez p4, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 2
    :goto_a
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->W:Z

    return-void
.end method

.method public p(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$j;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->O:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

    if-eqz v0, :cond_f

    move-object v0, p0

    move v1, p4

    move v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->t(IILcom/theartofdev/edmodo/cropper/CropImageView$j;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void

    .line 3
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mOnCropImageCompleteListener is not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAutoZoomEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Z

    if-eq v0, p1, :cond_f

    .line 2
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->I:Z

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->k(ZZ)V

    .line 4
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_f
    return-void
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setFlippedHorizontally(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    if-eq v0, p1, :cond_15

    .line 2
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    :cond_15
    return-void
.end method

.method public setFlippedVertically(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    if-eq v0, p1, :cond_15

    .line 2
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->d(FFZZ)V

    :cond_15
    return-void
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$d;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$d;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 2
    invoke-direct/range {v2 .. v7}, Lcom/theartofdev/edmodo/cropper/CropImageView;->q(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 9

    if-eqz p1, :cond_18

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropImageView;->q(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_18
    return-void
.end method

.method public setImageUriAsync(Landroid/net/Uri;)V
    .registers 5

    if-eqz p1, :cond_3e

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->b0:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/b;

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-eqz v0, :cond_15

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    :cond_15
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->e()V

    .line 5
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->U:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->V:I

    .line 7
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v2, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 8
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/theartofdev/edmodo/cropper/b;

    invoke-direct {v2, p0, p1}, Lcom/theartofdev/edmodo/cropper/b;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->b0:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/theartofdev/edmodo/cropper/b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 10
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->s()V

    :cond_3e
    return-void
.end method

.method public setMaxZoom(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    if-eq v0, p1, :cond_11

    if-lez p1, :cond_11

    .line 2
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->J:I

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->k(ZZ)V

    .line 4
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_11
    return-void
.end method

.method public setMultiTouchEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->u(Z)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->k(ZZ)V

    .line 3
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_11
    return-void
.end method

.method public setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->O:Lcom/theartofdev/edmodo/cropper/CropImageView$e;

    return-void
.end method

.method public setOnCropWindowChangedListener(Lcom/theartofdev/edmodo/cropper/CropImageView$h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->M:Lcom/theartofdev/edmodo/cropper/CropImageView$h;

    return-void
.end method

.method public setOnSetCropOverlayMovedListener(Lcom/theartofdev/edmodo/cropper/CropImageView$f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->L:Lcom/theartofdev/edmodo/cropper/CropImageView$f;

    return-void
.end method

.method public setOnSetCropOverlayReleasedListener(Lcom/theartofdev/edmodo/cropper/CropImageView$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->K:Lcom/theartofdev/edmodo/cropper/CropImageView$g;

    return-void
.end method

.method public setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->N:Lcom/theartofdev/edmodo/cropper/CropImageView$i;

    return-void
.end method

.method public setRotatedDegrees(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    if-eq v0, p1, :cond_8

    sub-int/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->o(I)V

    :cond_8
    return-void
.end method

.method public setSaveBitmapToInstanceState(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->F:Z

    return-void
.end method

.method public setScaleType(Lcom/theartofdev/edmodo/cropper/CropImageView$k;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    if-eq p1, v0, :cond_17

    .line 2
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->E:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->R:F

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->T:F

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->S:F

    .line 5
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->r()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_17
    return-void
.end method

.method public setShowCropOverlay(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:Z

    if-eq v0, p1, :cond_9

    .line 2
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->G:Z

    .line 3
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->r()V

    :cond_9
    return-void
.end method

.method public setShowProgressBar(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:Z

    if-eq v0, p1, :cond_9

    .line 2
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->H:Z

    .line 3
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->s()V

    :cond_9
    return-void
.end method

.method public setSnapRadius(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_a

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setSnapRadius(F)V

    :cond_a
    return-void
.end method

.method public t(IILcom/theartofdev/edmodo/cropper/CropImageView$j;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .registers 29

    move-object/from16 v15, p0

    move-object/from16 v14, p3

    .line 1
    iget-object v2, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e7

    .line 2
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->c0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/a;

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 6
    :cond_1f
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-eq v14, v0, :cond_26

    move/from16 v10, p1

    goto :goto_27

    :cond_26
    const/4 v10, 0x0

    :goto_27
    if-eq v14, v0, :cond_2c

    move/from16 v16, p2

    goto :goto_2e

    :cond_2c
    const/16 v16, 0x0

    .line 7
    :goto_2e
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v3, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    mul-int v5, v0, v3

    .line 8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v3, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->Q:I

    mul-int v6, v0, v3

    .line 9
    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    if-eqz v0, :cond_8d

    if-gt v3, v1, :cond_48

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    if-ne v14, v0, :cond_8d

    .line 10
    :cond_48
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v13, Lcom/theartofdev/edmodo/cropper/a;

    move-object v0, v13

    iget-object v2, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->P:Landroid/net/Uri;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v3

    iget v4, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    iget-object v7, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 12
    invoke-virtual {v7}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m()Z

    move-result v7

    iget-object v8, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 13
    invoke-virtual {v8}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v8

    iget-object v9, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 14
    invoke-virtual {v9}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v9

    iget-boolean v12, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    iget-boolean v11, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    move-object/from16 v18, v13

    move v13, v11

    move-object v11, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v11

    move/from16 v11, v16

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    invoke-direct/range {v0 .. v17}, Lcom/theartofdev/edmodo/cropper/a;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIIZZLcom/theartofdev/edmodo/cropper/CropImageView$j;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v15, p0

    iput-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->c0:Ljava/lang/ref/WeakReference;

    move-object v1, v15

    goto :goto_d3

    .line 15
    :cond_8d
    new-instance v13, Ljava/lang/ref/WeakReference;

    new-instance v12, Lcom/theartofdev/edmodo/cropper/a;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v3

    iget v4, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->y:I

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 17
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->m()Z

    move-result v5

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 18
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v6

    iget-object v0, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->p:Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .line 19
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v7

    iget-boolean v11, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->z:Z

    iget-boolean v9, v15, Lcom/theartofdev/edmodo/cropper/CropImageView;->A:Z

    move-object v0, v12

    move-object/from16 v1, p0

    move v8, v10

    move/from16 v17, v9

    move/from16 v9, v16

    move v10, v11

    move/from16 v11, v17

    move-object/from16 v20, v12

    move-object/from16 v12, p3

    move-object v14, v13

    move-object/from16 v13, p4

    move-object/from16 v21, v14

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-direct/range {v0 .. v15}, Lcom/theartofdev/edmodo/cropper/a;-><init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIIZZLcom/theartofdev/edmodo/cropper/CropImageView$j;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->c0:Ljava/lang/ref/WeakReference;

    .line 20
    :goto_d3
    iget-object v0, v1, Lcom/theartofdev/edmodo/cropper/CropImageView;->c0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/a;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->s()V

    goto :goto_e8

    :cond_e7
    move-object v1, v15

    :goto_e8
    return-void
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.a (com.theartofdev.edmodo.cropper.CropImageView$a)
.class Lcom/theartofdev/edmodo/cropper/CropImageView$a;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lcom/theartofdev/edmodo/cropper/CropOverlayView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/theartofdev/edmodo/cropper/CropImageView;


# direct methods
.method constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->a:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->a:Lcom/theartofdev/edmodo/cropper/CropImageView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Lcom/theartofdev/edmodo/cropper/CropImageView;ZZ)V

    .line 2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->a:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->b(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$g;

    move-result-object v0

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    .line 3
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->a:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView$g;->a(Landroid/graphics/Rect;)V

    .line 4
    :cond_19
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->a:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->c(Lcom/theartofdev/edmodo/cropper/CropImageView;)Lcom/theartofdev/edmodo/cropper/CropImageView$f;

    move-result-object v0

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2c

    .line 5
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;->a:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView$f;->a(Landroid/graphics/Rect;)V

    :cond_2c
    return-void
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.b (com.theartofdev.edmodo.cropper.CropImageView$b)
.class public Lcom/theartofdev/edmodo/cropper/CropImageView$b;
.super Ljava/lang/Object;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final o:Landroid/graphics/Bitmap;

.field private final p:Landroid/net/Uri;

.field private final q:Landroid/graphics/Bitmap;

.field private final r:Landroid/net/Uri;

.field private final s:Ljava/lang/Exception;

.field private final t:[F

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/Rect;

.field private final w:I

.field private final x:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->o:Landroid/graphics/Bitmap;

    .line 3
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->p:Landroid/net/Uri;

    .line 4
    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->q:Landroid/graphics/Bitmap;

    .line 5
    iput-object p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->r:Landroid/net/Uri;

    .line 6
    iput-object p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->s:Ljava/lang/Exception;

    .line 7
    iput-object p6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->t:[F

    .line 8
    iput-object p7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->u:Landroid/graphics/Rect;

    .line 9
    iput-object p8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->v:Landroid/graphics/Rect;

    .line 10
    iput p9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->w:I

    .line 11
    iput p10, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->x:I

    return-void
.end method


# virtual methods
.method public A()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->v:Landroid/graphics/Rect;

    return-object v0
.end method

.method public h()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->t:[F

    return-object v0
.end method

.method public t()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->u:Landroid/graphics/Rect;

    return-object v0
.end method

.method public v()Ljava/lang/Exception;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->s:Ljava/lang/Exception;

    return-object v0
.end method

.method public w()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->p:Landroid/net/Uri;

    return-object v0
.end method

.method public x()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->w:I

    return v0
.end method

.method public y()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->x:I

    return v0
.end method

.method public z()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->r:Landroid/net/Uri;

    return-object v0
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.c (com.theartofdev.edmodo.cropper.CropImageView$c)
.class public final enum Lcom/theartofdev/edmodo/cropper/CropImageView$c;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/theartofdev/edmodo/cropper/CropImageView$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

.field public static final enum p:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

.field private static final synthetic q:[Lcom/theartofdev/edmodo/cropper/CropImageView$c;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    .line 2
    new-instance v1, Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    const-string v3, "OVAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->q:[Lcom/theartofdev/edmodo/cropper/CropImageView$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$c;
    .registers 2

    .line 1
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    return-object p0
.end method

.method public static values()[Lcom/theartofdev/edmodo/cropper/CropImageView$c;
    .registers 1

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->q:[Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    invoke-virtual {v0}, [Lcom/theartofdev/edmodo/cropper/CropImageView$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    return-object v0
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.d (com.theartofdev.edmodo.cropper.CropImageView$d)
.class public final enum Lcom/theartofdev/edmodo/cropper/CropImageView$d;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/theartofdev/edmodo/cropper/CropImageView$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

.field public static final enum p:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

.field public static final enum q:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

.field private static final synthetic r:[Lcom/theartofdev/edmodo/cropper/CropImageView$d;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    .line 2
    new-instance v1, Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    const-string v3, "ON_TOUCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    .line 3
    new-instance v3, Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    const-string v5, "ON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/theartofdev/edmodo/cropper/CropImageView$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->q:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->r:[Lcom/theartofdev/edmodo/cropper/CropImageView$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$d;
    .registers 2

    .line 1
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    return-object p0
.end method

.method public static values()[Lcom/theartofdev/edmodo/cropper/CropImageView$d;
    .registers 1

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->r:[Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    invoke-virtual {v0}, [Lcom/theartofdev/edmodo/cropper/CropImageView$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    return-object v0
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.e (com.theartofdev.edmodo.cropper.CropImageView$e)
.class public interface abstract Lcom/theartofdev/edmodo/cropper/CropImageView$e;
.super Ljava/lang/Object;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract x(Lcom/theartofdev/edmodo/cropper/CropImageView;Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.f (com.theartofdev.edmodo.cropper.CropImageView$f)
.class public interface abstract Lcom/theartofdev/edmodo/cropper/CropImageView$f;
.super Ljava/lang/Object;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# virtual methods
.method public abstract a(Landroid/graphics/Rect;)V
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.g (com.theartofdev.edmodo.cropper.CropImageView$g)
.class public interface abstract Lcom/theartofdev/edmodo/cropper/CropImageView$g;
.super Ljava/lang/Object;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation


# virtual methods
.method public abstract a(Landroid/graphics/Rect;)V
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.h (com.theartofdev.edmodo.cropper.CropImageView$h)
.class public interface abstract Lcom/theartofdev/edmodo/cropper/CropImageView$h;
.super Ljava/lang/Object;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "h"
.end annotation


# virtual methods
.method public abstract a()V
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.i (com.theartofdev.edmodo.cropper.CropImageView$i)
.class public interface abstract Lcom/theartofdev/edmodo/cropper/CropImageView$i;
.super Ljava/lang/Object;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "i"
.end annotation


# virtual methods
.method public abstract w(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.j (com.theartofdev.edmodo.cropper.CropImageView$j)
.class public final enum Lcom/theartofdev/edmodo/cropper/CropImageView$j;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/theartofdev/edmodo/cropper/CropImageView$j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field public static final enum p:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field public static final enum q:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field public static final enum r:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field public static final enum s:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field private static final synthetic t:[Lcom/theartofdev/edmodo/cropper/CropImageView$j;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    .line 2
    new-instance v1, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const-string v3, "SAMPLING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    .line 3
    new-instance v3, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const-string v5, "RESIZE_INSIDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->q:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    .line 4
    new-instance v5, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const-string v7, "RESIZE_FIT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->r:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    .line 5
    new-instance v7, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const-string v9, "RESIZE_EXACT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->s:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->t:[Lcom/theartofdev/edmodo/cropper/CropImageView$j;

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

.method public static valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$j;
    .registers 2

    .line 1
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    return-object p0
.end method

.method public static values()[Lcom/theartofdev/edmodo/cropper/CropImageView$j;
    .registers 1

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->t:[Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    invoke-virtual {v0}, [Lcom/theartofdev/edmodo/cropper/CropImageView$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    return-object v0
.end method

###### Class com.theartofdev.edmodo.cropper.CropImageView.k (com.theartofdev.edmodo.cropper.CropImageView$k)
.class public final enum Lcom/theartofdev/edmodo/cropper/CropImageView$k;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/theartofdev/edmodo/cropper/CropImageView$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

.field public static final enum p:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

.field public static final enum q:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

.field public static final enum r:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

.field private static final synthetic s:[Lcom/theartofdev/edmodo/cropper/CropImageView$k;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    const-string v1, "FIT_CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    .line 2
    new-instance v1, Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    .line 3
    new-instance v3, Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    const-string v5, "CENTER_CROP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/theartofdev/edmodo/cropper/CropImageView$k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->q:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    .line 4
    new-instance v5, Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    const-string v7, "CENTER_INSIDE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/theartofdev/edmodo/cropper/CropImageView$k;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->r:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->s:[Lcom/theartofdev/edmodo/cropper/CropImageView$k;

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

.method public static valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$k;
    .registers 2

    .line 1
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    return-object p0
.end method

.method public static values()[Lcom/theartofdev/edmodo/cropper/CropImageView$k;
    .registers 1

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->s:[Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    invoke-virtual {v0}, [Lcom/theartofdev/edmodo/cropper/CropImageView$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    return-object v0
.end method
