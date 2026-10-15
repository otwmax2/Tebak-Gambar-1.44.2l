###### Class androidx.appcompat.widget.b0 (androidx.appcompat.widget.b0)
.class Landroidx/appcompat/widget/b0;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/b0$a;,
        Landroidx/appcompat/widget/b0$b;,
        Landroidx/appcompat/widget/b0$c;,
        Landroidx/appcompat/widget/b0$e;,
        Landroidx/appcompat/widget/b0$d;,
        Landroidx/appcompat/widget/b0$f;
    }
.end annotation


# static fields
.field private static final l:Landroid/graphics/RectF;

.field private static m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanConcurrentHashMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanConcurrentHashMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:[I

.field private g:Z

.field private h:Landroid/text/TextPaint;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/content/Context;

.field private final k:Landroidx/appcompat/widget/b0$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/b0;->l:Landroid/graphics/RectF;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/b0;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/b0;->n:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/b0;->a:I

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/b0;->b:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Landroidx/appcompat/widget/b0;->c:F

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/b0;->d:F

    .line 6
    iput v1, p0, Landroidx/appcompat/widget/b0;->e:F

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Landroidx/appcompat/widget/b0;->f:[I

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/b0;->g:Z

    .line 9
    iput-object p1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/b0;->j:Landroid/content/Context;

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2c

    .line 12
    new-instance p1, Landroidx/appcompat/widget/b0$e;

    invoke-direct {p1}, Landroidx/appcompat/widget/b0$e;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/b0;->k:Landroidx/appcompat/widget/b0$f;

    goto :goto_3f

    :cond_2c
    const/16 v0, 0x17

    if-lt p1, v0, :cond_38

    .line 13
    new-instance p1, Landroidx/appcompat/widget/b0$d;

    invoke-direct {p1}, Landroidx/appcompat/widget/b0$d;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/b0;->k:Landroidx/appcompat/widget/b0$f;

    goto :goto_3f

    .line 14
    :cond_38
    new-instance p1, Landroidx/appcompat/widget/b0$f;

    invoke-direct {p1}, Landroidx/appcompat/widget/b0$f;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/b0;->k:Landroidx/appcompat/widget/b0$f;

    :goto_3f
    return-void
.end method

.method private A(ILandroid/graphics/RectF;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-interface {v1, v0, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_17

    move-object v0, v1

    .line 4
    :cond_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, -0x1

    if-lt v1, v2, :cond_25

    iget-object v1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/appcompat/widget/b0$a;->b(Landroid/widget/TextView;)I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, -0x1

    .line 5
    :goto_26
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b0;->o(I)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const-string v4, "getLayoutAlignment"

    invoke-static {p1, v4, v2}, Landroidx/appcompat/widget/b0;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout$Alignment;

    .line 7
    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v0, p1, v2, v1}, Landroidx/appcompat/widget/b0;->e(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eq v1, v3, :cond_59

    .line 8
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-gt v3, v1, :cond_58

    .line 9
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v1, v0, :cond_59

    :cond_58
    return v2

    .line 10
    :cond_59
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_65

    return v2

    :cond_65
    return v4
.end method

.method private B()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    instance-of v0, v0, Landroidx/appcompat/widget/k;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private C(FFF)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "px) is less or equal to (0px)"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-lez v2, :cond_5a

    cmpg-float v2, p2, p1

    if-lez v2, :cond_36

    cmpg-float v1, p3, v1

    if-lez v1, :cond_1c

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/b0;->a:I

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/b0;->d:F

    .line 3
    iput p2, p0, Landroidx/appcompat/widget/b0;->e:F

    .line 4
    iput p3, p0, Landroidx/appcompat/widget/b0;->c:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/b0;->g:Z

    return-void

    .line 6
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The auto-size step granularity ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_36
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum auto-size text size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 8
    :cond_5a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Minimum auto-size text size ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/b0;->m(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p2

    .line 2
    :cond_7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to access TextView#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " member"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTVAutoSizeHelper"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method private c([I)[I
    .registers 8

    .line 1
    array-length v0, p1

    if-nez v0, :cond_4

    return-object p1

    .line 2
    :cond_4
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_28

    .line 4
    aget v4, p1, v3

    if-lez v4, :cond_25

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_25

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 7
    :cond_28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2f

    return-object p1

    .line 8
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    .line 9
    new-array v0, p1, [I

    :goto_35
    if-ge v2, p1, :cond_46

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_46
    return-object v0
.end method

.method private d()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/b0;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 2
    iput v1, p0, Landroidx/appcompat/widget/b0;->d:F

    .line 3
    iput v1, p0, Landroidx/appcompat/widget/b0;->e:F

    .line 4
    iput v1, p0, Landroidx/appcompat/widget/b0;->c:F

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Landroidx/appcompat/widget/b0;->f:[I

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/widget/b0;->b:Z

    return-void
.end method

.method private f(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mSpacingMult"

    .line 3
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/b0;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mSpacingAdd"

    .line 6
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/b0;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "mIncludePad"

    .line 9
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/b0;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 10
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroidx/appcompat/widget/b0;->h:Landroid/text/TextPaint;

    move-object v1, v0

    move-object v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private g(Landroid/graphics/RectF;)I
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->f:[I

    array-length v0, v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_a
    if-gt v1, v0, :cond_24

    add-int v2, v1, v0

    .line 2
    div-int/lit8 v2, v2, 0x2

    .line 3
    iget-object v3, p0, Landroidx/appcompat/widget/b0;->f:[I

    aget v3, v3, v2

    invoke-direct {p0, v3, p1}, Landroidx/appcompat/widget/b0;->A(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_20

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_a

    :cond_20
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_a

    .line 4
    :cond_24
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->f:[I

    aget p1, p1, v2

    return p1

    .line 5
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No available text sizes to choose from."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :goto_31
    throw p1

    :goto_32
    goto :goto_31
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/b0;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_1b

    .line 2
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    sget-object v1, Landroidx/appcompat/widget/b0;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    return-object v0

    :catch_1c
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to access TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " member"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/b0;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1e

    .line 2
    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    sget-object v1, Landroidx/appcompat/widget/b0;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    return-object v0

    :catch_1f
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() method"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/b0;->n(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_2a

    :catchall_c
    move-exception p0

    goto :goto_2b

    :catch_e
    move-exception p0

    :try_start_f
    const-string v0, "ACTVAutoSizeHelper"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_c

    :goto_2a
    return-object p2

    .line 4
    :goto_2b
    throw p0
.end method

.method private v(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5a

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    const/4 v1, 0x0

    if-lt p1, v0, :cond_25

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/appcompat/widget/b0$b;->a(Landroid/view/View;)Z

    move-result p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    .line 5
    :goto_26
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/b0;->b:Z

    :try_start_30
    const-string v0, "nullLayouts"

    .line 7
    invoke-static {v0}, Landroidx/appcompat/widget/b0;->n(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 8
    iget-object v2, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception v0

    const-string v1, "ACTVAutoSizeHelper"

    const-string v2, "Failed to invoke TextView#nullLayouts() method"

    .line 9
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_48
    if-nez p1, :cond_50

    .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_55

    .line 11
    :cond_50
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->forceLayout()V

    .line 12
    :goto_55
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_5a
    return-void
.end method

.method private x()Z
    .registers 8

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    iget v0, p0, Landroidx/appcompat/widget/b0;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_42

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/b0;->g:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/appcompat/widget/b0;->f:[I

    array-length v0, v0

    if-nez v0, :cond_3f

    .line 3
    :cond_15
    iget v0, p0, Landroidx/appcompat/widget/b0;->e:F

    iget v3, p0, Landroidx/appcompat/widget/b0;->d:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/appcompat/widget/b0;->c:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    .line 4
    new-array v3, v0, [I

    :goto_26
    if-ge v1, v0, :cond_39

    .line 5
    iget v4, p0, Landroidx/appcompat/widget/b0;->d:F

    int-to-float v5, v1

    iget v6, p0, Landroidx/appcompat/widget/b0;->c:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 6
    :cond_39
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/b0;->c([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/b0;->f:[I

    .line 7
    :cond_3f
    iput-boolean v2, p0, Landroidx/appcompat/widget/b0;->b:Z

    goto :goto_44

    .line 8
    :cond_42
    iput-boolean v1, p0, Landroidx/appcompat/widget/b0;->b:Z

    .line 9
    :goto_44
    iget-boolean v0, p0, Landroidx/appcompat/widget/b0;->b:Z

    return v0
.end method

.method private y(Landroid/content/res/TypedArray;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    if-lez v0, :cond_1e

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_15

    const/4 v3, -0x1

    .line 3
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4
    :cond_15
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/b0;->c([I)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/b0;->f:[I

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->z()Z

    :cond_1e
    return-void
.end method

.method private z()Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->f:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_9

    const/4 v4, 0x1

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    .line 2
    :goto_a
    iput-boolean v4, p0, Landroidx/appcompat/widget/b0;->g:Z

    if-eqz v4, :cond_1f

    .line 3
    iput v3, p0, Landroidx/appcompat/widget/b0;->a:I

    .line 4
    aget v2, v0, v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/appcompat/widget/b0;->d:F

    sub-int/2addr v1, v3

    .line 5
    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/widget/b0;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/b0;->c:F

    :cond_1f
    return v4
.end method


# virtual methods
.method b()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/b0;->q()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-boolean v0, p0, Landroidx/appcompat/widget/b0;->b:Z

    if-eqz v0, :cond_7b

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_7a

    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1c

    goto :goto_7a

    .line 4
    :cond_1c
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->k:Landroidx/appcompat/widget/b0$f;

    iget-object v1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/b0$f;->b(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/high16 v0, 0x100000

    goto :goto_3d

    .line 5
    :cond_29
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8
    :goto_3d
    iget-object v1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_7a

    if-gtz v1, :cond_56

    goto :goto_7a

    .line 10
    :cond_56
    sget-object v2, Landroidx/appcompat/widget/b0;->l:Landroid/graphics/RectF;

    monitor-enter v2

    .line 11
    :try_start_59
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    int-to-float v0, v0

    .line 12
    iput v0, v2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    .line 13
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 14
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/b0;->g(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_75

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/b0;->w(IF)V

    .line 17
    :cond_75
    monitor-exit v2

    goto :goto_7b

    :catchall_77
    move-exception v0

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_59 .. :try_end_79} :catchall_77

    throw v0

    :cond_7a
    :goto_7a
    return-void

    :cond_7b
    :goto_7b
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroidx/appcompat/widget/b0;->b:Z

    return-void
.end method

.method e(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .registers 14

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_15

    .line 2
    iget-object v6, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    iget-object v7, p0, Landroidx/appcompat/widget/b0;->h:Landroid/text/TextPaint;

    iget-object v8, p0, Landroidx/appcompat/widget/b0;->k:Landroidx/appcompat/widget/b0$f;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v2 .. v8}, Landroidx/appcompat/widget/b0$c;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;IILandroid/widget/TextView;Landroid/text/TextPaint;Landroidx/appcompat/widget/b0$f;)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    :cond_15
    const/16 p4, 0x10

    if-lt v0, p4, :cond_22

    .line 3
    iget-object p4, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/widget/b0;->h:Landroid/text/TextPaint;

    invoke-static {p1, p2, p3, p4, v0}, Landroidx/appcompat/widget/b0$a;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;ILandroid/widget/TextView;Landroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    .line 4
    :cond_22
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/b0;->f(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method h()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/b0;->e:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method i()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/b0;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method j()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/b0;->c:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method k()[I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->f:[I

    return-object v0
.end method

.method l()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/b0;->a:I

    return v0
.end method

.method o(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->h:Landroid/text/TextPaint;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/b0;->h:Landroid/text/TextPaint;

    goto :goto_f

    .line 3
    :cond_c
    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    .line 4
    :goto_f
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->h:Landroid/text/TextPaint;

    iget-object v1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->h:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method q()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->B()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroidx/appcompat/widget/b0;->a:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method r(Landroid/util/AttributeSet;I)V
    .registers 12

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->j:Landroid/content/Context;

    sget-object v3, Lf/j;->g0:[I

    const/4 v8, 0x0

    invoke-virtual {v0, p1, v3, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/b0;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, v0

    move v6, p2

    invoke-static/range {v1 .. v7}, Landroidx/core/view/a0;->o0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 3
    sget p1, Lf/j;->l0:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 4
    invoke-virtual {v0, p1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/b0;->a:I

    .line 5
    :cond_24
    sget p1, Lf/j;->k0:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p2, :cond_33

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    goto :goto_35

    :cond_33
    const/high16 p1, -0x40800000    # -1.0f

    .line 7
    :goto_35
    sget p2, Lf/j;->i0:I

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 8
    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_44

    :cond_42
    const/high16 p2, -0x40800000    # -1.0f

    .line 9
    :goto_44
    sget v2, Lf/j;->h0:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_53

    :cond_51
    const/high16 v2, -0x40800000    # -1.0f

    .line 11
    :goto_53
    sget v3, Lf/j;->j0:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 12
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_6f

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 15
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/b0;->y(Landroid/content/res/TypedArray;)V

    .line 16
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    :cond_6f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->B()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 19
    iget v0, p0, Landroidx/appcompat/widget/b0;->a:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_af

    .line 20
    iget-boolean v0, p0, Landroidx/appcompat/widget/b0;->g:Z

    if-nez v0, :cond_a9

    .line 21
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->j:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v3, 0x2

    cmpl-float v4, p2, v1

    if-nez v4, :cond_96

    const/high16 p2, 0x41400000    # 12.0f

    .line 23
    invoke-static {v3, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    :cond_96
    cmpl-float v4, v2, v1

    if-nez v4, :cond_a0

    const/high16 v2, 0x42e00000    # 112.0f

    .line 24
    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    :cond_a0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_a6

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    :cond_a6
    invoke-direct {p0, p2, v2, p1}, Landroidx/appcompat/widget/b0;->C(FFF)V

    .line 26
    :cond_a9
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->x()Z

    goto :goto_af

    .line 27
    :cond_ad
    iput v8, p0, Landroidx/appcompat/widget/b0;->a:I

    :cond_af
    :goto_af
    return-void
.end method

.method s(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->B()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 3
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 4
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 5
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/b0;->C(FFF)V

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->x()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/b0;->b()V

    :cond_2b
    return-void
.end method

.method t([II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->B()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_57

    .line 3
    new-array v2, v0, [I

    if-nez p2, :cond_13

    .line 4
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_2f

    .line 5
    :cond_13
    iget-object v3, p0, Landroidx/appcompat/widget/b0;->j:Landroid/content/Context;

    .line 6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_1d
    if-ge v1, v0, :cond_2f

    .line 7
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 8
    :cond_2f
    :goto_2f
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/b0;->c([I)[I

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/b0;->f:[I

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->z()Z

    move-result p2

    if-eqz p2, :cond_3c

    goto :goto_59

    .line 10
    :cond_3c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None of the preset sizes is valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_57
    iput-boolean v1, p0, Landroidx/appcompat/widget/b0;->g:Z

    .line 13
    :goto_59
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->x()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/widget/b0;->b()V

    :cond_62
    return-void
.end method

.method u(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->B()Z

    move-result v0

    if-eqz v0, :cond_4b

    if-eqz p1, :cond_48

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/b0;->j:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x2

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x42e00000    # 112.0f

    .line 5
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-direct {p0, v0, p1, v1}, Landroidx/appcompat/widget/b0;->C(FFF)V

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->x()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/b0;->b()V

    goto :goto_4b

    .line 9
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown auto-size text type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_48
    invoke-direct {p0}, Landroidx/appcompat/widget/b0;->d()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method w(IF)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->j:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_d

    .line 3
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    :goto_d
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/b0;->v(F)V

    return-void
.end method

###### Class androidx.appcompat.widget.b0.a (androidx.appcompat.widget.b0$a)
.class final Landroidx/appcompat/widget/b0$a;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method static a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;ILandroid/widget/TextView;Landroid/text/TextPaint;)Landroid/text/StaticLayout;
    .registers 13

    .line 1
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    .line 2
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    .line 3
    invoke-virtual {p3}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v7

    .line 4
    new-instance p3, Landroid/text/StaticLayout;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p4

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p3
.end method

.method static b(Landroid/widget/TextView;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    return p0
.end method

###### Class androidx.appcompat.widget.b0.b (androidx.appcompat.widget.b0$b)
.class final Landroidx/appcompat/widget/b0$b;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result p0

    return p0
.end method

###### Class androidx.appcompat.widget.b0.c (androidx.appcompat.widget.b0$c)
.class final Landroidx/appcompat/widget/b0$c;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method static a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;IILandroid/widget/TextView;Landroid/text/TextPaint;Landroidx/appcompat/widget/b0$f;)Landroid/text/StaticLayout;
    .registers 9

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1, v0, p5, p2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p2

    .line 5
    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result p5

    .line 6
    invoke-virtual {p1, p2, p5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p4}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p4}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p4}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, -0x1

    if-ne p3, p2, :cond_37

    const p3, 0x7fffffff

    .line 10
    :cond_37
    invoke-virtual {p1, p3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 11
    :try_start_3a
    invoke-virtual {p6, p0, p4}, Landroidx/appcompat/widget/b0$f;->a(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_45

    :catch_3e
    const-string p1, "ACTVAutoSizeHelper"

    const-string p2, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect"

    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_45
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.appcompat.widget.b0.d (androidx.appcompat.widget.b0$d)
.class Landroidx/appcompat/widget/b0$d;
.super Landroidx/appcompat/widget/b0$f;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/b0$f;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    .registers 5

    .line 1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const-string v1, "getTextDirectionHeuristic"

    .line 2
    invoke-static {p2, v1, v0}, Landroidx/appcompat/widget/b0;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/TextDirectionHeuristic;

    .line 3
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    return-void
.end method

###### Class androidx.appcompat.widget.b0.e (androidx.appcompat.widget.b0$e)
.class Landroidx/appcompat/widget/b0$e;
.super Landroidx/appcompat/widget/b0$d;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/b0$d;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    return-void
.end method

.method b(Landroid/widget/TextView;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result p1

    return p1
.end method

###### Class androidx.appcompat.widget.b0.f (androidx.appcompat.widget.b0$f)
.class Landroidx/appcompat/widget/b0$f;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    .registers 3

    return-void
.end method

.method b(Landroid/widget/TextView;)Z
    .registers 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "getHorizontallyScrolling"

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/b0;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
