###### Class g1.c0 (g1.c0)
.class Lg1/c0;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final a:Lg1/i0;

.field static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    .line 2
    new-instance v0, Lg1/h0;

    invoke-direct {v0}, Lg1/h0;-><init>()V

    sput-object v0, Lg1/c0;->a:Lg1/i0;

    goto :goto_45

    :cond_e
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1a

    .line 3
    new-instance v0, Lg1/g0;

    invoke-direct {v0}, Lg1/g0;-><init>()V

    sput-object v0, Lg1/c0;->a:Lg1/i0;

    goto :goto_45

    :cond_1a
    const/16 v1, 0x16

    if-lt v0, v1, :cond_26

    .line 4
    new-instance v0, Lg1/f0;

    invoke-direct {v0}, Lg1/f0;-><init>()V

    sput-object v0, Lg1/c0;->a:Lg1/i0;

    goto :goto_45

    :cond_26
    const/16 v1, 0x15

    if-lt v0, v1, :cond_32

    .line 5
    new-instance v0, Lg1/e0;

    invoke-direct {v0}, Lg1/e0;-><init>()V

    sput-object v0, Lg1/c0;->a:Lg1/i0;

    goto :goto_45

    :cond_32
    const/16 v1, 0x13

    if-lt v0, v1, :cond_3e

    .line 6
    new-instance v0, Lg1/d0;

    invoke-direct {v0}, Lg1/d0;-><init>()V

    sput-object v0, Lg1/c0;->a:Lg1/i0;

    goto :goto_45

    .line 7
    :cond_3e
    new-instance v0, Lg1/i0;

    invoke-direct {v0}, Lg1/i0;-><init>()V

    sput-object v0, Lg1/c0;->a:Lg1/i0;

    .line 8
    :goto_45
    new-instance v0, Lg1/c0$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Lg1/c0$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg1/c0;->b:Landroid/util/Property;

    .line 9
    new-instance v0, Lg1/c0$b;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Lg1/c0$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg1/c0;->c:Landroid/util/Property;

    return-void
.end method

.method static a(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Lg1/c0;->a:Lg1/i0;

    invoke-virtual {v0, p0}, Lg1/i0;->a(Landroid/view/View;)V

    return-void
.end method

.method static b(Landroid/view/View;)Lg1/b0;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 2
    new-instance v0, Lg1/a0;

    invoke-direct {v0, p0}, Lg1/a0;-><init>(Landroid/view/View;)V

    return-object v0

    .line 3
    :cond_c
    invoke-static {p0}, Lg1/z;->e(Landroid/view/View;)Lg1/z;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lg1/c0;->a:Lg1/i0;

    invoke-virtual {v0, p0}, Lg1/i0;->c(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static d(Landroid/view/View;)Lg1/m0;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 2
    new-instance v0, Lg1/l0;

    invoke-direct {v0, p0}, Lg1/l0;-><init>(Landroid/view/View;)V

    return-object v0

    .line 3
    :cond_c
    new-instance v0, Lg1/k0;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p0}, Lg1/k0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method static e(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Lg1/c0;->a:Lg1/i0;

    invoke-virtual {v0, p0}, Lg1/i0;->d(Landroid/view/View;)V

    return-void
.end method

.method static f(Landroid/view/View;IIII)V
    .registers 11

    .line 1
    sget-object v0, Lg1/c0;->a:Lg1/i0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lg1/i0;->e(Landroid/view/View;IIII)V

    return-void
.end method

.method static g(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lg1/c0;->a:Lg1/i0;

    invoke-virtual {v0, p0, p1}, Lg1/i0;->f(Landroid/view/View;F)V

    return-void
.end method

.method static h(Landroid/view/View;I)V
    .registers 3

    .line 1
    sget-object v0, Lg1/c0;->a:Lg1/i0;

    invoke-virtual {v0, p0, p1}, Lg1/i0;->g(Landroid/view/View;I)V

    return-void
.end method

.method static i(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3

    .line 1
    sget-object v0, Lg1/c0;->a:Lg1/i0;

    invoke-virtual {v0, p0, p1}, Lg1/i0;->h(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static j(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3

    .line 1
    sget-object v0, Lg1/c0;->a:Lg1/i0;

    invoke-virtual {v0, p0, p1}, Lg1/i0;->i(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

###### Class g1.c0.a (g1.c0$a)
.class final Lg1/c0$a;
.super Landroid/util/Property;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Ljava/lang/Float;",
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
.method public a(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    .line 1
    invoke-static {p1}, Lg1/c0;->c(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;Ljava/lang/Float;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lg1/c0;->g(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lg1/c0$a;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lg1/c0$a;->b(Landroid/view/View;Ljava/lang/Float;)V

    return-void
.end method

###### Class g1.c0.b (g1.c0$b)
.class final Lg1/c0$b;
.super Landroid/util/Property;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/Rect;",
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
.method public a(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    .line 1
    invoke-static {p1}, Landroidx/core/view/a0;->w(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Landroidx/core/view/a0;->x0(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lg1/c0$b;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lg1/c0$b;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
