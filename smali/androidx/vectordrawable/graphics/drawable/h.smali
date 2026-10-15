###### Class androidx.vectordrawable.graphics.drawable.h (androidx.vectordrawable.graphics.drawable.h)
.class public Landroidx/vectordrawable/graphics/drawable/h;
.super Landroidx/vectordrawable/graphics/drawable/g;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/h$c;,
        Landroidx/vectordrawable/graphics/drawable/h$b;,
        Landroidx/vectordrawable/graphics/drawable/h$f;,
        Landroidx/vectordrawable/graphics/drawable/h$d;,
        Landroidx/vectordrawable/graphics/drawable/h$e;,
        Landroidx/vectordrawable/graphics/drawable/h$g;,
        Landroidx/vectordrawable/graphics/drawable/h$h;,
        Landroidx/vectordrawable/graphics/drawable/h$i;
    }
.end annotation


# static fields
.field static final y:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private p:Landroidx/vectordrawable/graphics/drawable/h$h;

.field private q:Landroid/graphics/PorterDuffColorFilter;

.field private r:Landroid/graphics/ColorFilter;

.field private s:Z

.field private t:Z

.field private u:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final v:[F

.field private final w:Landroid/graphics/Matrix;

.field private final x:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/vectordrawable/graphics/drawable/h;->y:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/g;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->t:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->v:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->w:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h$h;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/h$h;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/h$h;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/g;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->t:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->v:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->w:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    .line 13
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/vectordrawable/graphics/drawable/h;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/h;
    .registers 9

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_23

    .line 2
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/h;-><init>()V

    .line 3
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/h;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    .line 4
    new-instance p0, Landroidx/vectordrawable/graphics/drawable/h$i;

    iget-object p1, v0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/h$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object p0, v0, Landroidx/vectordrawable/graphics/drawable/h;->u:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0

    .line 6
    :cond_23
    :try_start_23
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 8
    :goto_2b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_36

    const/4 v5, 0x1

    if-eq v3, v5, :cond_36

    goto :goto_2b

    :cond_36
    if-ne v3, v4, :cond_3d

    .line 9
    invoke-static {p0, p1, v2, p2}, Landroidx/vectordrawable/graphics/drawable/h;->c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/h;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3d
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_45} :catch_4a
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_45} :catch_45

    :catch_45
    move-exception p0

    .line 11
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    :catch_4a
    move-exception p0

    .line 12
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/h;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/h;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/vectordrawable/graphics/drawable/h;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    .line 2
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    .line 3
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    iget-object v3, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->h:Landroidx/vectordrawable/graphics/drawable/h$d;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x1

    :goto_19
    if-eq v3, v5, :cond_ce

    .line 7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v4, :cond_24

    if-eq v3, v8, :cond_ce

    :cond_24
    const/4 v7, 0x2

    const-string v9, "group"

    if-ne v3, v7, :cond_b9

    .line 8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/vectordrawable/graphics/drawable/h$d;

    const-string v8, "path"

    .line 10
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 11
    new-instance v3, Landroidx/vectordrawable/graphics/drawable/h$c;

    invoke-direct {v3}, Landroidx/vectordrawable/graphics/drawable/h$c;-><init>()V

    .line 12
    invoke-virtual {v3, p1, p3, p4, p2}, Landroidx/vectordrawable/graphics/drawable/h$c;->g(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 13
    iget-object v6, v7, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/h$f;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_57

    .line 15
    iget-object v6, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->p:Lo/a;

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/h$f;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    const/4 v6, 0x0

    .line 16
    iget v7, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/h$f;->d:I

    or-int/2addr v3, v7

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    goto :goto_c8

    :cond_60
    const-string v8, "clip-path"

    .line 17
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 18
    new-instance v3, Landroidx/vectordrawable/graphics/drawable/h$b;

    invoke-direct {v3}, Landroidx/vectordrawable/graphics/drawable/h$b;-><init>()V

    .line 19
    invoke-virtual {v3, p1, p3, p4, p2}, Landroidx/vectordrawable/graphics/drawable/h$b;->e(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 20
    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/h$f;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_84

    .line 22
    iget-object v7, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->p:Lo/a;

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/h$f;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_84
    iget v7, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/h$f;->d:I

    or-int/2addr v3, v7

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    goto :goto_c8

    .line 24
    :cond_8c
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 25
    new-instance v3, Landroidx/vectordrawable/graphics/drawable/h$d;

    invoke-direct {v3}, Landroidx/vectordrawable/graphics/drawable/h$d;-><init>()V

    .line 26
    invoke-virtual {v3, p1, p3, p4, p2}, Landroidx/vectordrawable/graphics/drawable/h$d;->c(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 27
    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/h$d;->getGroupName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b1

    .line 30
    iget-object v7, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->p:Lo/a;

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/h$d;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_b1
    iget v7, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/h$d;->k:I

    or-int/2addr v3, v7

    iput v3, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    goto :goto_c8

    :cond_b9
    if-ne v3, v8, :cond_c8

    .line 32
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 35
    :cond_c8
    :goto_c8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_19

    :cond_ce
    if-nez v6, :cond_d1

    return-void

    .line 36
    :cond_d1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "no path defined"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_da

    :goto_d9
    throw p1

    :goto_da
    goto :goto_d9
.end method

.method private f()Z
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_15

    .line 2
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h;->isAutoMirrored()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 3
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private static g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    packed-switch p0, :pswitch_data_20

    return-object p1

    .line 1
    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 2
    :pswitch_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 3
    :pswitch_14
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 4
    :cond_17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 5
    :cond_1a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 6
    :cond_1d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_20
    .packed-switch 0xe
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    .line 2
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    const-string v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    .line 3
    invoke-static {p1, p2, v2, v3, v4}, Landroidx/core/content/res/k;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 4
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroidx/vectordrawable/graphics/drawable/h;->g(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v2, "tint"

    const/4 v3, 0x1

    .line 5
    invoke-static {p1, p2, p3, v2, v3}, Landroidx/core/content/res/k;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_1f

    .line 6
    iput-object p3, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    :cond_1f
    const/4 p3, 0x5

    .line 7
    iget-boolean v2, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->e:Z

    const-string v3, "autoMirrored"

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/core/content/res/k;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p3

    iput-boolean p3, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->e:Z

    const/4 p3, 0x7

    .line 8
    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->k:F

    const-string v2, "viewportWidth"

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->k:F

    const/16 p3, 0x8

    .line 9
    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->l:F

    const-string v2, "viewportHeight"

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->l:F

    .line 10
    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->k:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_d6

    cmpg-float p3, p3, v2

    if-lez p3, :cond_bb

    const/4 p3, 0x3

    .line 11
    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->i:F

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->i:F

    const/4 p3, 0x2

    .line 12
    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->j:F

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->j:F

    .line 13
    iget v0, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->i:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_a0

    cmpg-float p3, p3, v2

    if-lez p3, :cond_85

    const/4 p3, 0x4

    .line 14
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/h$g;->getAlpha()F

    move-result v0

    const-string v2, "alpha"

    .line 15
    invoke-static {p1, p2, v2, p3, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    .line 16
    invoke-virtual {v1, p2}, Landroidx/vectordrawable/graphics/drawable/h$g;->setAlpha(F)V

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 18
    iput-object p1, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->n:Ljava/lang/String;

    .line 19
    iget-object p2, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->p:Lo/a;

    invoke-virtual {p2, p1, v1}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    return-void

    .line 20
    :cond_85
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_a0
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_bb
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 23
    :cond_d6
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/g;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 2
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)Z

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/g;->clearColorFilter()V

    return-void
.end method

.method d(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$g;->p:Lo/a;

    invoke-virtual {v0, p1}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_db

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1f

    goto/16 :goto_db

    .line 5
    :cond_1f
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->r:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_25

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    :cond_25
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h;->w:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h;->w:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h;->v:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h;->v:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 9
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/h;->v:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 10
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/h;->v:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 11
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/h;->v:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_60

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_64

    :cond_60
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    :cond_64
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    .line 13
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    .line 14
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_db

    if-gtz v3, :cond_87

    goto :goto_db

    .line 16
    :cond_87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 17
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h;->f()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 19
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    .line 20
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 21
    :cond_ab
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 22
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    invoke-virtual {v2, v1, v3}, Landroidx/vectordrawable/graphics/drawable/h$h;->c(II)V

    .line 23
    iget-boolean v2, p0, Landroidx/vectordrawable/graphics/drawable/h;->t:Z

    if-nez v2, :cond_bf

    .line 24
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    invoke-virtual {v2, v1, v3}, Landroidx/vectordrawable/graphics/drawable/h$h;->j(II)V

    goto :goto_d1

    .line 25
    :cond_bf
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/h$h;->b()Z

    move-result v2

    if-nez v2, :cond_d1

    .line 26
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    invoke-virtual {v2, v1, v3}, Landroidx/vectordrawable/graphics/drawable/h$h;->j(II)V

    .line 27
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/h$h;->i()V

    .line 28
    :cond_d1
    :goto_d1
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h;->x:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Landroidx/vectordrawable/graphics/drawable/h$h;->d(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 29
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_db
    :goto_db
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/h$g;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 3
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/h$h;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->r:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_16

    .line 2
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h$i;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/h$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 3
    :cond_16
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    .line 4
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    return-object v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/g;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/h$g;->j:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/h$g;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/g;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/g;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, -0x3

    return v0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/g;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getState()[I
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/g;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/g;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method h(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/vectordrawable/graphics/drawable/h;->t:Z

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/h;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    .line 7
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-direct {v1}, Landroidx/vectordrawable/graphics/drawable/h$g;-><init>()V

    .line 8
    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    .line 9
    sget-object v1, Landroidx/vectordrawable/graphics/drawable/a;->a:[I

    invoke-static {p1, p4, p3, v1}, Landroidx/core/content/res/k;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 10
    invoke-direct {p0, v1, p2, p4}, Landroidx/vectordrawable/graphics/drawable/h;->i(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->k:Z

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/vectordrawable/graphics/drawable/h;->e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 15
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    iget-object p3, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/vectordrawable/graphics/drawable/h;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 3
    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    iget-boolean v0, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->e:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 3
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    if-eqz v0, :cond_26

    .line 4
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/h$h;->g()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_26

    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    :goto_29
    return v0
.end method

.method j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    if-eqz p2, :cond_14

    if-nez p3, :cond_5

    goto :goto_14

    .line 1
    :cond_5
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h;->getState()[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 2
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p2, p1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p2

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic jumpToCurrentState()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/g;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 3
    :cond_8
    iget-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->s:Z

    if-nez v0, :cond_1e

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    .line 4
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h$h;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/h$h;-><init>(Landroidx/vectordrawable/graphics/drawable/h$h;)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->s:Z

    :cond_1e
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    .line 4
    iget-object v2, v1, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    iget-object v4, v1, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_21

    .line 5
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v0, v2, v4}, Landroidx/vectordrawable/graphics/drawable/h;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h;->invalidateSelf()V

    const/4 v0, 0x1

    .line 7
    :cond_21
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/h$h;->g()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1, p1}, Landroidx/vectordrawable/graphics/drawable/h$h;->h([I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 8
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h;->invalidateSelf()V

    goto :goto_32

    :cond_31
    move v3, v0

    :goto_32
    return v3
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 3
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/h$g;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 4
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/h$g;->setRootAlpha(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h;->invalidateSelf()V

    :cond_1c
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    iput-boolean p1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->e:Z

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/g;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/g;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 4
    :cond_8
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h;->r:Landroid/graphics/ColorFilter;

    .line 5
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/g;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/g;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/vectordrawable/graphics/drawable/g;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/g;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setTint(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->n(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 3
    :cond_8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/h;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    .line 4
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1d

    .line 5
    iput-object p1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    .line 6
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Landroidx/vectordrawable/graphics/drawable/h;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h;->invalidateSelf()V

    :cond_1d
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h;->p:Landroidx/vectordrawable/graphics/drawable/h$h;

    .line 4
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1d

    .line 5
    iput-object p1, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/vectordrawable/graphics/drawable/h;->j(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h;->q:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h;->invalidateSelf()V

    :cond_1d
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 3
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class androidx.vectordrawable.graphics.drawable.h.a (androidx.vectordrawable.graphics.drawable.h$a)
.class synthetic Landroidx/vectordrawable/graphics/drawable/h$a;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class androidx.vectordrawable.graphics.drawable.h.b (androidx.vectordrawable.graphics.drawable.h$b)
.class Landroidx/vectordrawable/graphics/drawable/h$b;
.super Landroidx/vectordrawable/graphics/drawable/h$f;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$f;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/h$b;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/h$f;-><init>(Landroidx/vectordrawable/graphics/drawable/h$f;)V

    return-void
.end method

.method private f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2
    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->b:Ljava/lang/String;

    :cond_9
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 4
    invoke-static {v1}, Landroidx/core/graphics/d;->d(Ljava/lang/String;)[Landroidx/core/graphics/d$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    :cond_16
    const/4 v1, 0x2

    const-string v2, "fillType"

    .line 5
    invoke-static {p1, p2, v2, v1, v0}, Landroidx/core/content/res/k;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->c:I

    return-void
.end method


# virtual methods
.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public e(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    const-string v0, "pathData"

    .line 1
    invoke-static {p4, v0}, Landroidx/core/content/res/k;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/a;->d:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/content/res/k;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p4}, Landroidx/vectordrawable/graphics/drawable/h$b;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

###### Class androidx.vectordrawable.graphics.drawable.h.c (androidx.vectordrawable.graphics.drawable.h$c)
.class Landroidx/vectordrawable/graphics/drawable/h$c;
.super Landroidx/vectordrawable/graphics/drawable/h$f;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private e:[I

.field f:Landroidx/core/content/res/d;

.field g:F

.field h:Landroidx/core/content/res/d;

.field i:F

.field j:F

.field k:F

.field l:F

.field m:F

.field n:Landroid/graphics/Paint$Cap;

.field o:Landroid/graphics/Paint$Join;

.field p:F


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->i:F

    .line 4
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->j:F

    .line 5
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->k:F

    .line 6
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->l:F

    .line 7
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->m:F

    .line 8
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->n:Landroid/graphics/Paint$Cap;

    .line 9
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 10
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->p:F

    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/h$c;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/h$f;-><init>(Landroidx/vectordrawable/graphics/drawable/h$f;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->i:F

    .line 14
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->j:F

    .line 15
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->k:F

    .line 16
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->l:F

    .line 17
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->m:F

    .line 18
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->n:Landroid/graphics/Paint$Cap;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->p:F

    .line 21
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->e:[I

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->e:[I

    .line 22
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->f:Landroidx/core/content/res/d;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->f:Landroidx/core/content/res/d;

    .line 23
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->g:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->g:F

    .line 24
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->i:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->i:F

    .line 25
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->h:Landroidx/core/content/res/d;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->h:Landroidx/core/content/res/d;

    .line 26
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$f;->c:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->c:I

    .line 27
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->j:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->j:F

    .line 28
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->k:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->k:F

    .line 29
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->l:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->l:F

    .line 30
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->m:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->m:F

    .line 31
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->n:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->n:Landroid/graphics/Paint$Cap;

    .line 32
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->o:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->o:Landroid/graphics/Paint$Join;

    .line 33
    iget p1, p1, Landroidx/vectordrawable/graphics/drawable/h$c;->p:F

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->p:F

    return-void
.end method

.method private e(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .registers 4

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    return-object p2

    .line 1
    :cond_9
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p1

    .line 2
    :cond_c
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p1

    .line 3
    :cond_f
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p1
.end method

.method private f(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .registers 4

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    return-object p2

    .line 1
    :cond_9
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p1

    .line 2
    :cond_c
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p1

    .line 3
    :cond_f
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p1
.end method

.method private h(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .registers 11

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->e:[I

    const-string v0, "pathData"

    .line 2
    invoke-static {p2, v0}, Landroidx/core/content/res/k;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->b:Ljava/lang/String;

    :cond_15
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 6
    invoke-static {v0}, Landroidx/core/graphics/d;->d(Ljava/lang/String;)[Landroidx/core/graphics/d$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    :cond_22
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "fillColor"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 7
    invoke-static/range {v1 .. v6}, Landroidx/core/content/res/k;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->h:Landroidx/core/content/res/d;

    const/16 v0, 0xc

    .line 8
    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->j:F

    const-string v2, "fillAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->j:F

    const/16 v0, 0x8

    const-string v1, "strokeLineCap"

    const/4 v2, -0x1

    .line 9
    invoke-static {p1, p2, v1, v0, v2}, Landroidx/core/content/res/k;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->n:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v1}, Landroidx/vectordrawable/graphics/drawable/h$c;->e(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->n:Landroid/graphics/Paint$Cap;

    const/16 v0, 0x9

    const-string v1, "strokeLineJoin"

    .line 11
    invoke-static {p1, p2, v1, v0, v2}, Landroidx/core/content/res/k;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 12
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->o:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Landroidx/vectordrawable/graphics/drawable/h$c;->f(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->o:Landroid/graphics/Paint$Join;

    const/16 v0, 0xa

    .line 13
    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->p:F

    const-string v2, "strokeMiterLimit"

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->p:F

    const/4 v5, 0x3

    const-string v4, "strokeColor"

    move-object v1, p1

    move-object v2, p2

    .line 14
    invoke-static/range {v1 .. v6}, Landroidx/core/content/res/k;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/d;

    move-result-object p3

    iput-object p3, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->f:Landroidx/core/content/res/d;

    const/16 p3, 0xb

    .line 15
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->i:F

    const-string v1, "strokeAlpha"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->i:F

    const/4 p3, 0x4

    .line 16
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->g:F

    const-string v1, "strokeWidth"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->g:F

    const/4 p3, 0x6

    .line 17
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->l:F

    const-string v1, "trimPathEnd"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->l:F

    const/4 p3, 0x7

    .line 18
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->m:F

    const-string v1, "trimPathOffset"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->m:F

    const/4 p3, 0x5

    .line 19
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->k:F

    const-string v1, "trimPathStart"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->k:F

    const/16 p3, 0xd

    .line 20
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->c:I

    const-string v1, "fillType"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/res/k;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->h:Landroidx/core/content/res/d;

    invoke-virtual {v0}, Landroidx/core/content/res/d;->i()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->f:Landroidx/core/content/res/d;

    invoke-virtual {v0}, Landroidx/core/content/res/d;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public b([I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->h:Landroidx/core/content/res/d;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/d;->j([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->f:Landroidx/core/content/res/d;

    invoke-virtual {v1, p1}, Landroidx/core/content/res/d;->j([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public g(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .line 1
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/a;->c:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/content/res/k;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p4, p3}, Landroidx/vectordrawable/graphics/drawable/h$c;->h(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method getFillAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->j:F

    return v0
.end method

.method getFillColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->h:Landroidx/core/content/res/d;

    invoke-virtual {v0}, Landroidx/core/content/res/d;->e()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->i:F

    return v0
.end method

.method getStrokeColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->f:Landroidx/core/content/res/d;

    invoke-virtual {v0}, Landroidx/core/content/res/d;->e()I

    move-result v0

    return v0
.end method

.method getStrokeWidth()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->g:F

    return v0
.end method

.method getTrimPathEnd()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->l:F

    return v0
.end method

.method getTrimPathOffset()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->m:F

    return v0
.end method

.method getTrimPathStart()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->k:F

    return v0
.end method

.method setFillAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->j:F

    return-void
.end method

.method setFillColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->h:Landroidx/core/content/res/d;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/d;->k(I)V

    return-void
.end method

.method setStrokeAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->i:F

    return-void
.end method

.method setStrokeColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->f:Landroidx/core/content/res/d;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/d;->k(I)V

    return-void
.end method

.method setStrokeWidth(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->g:F

    return-void
.end method

.method setTrimPathEnd(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->l:F

    return-void
.end method

.method setTrimPathOffset(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->m:F

    return-void
.end method

.method setTrimPathStart(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$c;->k:F

    return-void
.end method

###### Class androidx.vectordrawable.graphics.drawable.h.d (androidx.vectordrawable.graphics.drawable.h$d)
.class Landroidx/vectordrawable/graphics/drawable/h$d;
.super Landroidx/vectordrawable/graphics/drawable/h$e;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/vectordrawable/graphics/drawable/h$e;",
            ">;"
        }
    .end annotation
.end field

.field c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field final j:Landroid/graphics/Matrix;

.field k:I

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/h$e;-><init>(Landroidx/vectordrawable/graphics/drawable/h$a;)V

    .line 40
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->a:Landroid/graphics/Matrix;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->c:F

    .line 43
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    .line 44
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    iput v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->f:F

    .line 46
    iput v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->g:F

    .line 47
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->h:F

    .line 48
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->i:F

    .line 49
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->j:Landroid/graphics/Matrix;

    .line 50
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/h$d;Lo/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/vectordrawable/graphics/drawable/h$d;",
            "Lo/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/h$e;-><init>(Landroidx/vectordrawable/graphics/drawable/h$a;)V

    .line 2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->c:F

    .line 5
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    .line 6
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    iput v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->f:F

    .line 8
    iput v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->g:F

    .line 9
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->h:F

    .line 10
    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->i:F

    .line 11
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->j:Landroid/graphics/Matrix;

    .line 12
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->m:Ljava/lang/String;

    .line 13
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->c:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->c:F

    .line 14
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    .line 15
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    .line 16
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->f:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->f:F

    .line 17
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->g:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->g:F

    .line 18
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->h:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->h:F

    .line 19
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->i:F

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->i:F

    .line 20
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->l:[I

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->l:[I

    .line 21
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->m:Ljava/lang/String;

    .line 22
    iget v2, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->k:I

    iput v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->k:I

    if-eqz v0, :cond_59

    .line 23
    invoke-virtual {p2, v0, p0}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_59
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 25
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 26
    :goto_61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_aa

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 28
    instance-of v2, v1, Landroidx/vectordrawable/graphics/drawable/h$d;

    if-eqz v2, :cond_7c

    .line 29
    check-cast v1, Landroidx/vectordrawable/graphics/drawable/h$d;

    .line 30
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    new-instance v3, Landroidx/vectordrawable/graphics/drawable/h$d;

    invoke-direct {v3, v1, p2}, Landroidx/vectordrawable/graphics/drawable/h$d;-><init>(Landroidx/vectordrawable/graphics/drawable/h$d;Lo/a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 31
    :cond_7c
    instance-of v2, v1, Landroidx/vectordrawable/graphics/drawable/h$c;

    if-eqz v2, :cond_88

    .line 32
    new-instance v2, Landroidx/vectordrawable/graphics/drawable/h$c;

    check-cast v1, Landroidx/vectordrawable/graphics/drawable/h$c;

    invoke-direct {v2, v1}, Landroidx/vectordrawable/graphics/drawable/h$c;-><init>(Landroidx/vectordrawable/graphics/drawable/h$c;)V

    goto :goto_93

    .line 33
    :cond_88
    instance-of v2, v1, Landroidx/vectordrawable/graphics/drawable/h$b;

    if-eqz v2, :cond_a2

    .line 34
    new-instance v2, Landroidx/vectordrawable/graphics/drawable/h$b;

    check-cast v1, Landroidx/vectordrawable/graphics/drawable/h$b;

    invoke-direct {v2, v1}, Landroidx/vectordrawable/graphics/drawable/h$b;-><init>(Landroidx/vectordrawable/graphics/drawable/h$b;)V

    .line 35
    :goto_93
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, v2, Landroidx/vectordrawable/graphics/drawable/h$f;->b:Ljava/lang/String;

    if-eqz v1, :cond_9f

    .line 37
    invoke-virtual {p2, v1, v2}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    :goto_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 38
    :cond_a2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_aa
    return-void
.end method

.method private d()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    neg-float v1, v1

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->f:F

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 5
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->h:F

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->i:F

    iget v3, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->l:[I

    .line 2
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->c:F

    const-string v1, "rotation"

    const/4 v2, 0x5

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->c:F

    .line 3
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    .line 4
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    .line 5
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->f:F

    const-string v1, "scaleX"

    const/4 v2, 0x3

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->f:F

    .line 6
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->g:F

    const-string v1, "scaleY"

    const/4 v2, 0x4

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->g:F

    .line 7
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->h:F

    const-string v1, "translateX"

    const/4 v2, 0x6

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->h:F

    .line 8
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->i:F

    const-string v1, "translateY"

    const/4 v2, 0x7

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/k;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->i:F

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 10
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->m:Ljava/lang/String;

    .line 11
    :cond_55
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$d;->d()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 2
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/h$e;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/h$e;->a()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public b([I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 2
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/h$e;

    invoke-virtual {v2, p1}, Landroidx/vectordrawable/graphics/drawable/h$e;->b([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    return v1
.end method

.method public c(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .line 1
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/a;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/content/res/k;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p4}, Landroidx/vectordrawable/graphics/drawable/h$d;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    return v0
.end method

.method public getRotation()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->c:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->f:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->g:F

    return v0
.end method

.method public getTranslateX()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->h:F

    return v0
.end method

.method public getTranslateY()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->i:F

    return v0
.end method

.method public setPivotX(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->d:F

    .line 3
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$d;->d()V

    :cond_b
    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->e:F

    .line 3
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$d;->d()V

    :cond_b
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->c:F

    .line 3
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$d;->d()V

    :cond_b
    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->f:F

    .line 3
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$d;->d()V

    :cond_b
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->g:F

    .line 3
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$d;->d()V

    :cond_b
    return-void
.end method

.method public setTranslateX(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->h:F

    .line 3
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$d;->d()V

    :cond_b
    return-void
.end method

.method public setTranslateY(F)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$d;->i:F

    .line 3
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$d;->d()V

    :cond_b
    return-void
.end method

###### Class androidx.vectordrawable.graphics.drawable.h.e (androidx.vectordrawable.graphics.drawable.h$e)
.class abstract Landroidx/vectordrawable/graphics/drawable/h$e;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/vectordrawable/graphics/drawable/h$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b([I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

###### Class androidx.vectordrawable.graphics.drawable.h.f (androidx.vectordrawable.graphics.drawable.h$f)
.class abstract Landroidx/vectordrawable/graphics/drawable/h$f;
.super Landroidx/vectordrawable/graphics/drawable/h$e;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field protected a:[Landroidx/core/graphics/d$b;

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/h$e;-><init>(Landroidx/vectordrawable/graphics/drawable/h$a;)V

    .line 2
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/h$f;)V
    .registers 3

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/h$e;-><init>(Landroidx/vectordrawable/graphics/drawable/h$a;)V

    .line 5
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->c:I

    .line 7
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$f;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->b:Ljava/lang/String;

    .line 8
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$f;->d:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->d:I

    .line 9
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    invoke-static {p1}, Landroidx/core/graphics/d;->f([Landroidx/core/graphics/d$b;)[Landroidx/core/graphics/d$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    return-void
.end method


# virtual methods
.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/graphics/Path;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    if-eqz v0, :cond_a

    .line 3
    invoke-static {v0, p1}, Landroidx/core/graphics/d$b;->e([Landroidx/core/graphics/d$b;Landroid/graphics/Path;)V

    :cond_a
    return-void
.end method

.method public getPathData()[Landroidx/core/graphics/d$b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroidx/core/graphics/d$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/d;->b([Landroidx/core/graphics/d$b;[Landroidx/core/graphics/d$b;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-static {p1}, Landroidx/core/graphics/d;->f([Landroidx/core/graphics/d$b;)[Landroidx/core/graphics/d$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    goto :goto_14

    .line 3
    :cond_f
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$f;->a:[Landroidx/core/graphics/d$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/d;->j([Landroidx/core/graphics/d$b;[Landroidx/core/graphics/d$b;)V

    :goto_14
    return-void
.end method

###### Class androidx.vectordrawable.graphics.drawable.h.g (androidx.vectordrawable.graphics.drawable.h$g)
.class Landroidx/vectordrawable/graphics/drawable/h$g;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field private static final q:Landroid/graphics/Matrix;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Matrix;

.field d:Landroid/graphics/Paint;

.field e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/PathMeasure;

.field private g:I

.field final h:Landroidx/vectordrawable/graphics/drawable/h$d;

.field i:F

.field j:F

.field k:F

.field l:F

.field m:I

.field n:Ljava/lang/String;

.field o:Ljava/lang/Boolean;

.field final p:Lo/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroidx/vectordrawable/graphics/drawable/h$g;->q:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->i:F

    .line 4
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->j:F

    .line 5
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->k:F

    .line 6
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->l:F

    const/16 v0, 0xff

    .line 7
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->m:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->n:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->o:Ljava/lang/Boolean;

    .line 10
    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->p:Lo/a;

    .line 11
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h$d;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/h$d;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->h:Landroidx/vectordrawable/graphics/drawable/h$d;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->a:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/h$g;)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->i:F

    .line 17
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->j:F

    .line 18
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->k:F

    .line 19
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->l:F

    const/16 v0, 0xff

    .line 20
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->m:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->n:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->o:Ljava/lang/Boolean;

    .line 23
    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->p:Lo/a;

    .line 24
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/h$d;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->h:Landroidx/vectordrawable/graphics/drawable/h$d;

    invoke-direct {v1, v2, v0}, Landroidx/vectordrawable/graphics/drawable/h$d;-><init>(Landroidx/vectordrawable/graphics/drawable/h$d;Lo/a;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->h:Landroidx/vectordrawable/graphics/drawable/h$d;

    .line 25
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->a:Landroid/graphics/Path;

    .line 26
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    .line 27
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->i:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->i:F

    .line 28
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->j:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->j:F

    .line 29
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->k:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->k:F

    .line 30
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->l:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->l:F

    .line 31
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->g:I

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->g:I

    .line 32
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->m:I

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->m:I

    .line 33
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->n:Ljava/lang/String;

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->n:Ljava/lang/String;

    .line 34
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->n:Ljava/lang/String;

    if-eqz v1, :cond_61

    .line 35
    invoke-virtual {v0, v1, p0}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_61
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/h$g;->o:Ljava/lang/Boolean;

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->o:Ljava/lang/Boolean;

    return-void
.end method

.method private static a(FFFF)F
    .registers 4

    mul-float p0, p0, p3

    mul-float p1, p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method private c(Landroidx/vectordrawable/graphics/drawable/h$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 16

    .line 1
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object p2, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->a:Landroid/graphics/Matrix;

    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    const/4 p2, 0x0

    .line 4
    :goto_10
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_45

    .line 5
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/h$e;

    .line 6
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/h$d;

    if-eqz v1, :cond_32

    .line 7
    move-object v3, v0

    check-cast v3, Landroidx/vectordrawable/graphics/drawable/h$d;

    .line 8
    iget-object v4, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->a:Landroid/graphics/Matrix;

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Landroidx/vectordrawable/graphics/drawable/h$g;->c(Landroidx/vectordrawable/graphics/drawable/h$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_42

    .line 9
    :cond_32
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/h$f;

    if-eqz v1, :cond_42

    .line 10
    move-object v4, v0

    check-cast v4, Landroidx/vectordrawable/graphics/drawable/h$f;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 11
    invoke-direct/range {v2 .. v8}, Landroidx/vectordrawable/graphics/drawable/h$g;->d(Landroidx/vectordrawable/graphics/drawable/h$d;Landroidx/vectordrawable/graphics/drawable/h$f;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    :cond_42
    :goto_42
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    .line 12
    :cond_45
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private d(Landroidx/vectordrawable/graphics/drawable/h$d;Landroidx/vectordrawable/graphics/drawable/h$f;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 14

    int-to-float p4, p4

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->k:F

    div-float/2addr p4, v0

    int-to-float p5, p5

    .line 2
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->l:F

    div-float/2addr p5, v0

    .line 3
    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/h$d;->a:Landroid/graphics/Matrix;

    .line 5
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, p4, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 7
    invoke-direct {p0, p1}, Landroidx/vectordrawable/graphics/drawable/h$g;->e(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p5, p1, p4

    if-nez p5, :cond_22

    return-void

    .line 8
    :cond_22
    iget-object p5, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->a:Landroid/graphics/Path;

    invoke-virtual {p2, p5}, Landroidx/vectordrawable/graphics/drawable/h$f;->d(Landroid/graphics/Path;)V

    .line 9
    iget-object p5, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->a:Landroid/graphics/Path;

    .line 10
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 11
    invoke-virtual {p2}, Landroidx/vectordrawable/graphics/drawable/h$f;->c()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 12
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    iget p2, p2, Landroidx/vectordrawable/graphics/drawable/h$f;->c:I

    if-nez p2, :cond_3d

    sget-object p2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_3f

    :cond_3d
    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_3f
    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 13
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    iget-object p2, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 14
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_180

    .line 15
    :cond_50
    check-cast p2, Landroidx/vectordrawable/graphics/drawable/h$c;

    .line 16
    iget v1, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    cmpl-float v4, v1, p4

    if-nez v4, :cond_61

    iget v4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->l:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_a0

    .line 17
    :cond_61
    iget v4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->m:F

    add-float/2addr v1, v4

    rem-float/2addr v1, v2

    .line 18
    iget v5, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->l:F

    add-float/2addr v5, v4

    rem-float/2addr v5, v2

    .line 19
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->f:Landroid/graphics/PathMeasure;

    if-nez v2, :cond_74

    .line 20
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->f:Landroid/graphics/PathMeasure;

    .line 21
    :cond_74
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->f:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->a:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 22
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    mul-float v1, v1, v2

    mul-float v5, v5, v2

    .line 23
    invoke-virtual {p5}, Landroid/graphics/Path;->reset()V

    cmpl-float v4, v1, v5

    if-lez v4, :cond_98

    .line 24
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v4, v1, v2, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 25
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, p4, v5, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_9d

    .line 26
    :cond_98
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v2, v1, v5, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 27
    :goto_9d
    invoke-virtual {p5, p4, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 28
    :cond_a0
    iget-object p4, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, p5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 29
    iget-object p4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->h:Landroidx/core/content/res/d;

    invoke-virtual {p4}, Landroidx/core/content/res/d;->l()Z

    move-result p4

    const/high16 p5, 0x437f0000    # 255.0f

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-eqz p4, :cond_10f

    .line 30
    iget-object p4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->h:Landroidx/core/content/res/d;

    .line 31
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->e:Landroid/graphics/Paint;

    if-nez v4, :cond_c6

    .line 32
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->e:Landroid/graphics/Paint;

    .line 33
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    :cond_c6
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->e:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p4}, Landroidx/core/content/res/d;->h()Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 36
    invoke-virtual {p4}, Landroidx/core/content/res/d;->f()Landroid/graphics/Shader;

    move-result-object p4

    .line 37
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 38
    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 39
    iget p4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->j:F

    mul-float p4, p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_f9

    .line 40
    :cond_e6
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 41
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 42
    invoke-virtual {p4}, Landroidx/core/content/res/d;->e()I

    move-result p4

    iget v5, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->j:F

    invoke-static {p4, v5}, Landroidx/vectordrawable/graphics/drawable/h;->a(IF)I

    move-result p4

    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    :goto_f9
    invoke-virtual {v4, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 44
    iget-object p4, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    iget v5, p2, Landroidx/vectordrawable/graphics/drawable/h$f;->c:I

    if-nez v5, :cond_105

    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_107

    :cond_105
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_107
    invoke-virtual {p4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 45
    iget-object p4, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    invoke-virtual {p3, p4, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 46
    :cond_10f
    iget-object p4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->f:Landroidx/core/content/res/d;

    invoke-virtual {p4}, Landroidx/core/content/res/d;->l()Z

    move-result p4

    if-eqz p4, :cond_180

    .line 47
    iget-object p4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->f:Landroidx/core/content/res/d;

    .line 48
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->d:Landroid/graphics/Paint;

    if-nez v4, :cond_129

    .line 49
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->d:Landroid/graphics/Paint;

    .line 50
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    :cond_129
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->d:Landroid/graphics/Paint;

    .line 52
    iget-object v4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->o:Landroid/graphics/Paint$Join;

    if-eqz v4, :cond_132

    .line 53
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 54
    :cond_132
    iget-object v4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->n:Landroid/graphics/Paint$Cap;

    if-eqz v4, :cond_139

    .line 55
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 56
    :cond_139
    iget v4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->p:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 57
    invoke-virtual {p4}, Landroidx/core/content/res/d;->h()Z

    move-result v4

    if-eqz v4, :cond_15c

    .line 58
    invoke-virtual {p4}, Landroidx/core/content/res/d;->f()Landroid/graphics/Shader;

    move-result-object p4

    .line 59
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 60
    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 61
    iget p4, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->i:F

    mul-float p4, p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_16f

    .line 62
    :cond_15c
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 63
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    invoke-virtual {p4}, Landroidx/core/content/res/d;->e()I

    move-result p4

    iget p5, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->i:F

    invoke-static {p4, p5}, Landroidx/vectordrawable/graphics/drawable/h;->a(IF)I

    move-result p4

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    :goto_16f
    invoke-virtual {v3, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float v0, v0, p1

    .line 66
    iget p1, p2, Landroidx/vectordrawable/graphics/drawable/h$c;->g:F

    mul-float p1, p1, v0

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->b:Landroid/graphics/Path;

    invoke-virtual {p3, p1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_180
    :goto_180
    return-void
.end method

.method private e(Landroid/graphics/Matrix;)F
    .registers 11

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_40

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    const/4 p1, 0x0

    .line 3
    aget v1, v0, p1

    float-to-double v1, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x2

    .line 4
    aget v4, v0, v2

    float-to-double v4, v4

    const/4 v6, 0x3

    aget v7, v0, v6

    float-to-double v7, v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 5
    aget p1, v0, p1

    aget v3, v0, v3

    aget v2, v0, v2

    aget v0, v0, v6

    invoke-static {p1, v3, v2, v0}, Landroidx/vectordrawable/graphics/drawable/h$g;->a(FFFF)F

    move-result p1

    .line 6
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3e

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float v1, p1, v0

    :cond_3e
    return v1

    nop

    :array_40
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 12

    .line 1
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->h:Landroidx/vectordrawable/graphics/drawable/h$d;

    sget-object v2, Landroidx/vectordrawable/graphics/drawable/h$g;->q:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/h$g;->c(Landroidx/vectordrawable/graphics/drawable/h$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->h:Landroidx/vectordrawable/graphics/drawable/h$d;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/h$d;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->o:Ljava/lang/Boolean;

    .line 3
    :cond_10
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public g([I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->h:Landroidx/vectordrawable/graphics/drawable/h$d;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/h$d;->b([I)Z

    move-result p1

    return p1
.end method

.method public getAlpha()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h$g;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->m:I

    return v0
.end method

.method public setAlpha(F)V
    .registers 3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/h$g;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/h$g;->m:I

    return-void
.end method

###### Class androidx.vectordrawable.graphics.drawable.h.C0070h (androidx.vectordrawable.graphics.drawable.h$h)
.class Landroidx/vectordrawable/graphics/drawable/h$h;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/vectordrawable/graphics/drawable/h$g;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    .line 15
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/h;->y:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    .line 16
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/h$g;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/h$h;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    .line 3
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/h;->y:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_49

    .line 4
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    .line 5
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h$g;

    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/h$g;-><init>(Landroidx/vectordrawable/graphics/drawable/h$g;)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    .line 6
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/h$g;->e:Landroid/graphics/Paint;

    if-eqz v1, :cond_2a

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/h$g;->e:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/h$g;->e:Landroid/graphics/Paint;

    .line 8
    :cond_2a
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/h$g;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_3d

    .line 9
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/h$g;->d:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/h$g;->d:Landroid/graphics/Paint;

    .line 10
    :cond_3d
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    .line 12
    iget-boolean p1, p1, Landroidx/vectordrawable/graphics/drawable/h$h;->e:Z

    iput-boolean p1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->e:Z

    :cond_49
    return-void
.end method


# virtual methods
.method public a(II)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->f:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p2, p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->k:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->g:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->j:Z

    iget-boolean v1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->e:Z

    if-ne v0, v1, :cond_22

    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->i:I

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    .line 2
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/h$g;->getRootAlpha()I

    move-result v1

    if-ne v0, v1, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public c(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/h$h;->a(II)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    :cond_a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->k:Z

    :cond_15
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    invoke-virtual {p0, p2}, Landroidx/vectordrawable/graphics/drawable/h$h;->e(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object p2

    .line 2
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public e(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/h$h;->f()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_a
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_19

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 5
    :cond_19
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/h$g;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 7
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->l:Landroid/graphics/Paint;

    return-object p1
.end method

.method public f()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/h$g;->getRootAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/h$g;->f()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->a:I

    return v0
.end method

.method public h([I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/h$g;->g([I)Z

    move-result p1

    .line 2
    iget-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->k:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->k:Z

    return p1
.end method

.method public i()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->g:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->h:Landroid/graphics/PorterDuff$Mode;

    .line 3
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/h$g;->getRootAlpha()I

    move-result v0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->i:I

    .line 4
    iget-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->e:Z

    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->j:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->k:Z

    return-void
.end method

.method public j(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$h;->b:Landroidx/vectordrawable/graphics/drawable/h$g;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Landroidx/vectordrawable/graphics/drawable/h$g;->b(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h;

    invoke-direct {v0, p0}, Landroidx/vectordrawable/graphics/drawable/h;-><init>(Landroidx/vectordrawable/graphics/drawable/h$h;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2
    new-instance p1, Landroidx/vectordrawable/graphics/drawable/h;

    invoke-direct {p1, p0}, Landroidx/vectordrawable/graphics/drawable/h;-><init>(Landroidx/vectordrawable/graphics/drawable/h$h;)V

    return-object p1
.end method

###### Class androidx.vectordrawable.graphics.drawable.h.i (androidx.vectordrawable.graphics.drawable.h$i)
.class Landroidx/vectordrawable/graphics/drawable/h$i;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/h;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 3
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/h;-><init>()V

    .line 4
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    iput-object p1, v0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 5
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/h;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/h;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    iput-object p1, v0, Landroidx/vectordrawable/graphics/drawable/g;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
