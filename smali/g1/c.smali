###### Class g1.c (g1.c)
.class public Lg1/c;
.super Lg1/m;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1/c$k;
    }
.end annotation


# static fields
.field private static final b0:[Ljava/lang/String;

.field private static final c0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final d0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lg1/c$k;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final e0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lg1/c$k;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final f0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final g0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final h0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static i0:Lg1/k;


# instance fields
.field private Y:[I

.field private Z:Z

.field private a0:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:clip"

    const-string v2, "android:changeBounds:parent"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg1/c;->b0:[Ljava/lang/String;

    .line 2
    new-instance v0, Lg1/c$b;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Lg1/c$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg1/c;->c0:Landroid/util/Property;

    .line 3
    new-instance v0, Lg1/c$c;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Lg1/c$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg1/c;->d0:Landroid/util/Property;

    .line 4
    new-instance v0, Lg1/c$d;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Lg1/c$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg1/c;->e0:Landroid/util/Property;

    .line 5
    new-instance v0, Lg1/c$e;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Lg1/c$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg1/c;->f0:Landroid/util/Property;

    .line 6
    new-instance v0, Lg1/c$f;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Lg1/c$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg1/c;->g0:Landroid/util/Property;

    .line 7
    new-instance v0, Lg1/c$g;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Lg1/c$g;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg1/c;->h0:Landroid/util/Property;

    .line 8
    new-instance v0, Lg1/k;

    invoke-direct {v0}, Lg1/k;-><init>()V

    sput-object v0, Lg1/c;->i0:Lg1/k;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lg1/m;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lg1/c;->Y:[I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lg1/c;->Z:Z

    .line 4
    iput-boolean v0, p0, Lg1/c;->a0:Z

    return-void
.end method

.method private f0(Lg1/s;)V
    .registers 9

    .line 1
    iget-object v0, p1, Lg1/s;->b:Landroid/view/View;

    .line 2
    invoke-static {v0}, Landroidx/core/view/a0;->U(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_77

    .line 3
    :cond_14
    iget-object v1, p1, Lg1/s;->a:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "android:changeBounds:bounds"

    .line 5
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p1, Lg1/s;->a:Ljava/util/Map;

    iget-object v2, p1, Lg1/s;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v1, p0, Lg1/c;->a0:Z

    if-eqz v1, :cond_68

    .line 8
    iget-object v1, p1, Lg1/s;->b:Landroid/view/View;

    iget-object v2, p0, Lg1/c;->Y:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 9
    iget-object v1, p1, Lg1/s;->a:Ljava/util/Map;

    iget-object v2, p0, Lg1/c;->Y:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p1, Lg1/s;->a:Ljava/util/Map;

    iget-object v2, p0, Lg1/c;->Y:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_68
    iget-boolean v1, p0, Lg1/c;->Z:Z

    if-eqz v1, :cond_77

    .line 12
    iget-object p1, p1, Lg1/s;->a:Ljava/util/Map;

    invoke-static {v0}, Landroidx/core/view/a0;->w(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "android:changeBounds:clip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    return-void
.end method

.method private g0(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lg1/c;->a0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {p0, p1, v1}, Lg1/m;->u(Landroid/view/View;Z)Lg1/s;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_11

    if-ne p1, p2, :cond_f

    goto :goto_15

    :cond_f
    const/4 v1, 0x0

    goto :goto_15

    .line 3
    :cond_11
    iget-object p1, v0, Lg1/s;->b:Landroid/view/View;

    if-ne p2, p1, :cond_f

    :cond_15
    :goto_15
    return v1
.end method


# virtual methods
.method public E()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lg1/c;->b0:[Ljava/lang/String;

    return-object v0
.end method

.method public h(Lg1/s;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lg1/c;->f0(Lg1/s;)V

    return-void
.end method

.method public k(Lg1/s;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lg1/c;->f0(Lg1/s;)V

    return-void
.end method

.method public o(Landroid/view/ViewGroup;Lg1/s;Lg1/s;)Landroid/animation/Animator;
    .registers 22

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_260

    if-nez v1, :cond_c

    goto/16 :goto_260

    .line 1
    :cond_c
    iget-object v3, v0, Lg1/s;->a:Ljava/util/Map;

    .line 2
    iget-object v4, v1, Lg1/s;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:parent"

    .line 3
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 4
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_25e

    if-nez v4, :cond_24

    goto/16 :goto_25e

    .line 5
    :cond_24
    iget-object v9, v1, Lg1/s;->b:Landroid/view/View;

    .line 6
    invoke-direct {v8, v3, v4}, Lg1/c;->g0(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1b7

    .line 7
    iget-object v3, v0, Lg1/s;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 8
    iget-object v6, v1, Lg1/s;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 9
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 10
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 11
    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 12
    iget v12, v5, Landroid/graphics/Rect;->top:I

    .line 13
    iget v13, v3, Landroid/graphics/Rect;->right:I

    .line 14
    iget v14, v5, Landroid/graphics/Rect;->right:I

    .line 15
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 16
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v13, v6

    sub-int v2, v3, v11

    sub-int v10, v14, v7

    sub-int v4, v15, v12

    .line 17
    iget-object v0, v0, Lg1/s;->a:Ljava/util/Map;

    move-object/from16 v16, v9

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 18
    iget-object v1, v1, Lg1/s;->a:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v5, :cond_6f

    if-nez v2, :cond_73

    :cond_6f
    if-eqz v10, :cond_82

    if-eqz v4, :cond_82

    :cond_73
    if-ne v6, v7, :cond_7a

    if-eq v11, v12, :cond_78

    goto :goto_7a

    :cond_78
    const/4 v1, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v1, 0x1

    :goto_7b
    if-ne v13, v14, :cond_7f

    if-eq v3, v15, :cond_83

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    :cond_82
    const/4 v1, 0x0

    :cond_83
    :goto_83
    if-eqz v0, :cond_8b

    .line 19
    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8f

    :cond_8b
    if-nez v0, :cond_91

    if-eqz v9, :cond_91

    :cond_8f
    add-int/lit8 v1, v1, 0x1

    :cond_91
    if-lez v1, :cond_1f0

    move-object/from16 p1, v9

    .line 20
    iget-boolean v9, v8, Lg1/c;->Z:Z

    move-object/from16 p2, v0

    const/4 v0, 0x2

    if-nez v9, :cond_12c

    move-object/from16 v9, v16

    .line 21
    invoke-static {v9, v6, v11, v13, v3}, Lg1/c0;->f(Landroid/view/View;IIII)V

    if-ne v1, v0, :cond_ff

    if-ne v5, v10, :cond_bb

    if-ne v2, v4, :cond_bb

    .line 22
    invoke-virtual/range {p0 .. p0}, Lg1/m;->w()Lg1/g;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v11

    int-to-float v3, v7

    int-to-float v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lg1/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 23
    sget-object v1, Lg1/c;->h0:Landroid/util/Property;

    invoke-static {v9, v1, v0}, Lg1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_19c

    .line 24
    :cond_bb
    new-instance v1, Lg1/c$k;

    invoke-direct {v1, v9}, Lg1/c$k;-><init>(Landroid/view/View;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lg1/m;->w()Lg1/g;

    move-result-object v2

    int-to-float v4, v6

    int-to-float v5, v11

    int-to-float v6, v7

    int-to-float v7, v12

    invoke-virtual {v2, v4, v5, v6, v7}, Lg1/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    .line 26
    sget-object v4, Lg1/c;->d0:Landroid/util/Property;

    .line 27
    invoke-static {v1, v4, v2}, Lg1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 28
    invoke-virtual/range {p0 .. p0}, Lg1/m;->w()Lg1/g;

    move-result-object v4

    int-to-float v5, v13

    int-to-float v3, v3

    int-to-float v6, v14

    int-to-float v7, v15

    invoke-virtual {v4, v5, v3, v6, v7}, Lg1/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 29
    sget-object v4, Lg1/c;->e0:Landroid/util/Property;

    invoke-static {v1, v4, v3}, Lg1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 30
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/4 v2, 0x1

    aput-object v3, v0, v2

    .line 31
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 32
    new-instance v0, Lg1/c$h;

    invoke-direct {v0, v8, v1}, Lg1/c$h;-><init>(Lg1/c;Lg1/c$k;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v4

    goto/16 :goto_19c

    :cond_ff
    if-ne v6, v7, :cond_118

    if-eq v11, v12, :cond_104

    goto :goto_118

    .line 33
    :cond_104
    invoke-virtual/range {p0 .. p0}, Lg1/m;->w()Lg1/g;

    move-result-object v0

    int-to-float v1, v13

    int-to-float v2, v3

    int-to-float v3, v14

    int-to-float v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lg1/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 34
    sget-object v1, Lg1/c;->f0:Landroid/util/Property;

    invoke-static {v9, v1, v0}, Lg1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_19c

    .line 35
    :cond_118
    :goto_118
    invoke-virtual/range {p0 .. p0}, Lg1/m;->w()Lg1/g;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v11

    int-to-float v3, v7

    int-to-float v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lg1/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 36
    sget-object v1, Lg1/c;->g0:Landroid/util/Property;

    invoke-static {v9, v1, v0}, Lg1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_19c

    :cond_12c
    move-object/from16 v9, v16

    .line 37
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 38
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v6

    add-int/2addr v3, v11

    .line 39
    invoke-static {v9, v6, v11, v1, v3}, Lg1/c0;->f(Landroid/view/View;IIII)V

    if-ne v6, v7, :cond_142

    if-eq v11, v12, :cond_140

    goto :goto_142

    :cond_140
    const/4 v11, 0x0

    goto :goto_155

    .line 40
    :cond_142
    :goto_142
    invoke-virtual/range {p0 .. p0}, Lg1/m;->w()Lg1/g;

    move-result-object v1

    int-to-float v3, v6

    int-to-float v6, v11

    int-to-float v11, v7

    int-to-float v13, v12

    invoke-virtual {v1, v3, v6, v11, v13}, Lg1/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 41
    sget-object v3, Lg1/c;->h0:Landroid/util/Property;

    invoke-static {v9, v3, v1}, Lg1/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v11, v1

    :goto_155
    if-nez p2, :cond_15e

    .line 42
    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_161

    :cond_15e
    const/4 v3, 0x0

    move-object/from16 v1, p2

    :goto_161
    if-nez p1, :cond_169

    .line 43
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_16b

    :cond_169
    move-object/from16 v2, p1

    .line 44
    :goto_16b
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_197

    .line 45
    invoke-static {v9, v1}, Landroidx/core/view/a0;->x0(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 46
    sget-object v4, Lg1/c;->i0:Lg1/k;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const-string v1, "clipBounds"

    invoke-static {v9, v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 47
    new-instance v13, Lg1/c$i;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, p1

    move v4, v7

    move v5, v12

    move v6, v14

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lg1/c$i;-><init>(Lg1/c;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v10

    goto :goto_198

    :cond_197
    const/4 v2, 0x0

    .line 48
    :goto_198
    invoke-static {v11, v2}, Lg1/r;->c(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    .line 49
    :goto_19c
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1b6

    .line 50
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    .line 51
    invoke-static {v1, v2}, Lg1/x;->c(Landroid/view/ViewGroup;Z)V

    .line 52
    new-instance v2, Lg1/c$j;

    invoke-direct {v2, v8, v1}, Lg1/c$j;-><init>(Lg1/c;Landroid/view/ViewGroup;)V

    .line 53
    invoke-virtual {v8, v2}, Lg1/m;->a(Lg1/m$f;)Lg1/m;

    :cond_1b6
    return-object v0

    .line 54
    :cond_1b7
    iget-object v2, v0, Lg1/s;->a:Ljava/util/Map;

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 55
    iget-object v0, v0, Lg1/s;->a:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowY"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 56
    iget-object v5, v1, Lg1/s;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 57
    iget-object v1, v1, Lg1/s;->a:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v3, :cond_1f2

    if-eq v0, v1, :cond_1f0

    goto :goto_1f2

    :cond_1f0
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_1f2
    :goto_1f2
    iget-object v4, v8, Lg1/c;->Y:[I

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 59
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 60
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-virtual {v9, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 62
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-static {v9}, Lg1/c0;->c(Landroid/view/View;)F

    move-result v7

    const/4 v4, 0x0

    .line 64
    invoke-static {v9, v4}, Lg1/c0;->g(Landroid/view/View;F)V

    .line 65
    invoke-static/range {p1 .. p1}, Lg1/c0;->b(Landroid/view/View;)Lg1/b0;

    move-result-object v4

    invoke-interface {v4, v6}, Lg1/b0;->a(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lg1/m;->w()Lg1/g;

    move-result-object v4

    iget-object v10, v8, Lg1/c;->Y:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    sub-int/2addr v2, v12

    int-to-float v2, v2

    const/4 v12, 0x1

    aget v13, v10, v12

    sub-int/2addr v0, v13

    int-to-float v0, v0

    aget v13, v10, v11

    sub-int/2addr v3, v13

    int-to-float v3, v3

    aget v10, v10, v12

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v4, v2, v0, v3, v1}, Lg1/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 67
    sget-object v1, Lg1/c;->c0:Landroid/util/Property;

    invoke-static {v1, v0}, Lg1/i;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v11

    .line 68
    invoke-static {v6, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 69
    new-instance v11, Lg1/c$a;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v9

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lg1/c$a;-><init>(Lg1/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v10

    :cond_25e
    :goto_25e
    const/4 v0, 0x0

    return-object v0

    :cond_260
    :goto_260
    const/4 v0, 0x0

    return-object v0
.end method

###### Class g1.c.a (g1.c$a)
.class Lg1/c$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/c;->o(Landroid/view/ViewGroup;Lg1/s;Lg1/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:F

.field final synthetic e:Lg1/c;


# direct methods
.method constructor <init>(Lg1/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .registers 6

    .line 1
    iput-object p1, p0, Lg1/c$a;->e:Lg1/c;

    iput-object p2, p0, Lg1/c$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lg1/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lg1/c$a;->c:Landroid/view/View;

    iput p5, p0, Lg1/c$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lg1/c$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lg1/c0;->b(Landroid/view/View;)Lg1/b0;

    move-result-object p1

    iget-object v0, p0, Lg1/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Lg1/b0;->b(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lg1/c$a;->c:Landroid/view/View;

    iget v0, p0, Lg1/c$a;->d:F

    invoke-static {p1, v0}, Lg1/c0;->g(Landroid/view/View;F)V

    return-void
.end method

###### Class g1.c.b (g1.c$b)
.class final Lg1/c$b;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lg1/c$b;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/c$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lg1/c$b;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lg1/c$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lg1/c$b;->a:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3
    iget-object p2, p0, Lg1/c$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lg1/c$b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lg1/c$b;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class g1.c.C0162c (g1.c$c)
.class final Lg1/c$c;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lg1/c$k;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lg1/c$k;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lg1/c$k;Landroid/graphics/PointF;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Lg1/c$k;->c(Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lg1/c$k;

    invoke-virtual {p0, p1}, Lg1/c$c;->a(Lg1/c$k;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lg1/c$k;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lg1/c$c;->b(Lg1/c$k;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class g1.c.d (g1.c$d)
.class final Lg1/c$d;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lg1/c$k;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lg1/c$k;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lg1/c$k;Landroid/graphics/PointF;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Lg1/c$k;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lg1/c$k;

    invoke-virtual {p0, p1}, Lg1/c$d;->a(Lg1/c$k;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lg1/c$k;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lg1/c$d;->b(Lg1/c$k;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class g1.c.e (g1.c$e)
.class final Lg1/c$e;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 3
    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 4
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 5
    invoke-static {p1, v0, v1, v2, p2}, Lg1/c0;->f(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lg1/c$e;->a(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lg1/c$e;->b(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class g1.c.f (g1.c$f)
.class final Lg1/c$f;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    .line 1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5
    invoke-static {p1, v0, p2, v1, v2}, Lg1/c0;->f(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lg1/c$f;->a(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lg1/c$f;->b(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class g1.c.g (g1.c$g)
.class final Lg1/c$g;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    .line 1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    .line 5
    invoke-static {p1, v0, p2, v1, v2}, Lg1/c0;->f(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lg1/c$g;->a(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lg1/c$g;->b(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class g1.c.h (g1.c$h)
.class Lg1/c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/c;->o(Landroid/view/ViewGroup;Lg1/s;Lg1/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg1/c$k;

.field final synthetic b:Lg1/c;

.field private mViewBounds:Lg1/c$k;


# direct methods
.method constructor <init>(Lg1/c;Lg1/c$k;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg1/c$h;->b:Lg1/c;

    iput-object p2, p0, Lg1/c$h;->a:Lg1/c$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lg1/c$h;->mViewBounds:Lg1/c$k;

    return-void
.end method

###### Class g1.c.i (g1.c$i)
.class Lg1/c$i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/c;->o(Landroid/view/ViewGroup;Lg1/s;Lg1/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lg1/c;


# direct methods
.method constructor <init>(Lg1/c;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .registers 8

    .line 1
    iput-object p1, p0, Lg1/c$i;->h:Lg1/c;

    iput-object p2, p0, Lg1/c$i;->b:Landroid/view/View;

    iput-object p3, p0, Lg1/c$i;->c:Landroid/graphics/Rect;

    iput p4, p0, Lg1/c$i;->d:I

    iput p5, p0, Lg1/c$i;->e:I

    iput p6, p0, Lg1/c$i;->f:I

    iput p7, p0, Lg1/c$i;->g:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lg1/c$i;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 1
    iget-boolean p1, p0, Lg1/c$i;->a:Z

    if-nez p1, :cond_18

    .line 2
    iget-object p1, p0, Lg1/c$i;->b:Landroid/view/View;

    iget-object v0, p0, Lg1/c$i;->c:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroidx/core/view/a0;->x0(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Lg1/c$i;->b:Landroid/view/View;

    iget v0, p0, Lg1/c$i;->d:I

    iget v1, p0, Lg1/c$i;->e:I

    iget v2, p0, Lg1/c$i;->f:I

    iget v3, p0, Lg1/c$i;->g:I

    invoke-static {p1, v0, v1, v2, v3}, Lg1/c0;->f(Landroid/view/View;IIII)V

    :cond_18
    return-void
.end method

###### Class g1.c.j (g1.c$j)
.class Lg1/c$j;
.super Lg1/n;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/c;->o(Landroid/view/ViewGroup;Lg1/s;Lg1/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lg1/c;


# direct methods
.method constructor <init>(Lg1/c;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg1/c$j;->c:Lg1/c;

    iput-object p2, p0, Lg1/c$j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lg1/n;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lg1/c$j;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lg1/m;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lg1/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lg1/x;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public b(Lg1/m;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lg1/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg1/x;->c(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lg1/c$j;->a:Z

    return-void
.end method

.method public c(Lg1/m;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lg1/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg1/x;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(Lg1/m;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lg1/c$j;->a:Z

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, Lg1/c$j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg1/x;->c(Landroid/view/ViewGroup;Z)V

    .line 3
    :cond_a
    invoke-virtual {p1, p0}, Lg1/m;->R(Lg1/m$f;)Lg1/m;

    return-void
.end method

###### Class g1.c.k (g1.c$k)
.class Lg1/c$k;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg1/c$k;->e:Landroid/view/View;

    return-void
.end method

.method private b()V
    .registers 6

    .line 1
    iget-object v0, p0, Lg1/c$k;->e:Landroid/view/View;

    iget v1, p0, Lg1/c$k;->a:I

    iget v2, p0, Lg1/c$k;->b:I

    iget v3, p0, Lg1/c$k;->c:I

    iget v4, p0, Lg1/c$k;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lg1/c0;->f(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg1/c$k;->f:I

    .line 3
    iput v0, p0, Lg1/c$k;->g:I

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/PointF;)V
    .registers 3

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lg1/c$k;->c:I

    .line 2
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lg1/c$k;->d:I

    .line 3
    iget p1, p0, Lg1/c$k;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg1/c$k;->g:I

    .line 4
    iget v0, p0, Lg1/c$k;->f:I

    if-ne v0, p1, :cond_1d

    .line 5
    invoke-direct {p0}, Lg1/c$k;->b()V

    :cond_1d
    return-void
.end method

.method c(Landroid/graphics/PointF;)V
    .registers 3

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lg1/c$k;->a:I

    .line 2
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lg1/c$k;->b:I

    .line 3
    iget p1, p0, Lg1/c$k;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg1/c$k;->f:I

    .line 4
    iget v0, p0, Lg1/c$k;->g:I

    if-ne p1, v0, :cond_1d

    .line 5
    invoke-direct {p0}, Lg1/c$k;->b()V

    :cond_1d
    return-void
.end method
