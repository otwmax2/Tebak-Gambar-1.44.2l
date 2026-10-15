###### Class com.theartofdev.edmodo.cropper.f (com.theartofdev.edmodo.cropper.f)
.class public Lcom/theartofdev/edmodo/cropper/f;
.super Ljava/lang/Object;
.source "CropImageOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/theartofdev/edmodo/cropper/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:I

.field public C:F

.field public D:I

.field public E:F

.field public F:F

.field public G:F

.field public H:I

.field public I:F

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:Ljava/lang/CharSequence;

.field public S:I

.field public T:Landroid/net/Uri;

.field public U:Landroid/graphics/Bitmap$CompressFormat;

.field public V:I

.field public W:I

.field public X:I

.field public Y:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

.field public Z:Z

.field public a0:Landroid/graphics/Rect;

.field public b0:I

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:I

.field public g0:Z

.field public h0:Z

.field public i0:Ljava/lang/CharSequence;

.field public j0:I

.field public o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

.field public p:F

.field public q:F

.field public r:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

.field public s:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:F

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/f$a;

    invoke-direct {v0}, Lcom/theartofdev/edmodo/cropper/f$a;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/f;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    const/4 v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/f;->p:F

    const/high16 v3, 0x41c00000    # 24.0f

    .line 5
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/f;->q:F

    .line 6
    sget-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    iput-object v3, p0, Lcom/theartofdev/edmodo/cropper/f;->r:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    .line 7
    sget-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    iput-object v3, p0, Lcom/theartofdev/edmodo/cropper/f;->s:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    .line 8
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/f;->t:Z

    .line 9
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/f;->u:Z

    .line 10
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/f;->v:Z

    const/4 v3, 0x0

    .line 11
    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->w:Z

    const/4 v4, 0x4

    .line 12
    iput v4, p0, Lcom/theartofdev/edmodo/cropper/f;->x:I

    const v4, 0x3dcccccd    # 0.1f

    .line 13
    iput v4, p0, Lcom/theartofdev/edmodo/cropper/f;->y:F

    .line 14
    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->z:Z

    .line 15
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->A:I

    .line 16
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/f;->B:I

    .line 17
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/f;->C:F

    const/16 v2, 0xaa

    const/16 v4, 0xff

    .line 18
    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iput v5, p0, Lcom/theartofdev/edmodo/cropper/f;->D:I

    const/high16 v5, 0x40000000    # 2.0f

    .line 19
    invoke-static {v1, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lcom/theartofdev/edmodo/cropper/f;->E:F

    const/high16 v5, 0x40a00000    # 5.0f

    .line 20
    invoke-static {v1, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lcom/theartofdev/edmodo/cropper/f;->F:F

    const/high16 v5, 0x41600000    # 14.0f

    .line 21
    invoke-static {v1, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lcom/theartofdev/edmodo/cropper/f;->G:F

    const/4 v5, -0x1

    .line 22
    iput v5, p0, Lcom/theartofdev/edmodo/cropper/f;->H:I

    const/high16 v6, 0x3f800000    # 1.0f

    .line 23
    invoke-static {v1, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    iput v6, p0, Lcom/theartofdev/edmodo/cropper/f;->I:F

    .line 24
    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/f;->J:I

    const/16 v2, 0x77

    .line 25
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcom/theartofdev/edmodo/cropper/f;->K:I

    const/high16 v2, 0x42280000    # 42.0f

    .line 26
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/theartofdev/edmodo/cropper/f;->L:I

    .line 27
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->M:I

    const/16 v0, 0x28

    .line 28
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->N:I

    .line 29
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->O:I

    const v0, 0x1869f

    .line 30
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->P:I

    .line 31
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->Q:I

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->R:Ljava/lang/CharSequence;

    .line 33
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/f;->S:I

    .line 34
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->T:Landroid/net/Uri;

    .line 35
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->U:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    .line 36
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->V:I

    .line 37
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/f;->W:I

    .line 38
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/f;->X:I

    .line 39
    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/f;->Y:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    .line 40
    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->Z:Z

    const/4 v2, 0x0

    .line 41
    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/f;->a0:Landroid/graphics/Rect;

    .line 42
    iput v5, p0, Lcom/theartofdev/edmodo/cropper/f;->b0:I

    .line 43
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/f;->c0:Z

    .line 44
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/f;->d0:Z

    .line 45
    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->e0:Z

    .line 46
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->f0:I

    .line 47
    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->g0:Z

    .line 48
    iput-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/f;->h0:Z

    .line 49
    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/f;->i0:Ljava/lang/CharSequence;

    .line 50
    iput v3, p0, Lcom/theartofdev/edmodo/cropper/f;->j0:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->p:F

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->q:F

    .line 55
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->r:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    .line 56
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$k;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->s:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->t:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->u:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->v:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->w:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->x:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->y:F

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, 0x1

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->z:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->A:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->B:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->C:F

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->D:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->E:F

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->F:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->G:F

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->H:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->I:F

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->J:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->K:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->L:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->M:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->N:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->O:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->P:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->Q:I

    .line 81
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->R:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->S:I

    .line 83
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->T:Landroid/net/Uri;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->U:Landroid/graphics/Bitmap$CompressFormat;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->V:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->W:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->X:I

    .line 88
    invoke-static {}, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->values()[Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->Y:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_12c

    const/4 v0, 0x1

    goto :goto_12d

    :cond_12c
    const/4 v0, 0x0

    :goto_12d
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->Z:Z

    .line 90
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->a0:Landroid/graphics/Rect;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->b0:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_14b

    const/4 v0, 0x1

    goto :goto_14c

    :cond_14b
    const/4 v0, 0x0

    :goto_14c
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->c0:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_156

    const/4 v0, 0x1

    goto :goto_157

    :cond_156
    const/4 v0, 0x0

    :goto_157
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->d0:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_161

    const/4 v0, 0x1

    goto :goto_162

    :cond_161
    const/4 v0, 0x0

    :goto_162
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->e0:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/f;->f0:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_172

    const/4 v0, 0x1

    goto :goto_173

    :cond_172
    const/4 v0, 0x0

    :goto_173
    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->g0:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_17c

    goto :goto_17d

    :cond_17c
    const/4 v1, 0x0

    :goto_17d
    iput-boolean v1, p0, Lcom/theartofdev/edmodo/cropper/f;->h0:Z

    .line 98
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->i0:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/f;->j0:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .registers 7

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->x:I

    if-ltz v0, :cond_cd

    .line 2
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->q:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_c5

    .line 3
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->y:F

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_bd

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v4

    if-gez v0, :cond_bd

    .line 4
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->A:I

    const-string v2, "Cannot set aspect ratio value to a number less than or equal to 0."

    if-lez v0, :cond_b7

    .line 5
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->B:I

    if-lez v0, :cond_b1

    .line 6
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->C:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_a9

    .line 7
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->E:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_a1

    .line 8
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->I:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_99

    .line 9
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->M:I

    if-ltz v0, :cond_91

    .line 10
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->N:I

    if-ltz v0, :cond_89

    .line 11
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/f;->O:I

    if-ltz v1, :cond_81

    .line 12
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/f;->P:I

    if-lt v2, v0, :cond_79

    .line 13
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->Q:I

    if-lt v0, v1, :cond_71

    .line 14
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->W:I

    if-ltz v0, :cond_69

    .line 15
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->X:I

    if-ltz v0, :cond_61

    .line 16
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->f0:I

    if-ltz v0, :cond_59

    const/16 v1, 0x168

    if-gt v0, v1, :cond_59

    return-void

    .line 17
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set rotation degrees value to a number < 0 or > 360"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set request height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set request width value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max crop result height to smaller value than min crop result height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max crop result width to smaller value than min crop result width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop result height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop result width value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop window height value to a number < 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set guidelines thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set corner thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set line thickness value to a number less than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set initial crop window padding value to a number < 0 or >= 0.5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_c5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set touch radius value to a number <= 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_cd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max zoom to a number < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->p:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->q:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->r:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->s:Lcom/theartofdev/edmodo/cropper/CropImageView$k;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->t:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->u:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->v:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->w:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 12
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->z:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->B:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->C:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 16
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->E:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 18
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->F:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->G:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 20
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->I:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 22
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->J:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->K:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->L:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->M:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->N:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->O:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->P:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->Q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->R:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 31
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->S:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->T:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->U:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->V:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->W:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->X:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->Y:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->Z:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->a0:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->b0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->c0:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 42
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->d0:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->e0:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/f;->f0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->g0:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 46
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/f;->h0:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/f;->i0:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 48
    iget p2, p0, Lcom/theartofdev/edmodo/cropper/f;->j0:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.theartofdev.edmodo.cropper.f.a (com.theartofdev.edmodo.cropper.f$a)
.class final Lcom/theartofdev/edmodo/cropper/f$a;
.super Ljava/lang/Object;
.source "CropImageOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/theartofdev/edmodo/cropper/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/theartofdev/edmodo/cropper/f;
    .registers 3

    .line 1
    new-instance v0, Lcom/theartofdev/edmodo/cropper/f;

    invoke-direct {v0, p1}, Lcom/theartofdev/edmodo/cropper/f;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/theartofdev/edmodo/cropper/f;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/theartofdev/edmodo/cropper/f;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/f$a;->a(Landroid/os/Parcel;)Lcom/theartofdev/edmodo/cropper/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/f$a;->b(I)[Lcom/theartofdev/edmodo/cropper/f;

    move-result-object p1

    return-object p1
.end method
