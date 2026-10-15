###### Class androidx.appcompat.app.h (androidx.appcompat.app.h)
.class Landroidx/appcompat/app/h;
.super Landroidx/appcompat/app/g;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/h$n;,
        Landroidx/appcompat/app/h$m;,
        Landroidx/appcompat/app/h$l;,
        Landroidx/appcompat/app/h$k;,
        Landroidx/appcompat/app/h$p;,
        Landroidx/appcompat/app/h$r;,
        Landroidx/appcompat/app/h$q;,
        Landroidx/appcompat/app/h$o;,
        Landroidx/appcompat/app/h$h;,
        Landroidx/appcompat/app/h$t;,
        Landroidx/appcompat/app/h$u;,
        Landroidx/appcompat/app/h$i;,
        Landroidx/appcompat/app/h$v;,
        Landroidx/appcompat/app/h$j;,
        Landroidx/appcompat/app/h$s;
    }
.end annotation


# static fields
.field private static final A0:Z

.field private static final B0:Z

.field private static C0:Z

.field private static final x0:Lo/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final y0:Z

.field private static final z0:[I


# instance fields
.field final A:Landroid/content/Context;

.field B:Landroid/view/Window;

.field private C:Landroidx/appcompat/app/h$o;

.field final D:Landroidx/appcompat/app/d;

.field E:Landroidx/appcompat/app/a;

.field F:Landroid/view/MenuInflater;

.field private G:Ljava/lang/CharSequence;

.field private H:Landroidx/appcompat/widget/d0;

.field private I:Landroidx/appcompat/app/h$i;

.field private J:Landroidx/appcompat/app/h$v;

.field K:Landroidx/appcompat/view/b;

.field L:Landroidx/appcompat/widget/ActionBarContextView;

.field M:Landroid/widget/PopupWindow;

.field N:Ljava/lang/Runnable;

.field O:Landroidx/core/view/g0;

.field private P:Z

.field private Q:Z

.field R:Landroid/view/ViewGroup;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/view/View;

.field private U:Z

.field private V:Z

.field W:Z

.field X:Z

.field Y:Z

.field Z:Z

.field a0:Z

.field private b0:Z

.field private c0:[Landroidx/appcompat/app/h$u;

.field private d0:Landroidx/appcompat/app/h$u;

.field private e0:Z

.field private f0:Z

.field private g0:Z

.field h0:Z

.field private i0:Landroid/content/res/Configuration;

.field private j0:I

.field private k0:I

.field private l0:I

.field private m0:Z

.field private n0:Landroidx/appcompat/app/h$q;

.field private o0:Landroidx/appcompat/app/h$q;

.field p0:Z

.field q0:I

.field private final r0:Ljava/lang/Runnable;

.field private s0:Z

.field private t0:Landroid/graphics/Rect;

.field private u0:Landroid/graphics/Rect;

.field private v0:Landroidx/appcompat/app/l;

.field private w0:Landroidx/appcompat/app/p;

.field final z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lo/g;

    invoke-direct {v0}, Lo/g;-><init>()V

    sput-object v0, Landroidx/appcompat/app/h;->x0:Lo/g;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    sput-boolean v3, Landroidx/appcompat/app/h;->y0:Z

    new-array v4, v2, [I

    const v5, 0x1010054

    aput v5, v4, v1

    .line 3
    sput-object v4, Landroidx/appcompat/app/h;->z0:[I

    .line 4
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "robolectric"

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    sput-boolean v4, Landroidx/appcompat/app/h;->A0:Z

    const/16 v4, 0x11

    if-lt v0, v4, :cond_2d

    const/4 v1, 0x1

    .line 6
    :cond_2d
    sput-boolean v1, Landroidx/appcompat/app/h;->B0:Z

    if-eqz v3, :cond_43

    .line 7
    sget-boolean v0, Landroidx/appcompat/app/h;->C0:Z

    if-nez v0, :cond_43

    .line 8
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 9
    new-instance v1, Landroidx/appcompat/app/h$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/h$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 10
    sput-boolean v2, Landroidx/appcompat/app/h;->C0:Z

    :cond_43
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/d;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p1}, Landroidx/appcompat/app/h;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;Landroidx/appcompat/app/d;)V
    .registers 5

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/appcompat/app/h;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V
    .registers 7

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/g;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/h;->P:Z

    const/16 v0, -0x64

    .line 6
    iput v0, p0, Landroidx/appcompat/app/h;->j0:I

    .line 7
    new-instance v1, Landroidx/appcompat/app/h$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/h$b;-><init>(Landroidx/appcompat/app/h;)V

    iput-object v1, p0, Landroidx/appcompat/app/h;->r0:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Landroidx/appcompat/app/h;->D:Landroidx/appcompat/app/d;

    .line 10
    iput-object p4, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    .line 11
    iget p1, p0, Landroidx/appcompat/app/h;->j0:I

    if-ne p1, v0, :cond_32

    instance-of p1, p4, Landroid/app/Dialog;

    if-eqz p1, :cond_32

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/h;->c1()Landroidx/appcompat/app/c;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/app/c;->C()Landroidx/appcompat/app/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/g;->r()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/h;->j0:I

    .line 14
    :cond_32
    iget p1, p0, Landroidx/appcompat/app/h;->j0:I

    if-ne p1, v0, :cond_59

    .line 15
    sget-object p1, Landroidx/appcompat/app/h;->x0:Lo/g;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_59

    .line 16
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/h;->j0:I

    .line 17
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    if-eqz p2, :cond_5e

    .line 18
    invoke-direct {p0, p2}, Landroidx/appcompat/app/h;->Y(Landroid/view/Window;)V

    .line 19
    :cond_5e
    invoke-static {}, Landroidx/appcompat/widget/j;->h()V

    return-void
.end method

.method private A0(Landroidx/appcompat/app/h$u;)Z
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/appcompat/app/h$u;->i:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2
    iput-object v0, p1, Landroidx/appcompat/app/h$u;->h:Landroid/view/View;

    return v1

    .line 3
    :cond_8
    iget-object v0, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 4
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/app/h;->J:Landroidx/appcompat/app/h$v;

    if-nez v0, :cond_19

    .line 5
    new-instance v0, Landroidx/appcompat/app/h$v;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/h$v;-><init>(Landroidx/appcompat/app/h;)V

    iput-object v0, p0, Landroidx/appcompat/app/h;->J:Landroidx/appcompat/app/h$v;

    .line 6
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/app/h;->J:Landroidx/appcompat/app/h$v;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/h$u;->a(Landroidx/appcompat/view/menu/m$a;)Landroidx/appcompat/view/menu/n;

    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroidx/appcompat/app/h$u;->h:Landroid/view/View;

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method private B0(Landroidx/appcompat/app/h$u;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->r0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/h$u;->d(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroidx/appcompat/app/h$t;

    iget-object v1, p1, Landroidx/appcompat/app/h$u;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/h$t;-><init>(Landroidx/appcompat/app/h;Landroid/content/Context;)V

    iput-object v0, p1, Landroidx/appcompat/app/h$u;->g:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    .line 3
    iput v0, p1, Landroidx/appcompat/app/h$u;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method private C0(Landroidx/appcompat/app/h$u;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    .line 2
    iget v1, p1, Landroidx/appcompat/app/h$u;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_63

    :cond_b
    iget-object v1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz v1, :cond_63

    .line 3
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 5
    sget v4, Lf/a;->f:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    .line 6
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_38

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 9
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 10
    sget v5, Lf/a;->g:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_3d

    .line 11
    :cond_38
    sget v5, Lf/a;->g:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    :goto_3d
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_53

    if-nez v4, :cond_4e

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 15
    :cond_4e
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_53
    if-eqz v4, :cond_63

    .line 16
    new-instance v1, Landroidx/appcompat/view/d;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    .line 18
    :cond_63
    new-instance v1, Landroidx/appcompat/view/menu/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/g;->R(Landroidx/appcompat/view/menu/g$a;)V

    .line 20
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/h$u;->c(Landroidx/appcompat/view/menu/g;)V

    return v2
.end method

.method private D0(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/appcompat/app/h;->q0:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/app/h;->q0:I

    .line 2
    iget-boolean p1, p0, Landroidx/appcompat/app/h;->p0:Z

    if-nez p1, :cond_19

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/h;->r0:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroidx/core/view/a0;->i0(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4
    iput-boolean v1, p0, Landroidx/appcompat/app/h;->p0:Z

    :cond_19
    return-void
.end method

.method private I0(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object p1

    .line 3
    iget-boolean v0, p1, Landroidx/appcompat/app/h$u;->o:Z

    if-nez v0, :cond_14

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/h;->S0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private L0(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object v2

    if-nez p1, :cond_43

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz p1, :cond_43

    .line 4
    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->d()Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_43

    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->b()Z

    move-result p1

    if-nez p1, :cond_3c

    .line 7
    iget-boolean p1, p0, Landroidx/appcompat/app/h;->h0:Z

    if-nez p1, :cond_62

    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/h;->S0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->g()Z

    move-result v0

    goto :goto_68

    .line 9
    :cond_3c
    iget-object p1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->f()Z

    move-result v0

    goto :goto_68

    .line 10
    :cond_43
    iget-boolean p1, v2, Landroidx/appcompat/app/h$u;->o:Z

    if-nez p1, :cond_64

    iget-boolean v3, v2, Landroidx/appcompat/app/h$u;->n:Z

    if-eqz v3, :cond_4c

    goto :goto_64

    .line 11
    :cond_4c
    iget-boolean p1, v2, Landroidx/appcompat/app/h$u;->m:Z

    if-eqz p1, :cond_62

    .line 12
    iget-boolean p1, v2, Landroidx/appcompat/app/h$u;->r:Z

    if-eqz p1, :cond_5b

    .line 13
    iput-boolean v1, v2, Landroidx/appcompat/app/h$u;->m:Z

    .line 14
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/h;->S0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_5c

    :cond_5b
    const/4 p1, 0x1

    :goto_5c
    if-eqz p1, :cond_62

    .line 15
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/h;->P0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)V

    goto :goto_68

    :cond_62
    const/4 v0, 0x0

    goto :goto_68

    .line 16
    :cond_64
    :goto_64
    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/app/h;->f0(Landroidx/appcompat/app/h$u;Z)V

    move v0, p1

    :goto_68
    if-eqz v0, :cond_85

    .line 17
    iget-object p1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_7e

    .line 19
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_85

    :cond_7e
    const-string p1, "AppCompatDelegate"

    const-string p2, "Couldn\'t get audio manager"

    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    :goto_85
    return v0
.end method

.method private P0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)V
    .registers 16

    .line 1
    iget-boolean v0, p1, Landroidx/appcompat/app/h$u;->o:Z

    if-nez v0, :cond_f1

    iget-boolean v0, p0, Landroidx/appcompat/app/h;->h0:Z

    if-eqz v0, :cond_a

    goto/16 :goto_f1

    .line 2
    :cond_a
    iget v0, p1, Landroidx/appcompat/app/h$u;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_27

    return-void

    .line 5
    :cond_27
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->y0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 6
    iget v3, p1, Landroidx/appcompat/app/h$u;->a:I

    iget-object v4, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 7
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/h;->f0(Landroidx/appcompat/app/h$u;Z)V

    return-void

    .line 8
    :cond_3b
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_48

    return-void

    .line 9
    :cond_48
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/h;->S0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_4f

    return-void

    .line 10
    :cond_4f
    iget-object p2, p1, Landroidx/appcompat/app/h$u;->g:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_6a

    iget-boolean v5, p1, Landroidx/appcompat/app/h$u;->q:Z

    if-eqz v5, :cond_5a

    goto :goto_6a

    .line 11
    :cond_5a
    iget-object p2, p1, Landroidx/appcompat/app/h$u;->i:Landroid/view/View;

    if-eqz p2, :cond_cc

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_cc

    .line 13
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_cc

    const/4 v6, -0x1

    goto :goto_cd

    :cond_6a
    :goto_6a
    if-nez p2, :cond_77

    .line 14
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h;->B0(Landroidx/appcompat/app/h$u;)Z

    move-result p2

    if-eqz p2, :cond_76

    iget-object p2, p1, Landroidx/appcompat/app/h$u;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_86

    :cond_76
    return-void

    .line 15
    :cond_77
    iget-boolean v3, p1, Landroidx/appcompat/app/h$u;->q:Z

    if-eqz v3, :cond_86

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_86

    .line 16
    iget-object p2, p1, Landroidx/appcompat/app/h$u;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    :cond_86
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h;->A0(Landroidx/appcompat/app/h$u;)Z

    move-result p2

    if-eqz p2, :cond_ef

    invoke-virtual {p1}, Landroidx/appcompat/app/h$u;->b()Z

    move-result p2

    if-nez p2, :cond_93

    goto :goto_ef

    .line 18
    :cond_93
    iget-object p2, p1, Landroidx/appcompat/app/h$u;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_a0

    .line 19
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 20
    :cond_a0
    iget v3, p1, Landroidx/appcompat/app/h$u;->b:I

    .line 21
    iget-object v5, p1, Landroidx/appcompat/app/h$u;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 22
    iget-object v3, p1, Landroidx/appcompat/app/h$u;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 23
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_b8

    .line 24
    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/appcompat/app/h$u;->h:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_b8
    iget-object v3, p1, Landroidx/appcompat/app/h$u;->g:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/appcompat/app/h$u;->h:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object p2, p1, Landroidx/appcompat/app/h$u;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_cc

    .line 27
    iget-object p2, p1, Landroidx/appcompat/app/h$u;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_cc
    const/4 v6, -0x2

    .line 28
    :goto_cd
    iput-boolean v1, p1, Landroidx/appcompat/app/h$u;->n:Z

    .line 29
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Landroidx/appcompat/app/h$u;->d:I

    iget v9, p1, Landroidx/appcompat/app/h$u;->e:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 30
    iget v1, p1, Landroidx/appcompat/app/h$u;->c:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 31
    iget v1, p1, Landroidx/appcompat/app/h$u;->f:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 32
    iget-object v1, p1, Landroidx/appcompat/app/h$u;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iput-boolean v2, p1, Landroidx/appcompat/app/h$u;->o:Z

    return-void

    .line 34
    :cond_ef
    :goto_ef
    iput-boolean v2, p1, Landroidx/appcompat/app/h$u;->q:Z

    :cond_f1
    :goto_f1
    return-void
.end method

.method private R0(Landroidx/appcompat/app/h$u;ILandroid/view/KeyEvent;I)Z
    .registers 7

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-boolean v0, p1, Landroidx/appcompat/app/h$u;->m:Z

    if-nez v0, :cond_12

    invoke-direct {p0, p1, p3}, Landroidx/appcompat/app/h;->S0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    iget-object v0, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_1a

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_1a
    if-eqz v1, :cond_28

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_28

    .line 4
    iget-object p3, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-nez p3, :cond_28

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/h;->f0(Landroidx/appcompat/app/h$u;Z)V

    :cond_28
    return v1
.end method

.method private S0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)Z
    .registers 11

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->h0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-boolean v0, p1, Landroidx/appcompat/app/h$u;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    return v2

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/h;->d0:Landroidx/appcompat/app/h$u;

    if-eqz v0, :cond_15

    if-eq v0, p1, :cond_15

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/h;->f0(Landroidx/appcompat/app/h$u;Z)V

    .line 5
    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->y0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 6
    iget v3, p1, Landroidx/appcompat/app/h$u;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroidx/appcompat/app/h$u;->i:Landroid/view/View;

    .line 7
    :cond_23
    iget v3, p1, Landroidx/appcompat/app/h$u;->a:I

    if-eqz v3, :cond_2e

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v3, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v3, 0x1

    :goto_2f
    if-eqz v3, :cond_38

    .line 8
    iget-object v4, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz v4, :cond_38

    .line 9
    invoke-interface {v4}, Landroidx/appcompat/widget/d0;->c()V

    .line 10
    :cond_38
    iget-object v4, p1, Landroidx/appcompat/app/h$u;->i:Landroid/view/View;

    if-nez v4, :cond_dd

    if-eqz v3, :cond_41

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->Q0()Landroidx/appcompat/app/a;

    .line 12
    :cond_41
    iget-object v4, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    const/4 v5, 0x0

    if-eqz v4, :cond_4a

    iget-boolean v6, p1, Landroidx/appcompat/app/h$u;->r:Z

    if-eqz v6, :cond_91

    :cond_4a
    if-nez v4, :cond_57

    .line 13
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h;->C0(Landroidx/appcompat/app/h$u;)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_57

    :cond_56
    return v1

    :cond_57
    if-eqz v3, :cond_71

    .line 14
    iget-object v4, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz v4, :cond_71

    .line 15
    iget-object v4, p0, Landroidx/appcompat/app/h;->I:Landroidx/appcompat/app/h$i;

    if-nez v4, :cond_68

    .line 16
    new-instance v4, Landroidx/appcompat/app/h$i;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/h$i;-><init>(Landroidx/appcompat/app/h;)V

    iput-object v4, p0, Landroidx/appcompat/app/h;->I:Landroidx/appcompat/app/h$i;

    .line 17
    :cond_68
    iget-object v4, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    iget-object v6, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    iget-object v7, p0, Landroidx/appcompat/app/h;->I:Landroidx/appcompat/app/h$i;

    invoke-interface {v4, v6, v7}, Landroidx/appcompat/widget/d0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 18
    :cond_71
    iget-object v4, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->d0()V

    .line 19
    iget v4, p1, Landroidx/appcompat/app/h$u;->a:I

    iget-object v6, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_8f

    .line 20
    invoke-virtual {p1, v5}, Landroidx/appcompat/app/h$u;->c(Landroidx/appcompat/view/menu/g;)V

    if-eqz v3, :cond_8e

    .line 21
    iget-object p1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz p1, :cond_8e

    .line 22
    iget-object p2, p0, Landroidx/appcompat/app/h;->I:Landroidx/appcompat/app/h$i;

    invoke-interface {p1, v5, p2}, Landroidx/appcompat/widget/d0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    :cond_8e
    return v1

    .line 23
    :cond_8f
    iput-boolean v1, p1, Landroidx/appcompat/app/h$u;->r:Z

    .line 24
    :cond_91
    iget-object v4, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->d0()V

    .line 25
    iget-object v4, p1, Landroidx/appcompat/app/h$u;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_a1

    .line 26
    iget-object v6, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v6, v4}, Landroidx/appcompat/view/menu/g;->P(Landroid/os/Bundle;)V

    .line 27
    iput-object v5, p1, Landroidx/appcompat/app/h$u;->s:Landroid/os/Bundle;

    .line 28
    :cond_a1
    iget-object v4, p1, Landroidx/appcompat/app/h$u;->i:Landroid/view/View;

    iget-object v6, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_bc

    if-eqz v3, :cond_b6

    .line 29
    iget-object p2, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz p2, :cond_b6

    .line 30
    iget-object v0, p0, Landroidx/appcompat/app/h;->I:Landroidx/appcompat/app/h$i;

    invoke-interface {p2, v5, v0}, Landroidx/appcompat/widget/d0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 31
    :cond_b6
    iget-object p1, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->c0()V

    return v1

    :cond_bc
    if-eqz p2, :cond_c3

    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_c4

    :cond_c3
    const/4 p2, -0x1

    .line 33
    :goto_c4
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_d0

    const/4 p2, 0x1

    goto :goto_d1

    :cond_d0
    const/4 p2, 0x0

    :goto_d1
    iput-boolean p2, p1, Landroidx/appcompat/app/h$u;->p:Z

    .line 35
    iget-object v0, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    .line 36
    iget-object p2, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->c0()V

    .line 37
    :cond_dd
    iput-boolean v2, p1, Landroidx/appcompat/app/h$u;->m:Z

    .line 38
    iput-boolean v1, p1, Landroidx/appcompat/app/h$u;->n:Z

    .line 39
    iput-object p1, p0, Landroidx/appcompat/app/h;->d0:Landroidx/appcompat/app/h$u;

    return v2
.end method

.method private T0(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_82

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->d()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->e()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 4
    :cond_20
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->y0()Landroid/view/Window$Callback;

    move-result-object v0

    .line 5
    iget-object v3, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    invoke-interface {v3}, Landroidx/appcompat/widget/d0;->b()Z

    move-result v3

    const/16 v4, 0x6c

    if-eqz v3, :cond_44

    if-nez p1, :cond_31

    goto :goto_44

    .line 6
    :cond_31
    iget-object p1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->f()Z

    .line 7
    iget-boolean p1, p0, Landroidx/appcompat/app/h;->h0:Z

    if-nez p1, :cond_81

    .line 8
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object p1

    .line 9
    iget-object p1, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_81

    :cond_44
    :goto_44
    if-eqz v0, :cond_81

    .line 10
    iget-boolean p1, p0, Landroidx/appcompat/app/h;->h0:Z

    if-nez p1, :cond_81

    .line 11
    iget-boolean p1, p0, Landroidx/appcompat/app/h;->p0:Z

    if-eqz p1, :cond_63

    iget p1, p0, Landroidx/appcompat/app/h;->q0:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_63

    .line 12
    iget-object p1, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Landroidx/appcompat/app/h;->r0:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p1, p0, Landroidx/appcompat/app/h;->r0:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_63
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object p1

    .line 15
    iget-object v1, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v1, :cond_81

    iget-boolean v3, p1, Landroidx/appcompat/app/h$u;->r:Z

    if-nez v3, :cond_81

    iget-object v3, p1, Landroidx/appcompat/app/h$u;->i:Landroid/view/View;

    .line 16
    invoke-interface {v0, v2, v3, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 17
    iget-object p1, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->g()Z

    :cond_81
    :goto_81
    return-void

    .line 19
    :cond_82
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object p1

    .line 20
    iput-boolean v1, p1, Landroidx/appcompat/app/h$u;->q:Z

    .line 21
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/h;->f0(Landroidx/appcompat/app/h$u;Z)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/h;->P0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private U0(I)I
    .registers 4

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    if-ne p1, v1, :cond_e

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    return p1

    :cond_e
    const/16 v1, 0x9

    if-ne p1, v1, :cond_19

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    :cond_19
    return p1
.end method

.method private V(Z)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->h0:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/app/h;->a0()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/h;->F0(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    .line 4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v3, v4, :cond_1d

    .line 5
    iget-object v2, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/h;->Z(Landroid/content/Context;)Landroidx/core/os/h;

    move-result-object v2

    .line 6
    :cond_1d
    invoke-direct {p0, v1, v2, p1}, Landroidx/appcompat/app/h;->e1(ILandroidx/core/os/h;Z)Z

    move-result p1

    if-nez v0, :cond_2d

    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroidx/appcompat/app/h;->u0(Landroid/content/Context;)Landroidx/appcompat/app/h$q;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/h$q;->e()V

    goto :goto_34

    .line 8
    :cond_2d
    iget-object v1, p0, Landroidx/appcompat/app/h;->n0:Landroidx/appcompat/app/h$q;

    if-eqz v1, :cond_34

    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/app/h$q;->a()V

    :cond_34
    :goto_34
    const/4 v1, 0x3

    if-ne v0, v1, :cond_41

    .line 10
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/h;->t0(Landroid/content/Context;)Landroidx/appcompat/app/h$q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/h$q;->e()V

    goto :goto_48

    .line 11
    :cond_41
    iget-object v0, p0, Landroidx/appcompat/app/h;->o0:Landroidx/appcompat/app/h$q;

    if-eqz v0, :cond_48

    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/app/h$q;->a()V

    :cond_48
    :goto_48
    return p1
.end method

.method private X()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 6
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->b(IIII)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    sget-object v2, Lf/j;->y0:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 8
    sget v2, Lf/j;->K0:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 9
    sget v2, Lf/j;->L0:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 10
    sget v2, Lf/j;->I0:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 13
    :cond_4d
    sget v2, Lf/j;->J0:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 16
    :cond_5c
    sget v2, Lf/j;->G0:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 19
    :cond_6b
    sget v2, Lf/j;->H0:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 22
    :cond_7a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method private Y(Landroid/view/Window;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_37

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3
    instance-of v2, v0, Landroidx/appcompat/app/h$o;

    if-nez v2, :cond_31

    .line 4
    new-instance v1, Landroidx/appcompat/app/h$o;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/h$o;-><init>(Landroidx/appcompat/app/h;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/h;->C:Landroidx/appcompat/app/h$o;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroidx/appcompat/app/h;->z0:[I

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/w0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/w0;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/w0;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_2b
    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->w()V

    .line 10
    iput-object p1, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    return-void

    .line 11
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Y0(Landroid/view/ViewParent;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_a
    if-nez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    if-eq p1, v1, :cond_23

    .line 2
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_23

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    .line 3
    invoke-static {v2}, Landroidx/core/view/a0;->T(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_23

    .line 4
    :cond_1e
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_a

    :cond_23
    :goto_23
    return v0
.end method

.method private a0()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/app/h;->j0:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_7

    goto :goto_b

    :cond_7
    invoke-static {}, Landroidx/appcompat/app/g;->q()I

    move-result v0

    :goto_b
    return v0
.end method

.method private b1()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->Q:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c1()Landroidx/appcompat/app/c;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2
    instance-of v2, v0, Landroidx/appcompat/app/c;

    if-eqz v2, :cond_c

    .line 3
    check-cast v0, Landroidx/appcompat/app/c;

    return-object v0

    .line 4
    :cond_c
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_17

    .line 5
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2

    :cond_17
    return-object v1
.end method

.method private d0()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->n0:Landroidx/appcompat/app/h$q;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/h$q;->a()V

    .line 3
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/h;->o0:Landroidx/appcompat/app/h$q;

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/app/h$q;->a()V

    :cond_e
    return-void
.end method

.method private d1(Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 2
    instance-of v1, v0, Landroidx/lifecycle/n;

    if-eqz v1, :cond_1f

    .line 3
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/n;

    invoke-interface {v1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroidx/lifecycle/j;->b()Landroidx/lifecycle/j$c;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/j$c;->q:Landroidx/lifecycle/j$c;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/j$c;->c(Landroidx/lifecycle/j$c;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_2a

    .line 6
    :cond_1f
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->g0:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Landroidx/appcompat/app/h;->h0:Z

    if-nez v1, :cond_2a

    .line 7
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private e1(ILandroidx/core/os/h;Z)Z
    .registers 12

    .line 1
    iget-object v1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/h;->g0(Landroid/content/Context;ILandroidx/core/os/h;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroidx/appcompat/app/h;->s0(Landroid/content/Context;)I

    move-result v1

    .line 4
    iget-object v2, p0, Landroidx/appcompat/app/h;->i0:Landroid/content/res/Configuration;

    if-nez v2, :cond_1f

    .line 5
    iget-object v2, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6
    :cond_1f
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    .line 7
    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    .line 8
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/h;->v0(Landroid/content/res/Configuration;)Landroidx/core/os/h;

    move-result-object v2

    const/4 v5, 0x0

    if-nez p2, :cond_30

    move-object v0, v5

    goto :goto_34

    .line 9
    :cond_30
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/h;->v0(Landroid/content/res/Configuration;)Landroidx/core/os/h;

    move-result-object v0

    :goto_34
    const/4 v6, 0x0

    if-eq v3, v4, :cond_3a

    const/16 v3, 0x200

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    :goto_3b
    if-eqz v0, :cond_4d

    .line 10
    invoke-virtual {v2, v0}, Landroidx/core/os/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    or-int/lit8 v3, v3, 0x4

    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v2, v7, :cond_4d

    or-int/lit16 v3, v3, 0x2000

    :cond_4d
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v3

    const/4 v7, 0x1

    if-eqz v2, :cond_78

    if-eqz p3, :cond_78

    .line 12
    iget-boolean p3, p0, Landroidx/appcompat/app/h;->f0:Z

    if-eqz p3, :cond_78

    sget-boolean p3, Landroidx/appcompat/app/h;->A0:Z

    if-nez p3, :cond_61

    iget-boolean p3, p0, Landroidx/appcompat/app/h;->g0:Z

    if-eqz p3, :cond_78

    :cond_61
    iget-object p3, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of v2, p3, Landroid/app/Activity;

    if-eqz v2, :cond_78

    check-cast p3, Landroid/app/Activity;

    .line 13
    invoke-virtual {p3}, Landroid/app/Activity;->isChild()Z

    move-result p3

    if-nez p3, :cond_78

    .line 14
    iget-object p3, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    check-cast p3, Landroid/app/Activity;

    invoke-static {p3}, Landroidx/core/app/b;->s(Landroid/app/Activity;)V

    const/4 p3, 0x1

    goto :goto_79

    :cond_78
    const/4 p3, 0x0

    :goto_79
    if-nez p3, :cond_86

    if-eqz v3, :cond_86

    and-int p3, v3, v1

    if-ne p3, v3, :cond_82

    const/4 v6, 0x1

    .line 15
    :cond_82
    invoke-direct {p0, v4, v0, v6, v5}, Landroidx/appcompat/app/h;->f1(ILandroidx/core/os/h;ZLandroid/content/res/Configuration;)V

    goto :goto_87

    :cond_86
    move v7, p3

    :goto_87
    if-eqz v7, :cond_a3

    .line 16
    iget-object p3, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of v1, p3, Landroidx/appcompat/app/c;

    if-eqz v1, :cond_a3

    and-int/lit16 v1, v3, 0x200

    if-eqz v1, :cond_98

    .line 17
    check-cast p3, Landroidx/appcompat/app/c;

    invoke-virtual {p3, p1}, Landroidx/appcompat/app/c;->H(I)V

    :cond_98
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_a3

    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/c;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/c;->G(Landroidx/core/os/h;)V

    :cond_a3
    if-eqz v7, :cond_aa

    if-eqz v0, :cond_aa

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/h;->W0(Landroidx/core/os/h;)V

    :cond_aa
    return v7
.end method

.method private f1(ILandroidx/core/os/h;ZLandroid/content/res/Configuration;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz p4, :cond_14

    .line 3
    invoke-virtual {v1, p4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4
    :cond_14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p4, p4, -0x31

    or-int/2addr p1, p4

    iput p1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p2, :cond_24

    .line 5
    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/app/h;->V0(Landroid/content/res/Configuration;Landroidx/core/os/h;)V

    :cond_24
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-ge p1, p2, :cond_31

    .line 8
    invoke-static {v0}, Landroidx/appcompat/app/r;->a(Landroid/content/res/Resources;)V

    .line 9
    :cond_31
    iget p2, p0, Landroidx/appcompat/app/h;->k0:I

    if-eqz p2, :cond_4a

    .line 10
    iget-object p4, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {p4, p2}, Landroid/content/Context;->setTheme(I)V

    const/16 p2, 0x17

    if-lt p1, p2, :cond_4a

    .line 11
    iget-object p1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/app/h;->k0:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_4a
    if-eqz p3, :cond_55

    .line 12
    iget-object p1, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_55

    .line 13
    invoke-direct {p0, v1}, Landroidx/appcompat/app/h;->d1(Landroid/content/res/Configuration;)V

    :cond_55
    return-void
.end method

.method private g0(Landroid/content/Context;ILandroidx/core/os/h;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .registers 7

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1b

    if-eqz p5, :cond_a

    const/4 p1, 0x0

    goto :goto_20

    .line 1
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_20

    :cond_1b
    const/16 p1, 0x20

    goto :goto_20

    :cond_1e
    const/16 p1, 0x10

    .line 3
    :goto_20
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 p5, 0x0

    .line 4
    iput p5, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p4, :cond_2d

    .line 5
    invoke-virtual {p2, p4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6
    :cond_2d
    iget p4, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p4, p4, -0x31

    or-int/2addr p1, p4

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p3, :cond_39

    .line 7
    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/app/h;->V0(Landroid/content/res/Configuration;Landroidx/core/os/h;)V

    :cond_39
    return-object p2
.end method

.method private h0()Landroid/view/ViewGroup;
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    sget-object v1, Lf/j;->y0:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lf/j;->D0:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 3
    sget v2, Lf/j;->M0:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1e

    .line 4
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/h;->M(I)Z

    goto :goto_29

    .line 5
    :cond_1e
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v1, 0x6c

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/h;->M(I)Z

    .line 7
    :cond_29
    :goto_29
    sget v1, Lf/j;->E0:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_36

    .line 8
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/h;->M(I)Z

    .line 9
    :cond_36
    sget v1, Lf/j;->F0:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_43

    const/16 v1, 0xa

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/h;->M(I)Z

    .line 11
    :cond_43
    sget v1, Lf/j;->z0:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/app/h;->Z:Z

    .line 12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/h;->o0()V

    .line 14
    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 16
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->a0:Z

    const/4 v5, 0x0

    if-nez v1, :cond_d4

    .line 17
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->Z:Z

    if-eqz v1, :cond_73

    .line 18
    sget v1, Lf/g;->f:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    iput-boolean v3, p0, Landroidx/appcompat/app/h;->X:Z

    iput-boolean v3, p0, Landroidx/appcompat/app/h;->W:Z

    goto/16 :goto_e9

    .line 20
    :cond_73
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->W:Z

    if-eqz v0, :cond_d2

    .line 21
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 22
    iget-object v1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, Lf/a;->f:I

    invoke-virtual {v1, v6, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_95

    .line 24
    new-instance v1, Landroidx/appcompat/view/d;

    iget-object v4, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v4, v0}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    goto :goto_97

    .line 25
    :cond_95
    iget-object v1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    .line 26
    :goto_97
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lf/g;->p:I

    .line 27
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    sget v1, Lf/f;->p:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/d0;

    iput-object v1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->y0()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v1, v4}, Landroidx/appcompat/widget/d0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 31
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->X:Z

    if-eqz v1, :cond_bd

    .line 32
    iget-object v1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/d0;->h(I)V

    .line 33
    :cond_bd
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->U:Z

    if-eqz v1, :cond_c7

    .line 34
    iget-object v1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/d0;->h(I)V

    .line 35
    :cond_c7
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->V:Z

    if-eqz v1, :cond_e9

    .line 36
    iget-object v1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/d0;->h(I)V

    goto :goto_e9

    :cond_d2
    move-object v0, v5

    goto :goto_e9

    .line 37
    :cond_d4
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->Y:Z

    if-eqz v1, :cond_e1

    .line 38
    sget v1, Lf/g;->o:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_e9

    .line 39
    :cond_e1
    sget v1, Lf/g;->n:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_e9
    :goto_e9
    if-eqz v0, :cond_15e

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_fa

    .line 41
    new-instance v1, Landroidx/appcompat/app/h$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/h$c;-><init>(Landroidx/appcompat/app/h;)V

    invoke-static {v0, v1}, Landroidx/core/view/a0;->C0(Landroid/view/View;Landroidx/core/view/u;)V

    goto :goto_109

    .line 42
    :cond_fa
    instance-of v1, v0, Landroidx/appcompat/widget/h0;

    if-eqz v1, :cond_109

    .line 43
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/h0;

    new-instance v2, Landroidx/appcompat/app/h$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/h$d;-><init>(Landroidx/appcompat/app/h;)V

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/h0;->setOnFitSystemWindowsListener(Landroidx/appcompat/widget/h0$a;)V

    .line 44
    :cond_109
    :goto_109
    iget-object v1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-nez v1, :cond_117

    .line 45
    sget v1, Lf/f;->M:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/appcompat/app/h;->S:Landroid/widget/TextView;

    .line 46
    :cond_117
    invoke-static {v0}, Landroidx/appcompat/widget/f1;->c(Landroid/view/View;)V

    .line 47
    sget v1, Lf/f;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 48
    iget-object v2, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_150

    .line 49
    :goto_12f
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_140

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 51
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 52
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_12f

    :cond_140
    const/4 v3, -0x1

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    .line 54
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 55
    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_150

    .line 56
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_150
    iget-object v2, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 58
    new-instance v2, Landroidx/appcompat/app/h$e;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/h$e;-><init>(Landroidx/appcompat/app/h;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    return-object v0

    .line 59
    :cond_15e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/h;->W:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/h;->X:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/h;->Z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/h;->Y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/h;->a0:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1a4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1b0

    :goto_1af
    throw v0

    :goto_1b0
    goto :goto_1af
.end method

.method private h1(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroidx/core/view/a0;->N(Landroid/view/View;)I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    sget v1, Lf/c;->b:I

    invoke-static {v0, v1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1e

    .line 3
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    sget v1, Lf/c;->a:I

    invoke-static {v0, v1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v0

    .line 4
    :goto_1e
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private n0()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->Q:Z

    if-nez v0, :cond_50

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/app/h;->h0()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->x0()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 5
    iget-object v1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz v1, :cond_1c

    .line 6
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 7
    :cond_1c
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->Q0()Landroidx/appcompat/app/a;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->Q0()Landroidx/appcompat/app/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->u(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 9
    :cond_2a
    iget-object v1, p0, Landroidx/appcompat/app/h;->S:Landroid/widget/TextView;

    if-eqz v1, :cond_31

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_31
    :goto_31
    invoke-direct {p0}, Landroidx/appcompat/app/h;->X()V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/h;->O0(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroidx/appcompat/app/h;->Q:Z

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object v0

    .line 15
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->h0:Z

    if-nez v1, :cond_50

    if-eqz v0, :cond_4b

    iget-object v0, v0, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_50

    :cond_4b
    const/16 v0, 0x6c

    .line 16
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h;->D0(I)V

    :cond_50
    return-void
.end method

.method private o0()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_13

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/h;->Y(Landroid/view/Window;)V

    .line 3
    :cond_13
    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    if-eqz v0, :cond_18

    return-void

    .line 4
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static q0(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 7

    .line 1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p1, :cond_100

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_100

    .line 4
    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1c

    .line 5
    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 6
    :cond_1c
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_24

    .line 7
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 8
    :cond_24
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2c

    .line 9
    iput v2, v0, Landroid/content/res/Configuration;->mnc:I

    .line 10
    :cond_2c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_36

    .line 11
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/h$m;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_44

    .line 12
    :cond_36
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 13
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 14
    :cond_44
    :goto_44
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_4c

    .line 15
    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 16
    :cond_4c
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_54

    .line 17
    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 18
    :cond_54
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_5c

    .line 19
    iput v3, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 20
    :cond_5c
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_64

    .line 21
    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    .line 22
    :cond_64
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_6c

    .line 23
    iput v3, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 24
    :cond_6c
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_74

    .line 25
    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 26
    :cond_74
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v3, 0xf

    if-eq v2, v4, :cond_85

    .line 27
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 28
    :cond_85
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v3, 0xc0

    if-eq v2, v4, :cond_96

    .line 29
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 30
    :cond_96
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v3, 0x30

    if-eq v2, v4, :cond_a7

    .line 31
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 32
    :cond_a7
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v3, 0x300

    if-eq v2, v4, :cond_b8

    .line 33
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_b8
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_bf

    .line 34
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/h$n;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 35
    :cond_bf
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v3, 0xf

    if-eq v2, v4, :cond_d0

    .line 36
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 37
    :cond_d0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v3, 0x30

    if-eq v2, v4, :cond_e1

    .line 38
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 39
    :cond_e1
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_e9

    .line 40
    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 41
    :cond_e9
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_f1

    .line 42
    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 43
    :cond_f1
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_f9

    .line 44
    iput v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_f9
    const/16 v2, 0x11

    if-lt v1, v2, :cond_100

    .line 45
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/h$k;->b(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_100
    :goto_100
    return-object v0
.end method

.method private s0(Landroid/content/Context;)I
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->m0:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_43

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 3
    :cond_12
    :try_start_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1b

    const/high16 v2, 0x100c0000

    goto :goto_23

    :cond_1b
    const/16 v3, 0x18

    if-lt v2, v3, :cond_22

    const/high16 v2, 0xc0000

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .line 4
    :goto_23
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 7
    iget p1, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput p1, p0, Landroidx/appcompat/app/h;->l0:I
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_38} :catch_39

    goto :goto_43

    :catch_39
    move-exception p1

    const-string v0, "AppCompatDelegate"

    const-string v2, "Exception while getting ActivityInfo"

    .line 8
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    iput v1, p0, Landroidx/appcompat/app/h;->l0:I

    :cond_43
    :goto_43
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroidx/appcompat/app/h;->m0:Z

    .line 11
    iget p1, p0, Landroidx/appcompat/app/h;->l0:I

    return p1
.end method

.method private t0(Landroid/content/Context;)Landroidx/appcompat/app/h$q;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->o0:Landroidx/appcompat/app/h$q;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/appcompat/app/h$p;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h$p;-><init>(Landroidx/appcompat/app/h;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/h;->o0:Landroidx/appcompat/app/h$q;

    .line 3
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/app/h;->o0:Landroidx/appcompat/app/h$q;

    return-object p1
.end method

.method private u0(Landroid/content/Context;)Landroidx/appcompat/app/h$q;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->n0:Landroidx/appcompat/app/h$q;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Landroidx/appcompat/app/h$r;

    .line 3
    invoke-static {p1}, Landroidx/appcompat/app/t;->a(Landroid/content/Context;)Landroidx/appcompat/app/t;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h$r;-><init>(Landroidx/appcompat/app/h;Landroidx/appcompat/app/t;)V

    iput-object v0, p0, Landroidx/appcompat/app/h;->n0:Landroidx/appcompat/app/h$q;

    .line 4
    :cond_f
    iget-object p1, p0, Landroidx/appcompat/app/h;->n0:Landroidx/appcompat/app/h$q;

    return-object p1
.end method

.method private z0()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/h;->n0()V

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->W:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroidx/appcompat/app/h;->E:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_c

    goto :goto_38

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_20

    .line 4
    new-instance v0, Landroidx/appcompat/app/u;

    iget-object v1, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Landroidx/appcompat/app/h;->X:Z

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/u;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/h;->E:Landroidx/appcompat/app/a;

    goto :goto_2f

    .line 5
    :cond_20
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2f

    .line 6
    new-instance v0, Landroidx/appcompat/app/u;

    iget-object v1, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/u;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroidx/appcompat/app/h;->E:Landroidx/appcompat/app/a;

    .line 7
    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroidx/appcompat/app/h;->E:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_38

    .line 8
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->s0:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->q(Z)V

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public C(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->W:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroidx/appcompat/app/h;->Q:Z

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->w()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->l(Landroid/content/res/Configuration;)V

    .line 4
    :cond_11
    invoke-static {}, Landroidx/appcompat/widget/j;->b()Landroidx/appcompat/widget/j;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/j;->g(Landroid/content/Context;)V

    .line 5
    new-instance p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Landroidx/appcompat/app/h;->i0:Landroid/content/res/Configuration;

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h;->V(Z)Z

    return-void
.end method

.method public D(Landroid/os/Bundle;)V
    .registers 4

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/h;->f0:Z

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h;->V(Z)Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/h;->o0()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    .line 5
    :try_start_11
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroidx/core/app/j;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    nop

    :goto_19
    if-eqz v1, :cond_27

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->Q0()Landroidx/appcompat/app/a;

    move-result-object v0

    if-nez v0, :cond_24

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/app/h;->s0:Z

    goto :goto_27

    .line 8
    :cond_24
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->q(Z)V

    .line 9
    :cond_27
    :goto_27
    invoke-static {p0}, Landroidx/appcompat/app/g;->e(Landroidx/appcompat/app/g;)V

    .line 10
    :cond_2a
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroidx/appcompat/app/h;->i0:Landroid/content/res/Configuration;

    .line 11
    iput-boolean p1, p0, Landroidx/appcompat/app/h;->g0:Z

    return-void
.end method

.method public E()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 2
    invoke-static {p0}, Landroidx/appcompat/app/g;->K(Landroidx/appcompat/app/g;)V

    .line 3
    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->p0:Z

    if-eqz v0, :cond_18

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/h;->r0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_18
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/h;->h0:Z

    .line 6
    iget v0, p0, Landroidx/appcompat/app/h;->j0:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_45

    iget-object v0, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_45

    check-cast v0, Landroid/app/Activity;

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 8
    sget-object v0, Landroidx/appcompat/app/h;->x0:Lo/g;

    iget-object v1, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/app/h;->j0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 9
    :cond_45
    sget-object v0, Landroidx/appcompat/app/h;->x0:Lo/g;

    iget-object v1, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_54
    iget-object v0, p0, Landroidx/appcompat/app/h;->E:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_5b

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->m()V

    .line 12
    :cond_5b
    invoke-direct {p0}, Landroidx/appcompat/app/h;->d0()V

    return-void
.end method

.method public E0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->P:Z

    return v0
.end method

.method public F(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/h;->n0()V

    return-void
.end method

.method F0(Landroid/content/Context;I)I
    .registers 5

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_46

    if-eq p2, v1, :cond_45

    if-eqz p2, :cond_23

    const/4 v0, 0x1

    if-eq p2, v0, :cond_45

    const/4 v0, 0x2

    if-eq p2, v0, :cond_45

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1b

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h;->t0(Landroid/content/Context;)Landroidx/appcompat/app/h$q;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/h$q;->c()I

    move-result p1

    return p1

    .line 2
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_23
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3c

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    .line 6
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3c

    return v1

    .line 7
    :cond_3c
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h;->u0(Landroid/content/Context;)Landroidx/appcompat/app/h$q;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/h$q;->c()I

    move-result p1

    return p1

    :cond_45
    return p2

    :cond_46
    return v1
.end method

.method public G()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->w()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->s(Z)V

    :cond_a
    return-void
.end method

.method G0()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    return v1

    .line 3
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->w()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->g()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public H(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method H0(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_a

    goto :goto_1a

    .line 1
    :cond_a
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/h;->I0(ILandroid/view/KeyEvent;)Z

    return v1

    .line 2
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Landroidx/appcompat/app/h;->e0:Z

    :goto_1a
    return v2
.end method

.method public I()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h;->V(Z)Z

    return-void
.end method

.method public J()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->w()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->s(Z)V

    :cond_a
    return-void
.end method

.method J0(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->w()Landroidx/appcompat/app/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/a;->n(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    .line 3
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/app/h;->d0:Landroidx/appcompat/app/h$u;

    if-eqz p1, :cond_23

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/appcompat/app/h;->R0(Landroidx/appcompat/app/h$u;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/h;->d0:Landroidx/appcompat/app/h$u;

    if-eqz p1, :cond_22

    .line 6
    iput-boolean v1, p1, Landroidx/appcompat/app/h$u;->n:Z

    :cond_22
    return v1

    .line 7
    :cond_23
    iget-object p1, p0, Landroidx/appcompat/app/h;->d0:Landroidx/appcompat/app/h$u;

    const/4 v0, 0x0

    if-nez p1, :cond_3c

    .line 8
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/h;->S0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)Z

    .line 10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v1}, Landroidx/appcompat/app/h;->R0(Landroidx/appcompat/app/h$u;ILandroid/view/KeyEvent;I)Z

    move-result p2

    .line 11
    iput-boolean v0, p1, Landroidx/appcompat/app/h$u;->m:Z

    if-eqz p2, :cond_3c

    return v1

    :cond_3c
    return v0
.end method

.method K0(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_a

    goto :goto_29

    .line 1
    :cond_a
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/h;->L0(ILandroid/view/KeyEvent;)Z

    return v1

    .line 2
    :cond_e
    iget-boolean p1, p0, Landroidx/appcompat/app/h;->e0:Z

    .line 3
    iput-boolean v2, p0, Landroidx/appcompat/app/h;->e0:Z

    .line 4
    invoke-virtual {p0, v2, v2}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 5
    iget-boolean v0, p2, Landroidx/appcompat/app/h$u;->o:Z

    if-eqz v0, :cond_22

    if-nez p1, :cond_21

    .line 6
    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/app/h;->f0(Landroidx/appcompat/app/h$u;Z)V

    :cond_21
    return v1

    .line 7
    :cond_22
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->G0()Z

    move-result p1

    if-eqz p1, :cond_29

    return v1

    :cond_29
    :goto_29
    return v2
.end method

.method public M(I)Z
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h;->U0(I)I

    move-result p1

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->a0:Z

    const/4 v1, 0x0

    const/16 v2, 0x6c

    if-eqz v0, :cond_e

    if-ne p1, v2, :cond_e

    return v1

    .line 3
    :cond_e
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->W:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    if-ne p1, v3, :cond_17

    .line 4
    iput-boolean v1, p0, Landroidx/appcompat/app/h;->W:Z

    :cond_17
    if-eq p1, v3, :cond_4e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_48

    const/4 v0, 0x5

    if-eq p1, v0, :cond_42

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3c

    if-eq p1, v2, :cond_36

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_30

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 6
    :cond_30
    invoke-direct {p0}, Landroidx/appcompat/app/h;->b1()V

    .line 7
    iput-boolean v3, p0, Landroidx/appcompat/app/h;->X:Z

    return v3

    .line 8
    :cond_36
    invoke-direct {p0}, Landroidx/appcompat/app/h;->b1()V

    .line 9
    iput-boolean v3, p0, Landroidx/appcompat/app/h;->W:Z

    return v3

    .line 10
    :cond_3c
    invoke-direct {p0}, Landroidx/appcompat/app/h;->b1()V

    .line 11
    iput-boolean v3, p0, Landroidx/appcompat/app/h;->Y:Z

    return v3

    .line 12
    :cond_42
    invoke-direct {p0}, Landroidx/appcompat/app/h;->b1()V

    .line 13
    iput-boolean v3, p0, Landroidx/appcompat/app/h;->V:Z

    return v3

    .line 14
    :cond_48
    invoke-direct {p0}, Landroidx/appcompat/app/h;->b1()V

    .line 15
    iput-boolean v3, p0, Landroidx/appcompat/app/h;->U:Z

    return v3

    .line 16
    :cond_4e
    invoke-direct {p0}, Landroidx/appcompat/app/h;->b1()V

    .line 17
    iput-boolean v3, p0, Landroidx/appcompat/app/h;->a0:Z

    return v3
.end method

.method M0(I)V
    .registers 3

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_e

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->w()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->h(Z)V

    :cond_e
    return-void
.end method

.method N0(I)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_f

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->w()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->h(Z)V

    goto :goto_1d

    :cond_f
    if-nez p1, :cond_1d

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object p1

    .line 4
    iget-boolean v1, p1, Landroidx/appcompat/app/h$u;->o:Z

    if-eqz v1, :cond_1d

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/h;->f0(Landroidx/appcompat/app/h$u;Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method O0(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public P(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/h;->n0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/h;->C:Landroidx/appcompat/app/h$o;

    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/h$o;->c(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public Q(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/h;->n0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/h;->C:Landroidx/appcompat/app/h$o;

    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/h$o;->c(Landroid/view/Window$Callback;)V

    return-void
.end method

.method final Q0()Landroidx/appcompat/app/a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->E:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method public R(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/h;->n0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/h;->C:Landroidx/appcompat/app/h$o;

    iget-object p2, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/h$o;->c(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public S(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/app/h;->k0:I

    return-void
.end method

.method public final T(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h;->G:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 4
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->Q0()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->Q0()Landroidx/appcompat/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->u(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 6
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/app/h;->S:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method V0(Landroid/content/res/Configuration;Landroidx/core/os/h;)V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 2
    invoke-static {p1, p2}, Landroidx/appcompat/app/h$m;->d(Landroid/content/res/Configuration;Landroidx/core/os/h;)V

    goto :goto_24

    :cond_a
    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1e

    .line 3
    invoke-virtual {p2, v2}, Landroidx/core/os/h;->d(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/appcompat/app/h$k;->d(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 4
    invoke-virtual {p2, v2}, Landroidx/core/os/h;->d(I)Ljava/util/Locale;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/appcompat/app/h$k;->c(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    goto :goto_24

    .line 5
    :cond_1e
    invoke-virtual {p2, v2}, Landroidx/core/os/h;->d(I)Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_24
    return-void
.end method

.method public W()Z
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h;->V(Z)Z

    move-result v0

    return v0
.end method

.method W0(Landroidx/core/os/h;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 2
    invoke-static {p1}, Landroidx/appcompat/app/h$m;->c(Landroidx/core/os/h;)V

    goto :goto_12

    :cond_a
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroidx/core/os/h;->d(I)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :goto_12
    return-void
.end method

.method final X0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->Q:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroidx/core/view/a0;->U(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method Z(Landroid/content/Context;)Landroidx/core/os/h;
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x21

    if-lt v0, v2, :cond_8

    return-object v1

    .line 2
    :cond_8
    invoke-static {}, Landroidx/appcompat/app/g;->u()Landroidx/core/os/h;

    move-result-object v2

    if-nez v2, :cond_f

    return-object v1

    .line 3
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h;->v0(Landroid/content/res/Configuration;)Landroidx/core/os/h;

    move-result-object p1

    const/16 v1, 0x18

    if-lt v0, v1, :cond_28

    .line 6
    invoke-static {v2, p1}, Landroidx/appcompat/app/q;->b(Landroidx/core/os/h;Landroidx/core/os/h;)Landroidx/core/os/h;

    move-result-object v0

    goto :goto_40

    .line 7
    :cond_28
    invoke-virtual {v2}, Landroidx/core/os/h;->f()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 8
    invoke-static {}, Landroidx/core/os/h;->e()Landroidx/core/os/h;

    move-result-object v0

    goto :goto_40

    :cond_33
    const/4 v0, 0x0

    .line 9
    invoke-virtual {v2, v0}, Landroidx/core/os/h;->d(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/h;->c(Ljava/lang/String;)Landroidx/core/os/h;

    move-result-object v0

    .line 10
    :goto_40
    invoke-virtual {v0}, Landroidx/core/os/h;->f()Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_48

    :cond_47
    move-object p1, v0

    :goto_48
    return-object p1
.end method

.method public Z0(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .registers 4

    if-eqz p1, :cond_30

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    .line 3
    :cond_9
    new-instance v0, Landroidx/appcompat/app/h$j;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h$j;-><init>(Landroidx/appcompat/app/h;Landroidx/appcompat/view/b$a;)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->w()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->v(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    if-eqz p1, :cond_23

    .line 6
    iget-object v1, p0, Landroidx/appcompat/app/h;->D:Landroidx/appcompat/app/d;

    if-eqz v1, :cond_23

    .line 7
    invoke-interface {v1, p1}, Landroidx/appcompat/app/d;->e(Landroidx/appcompat/view/b;)V

    .line 8
    :cond_23
    iget-object p1, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    if-nez p1, :cond_2d

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/h;->a1(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    .line 10
    :cond_2d
    iget-object p1, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    return-object p1

    .line 11
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->y0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->h0:Z

    if-nez v1, :cond_1b

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->D()Landroidx/appcompat/view/menu/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h;->p0(Landroid/view/Menu;)Landroidx/appcompat/app/h$u;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 4
    iget p1, p1, Landroidx/appcompat/app/h$u;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method a1(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->m0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    .line 4
    :cond_a
    instance-of v0, p1, Landroidx/appcompat/app/h$j;

    if-nez v0, :cond_14

    .line 5
    new-instance v0, Landroidx/appcompat/app/h$j;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h$j;-><init>(Landroidx/appcompat/app/h;Landroidx/appcompat/view/b$a;)V

    move-object p1, v0

    .line 6
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/app/h;->D:Landroidx/appcompat/app/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-boolean v2, p0, Landroidx/appcompat/app/h;->h0:Z

    if-nez v2, :cond_22

    .line 7
    :try_start_1d
    invoke-interface {v0, p1}, Landroidx/appcompat/app/d;->v(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/AbstractMethodError; {:try_start_1d .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    :cond_22
    move-object v0, v1

    :goto_23
    if-eqz v0, :cond_29

    .line 8
    iput-object v0, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    goto/16 :goto_15b

    .line 9
    :cond_29
    iget-object v0, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_d4

    .line 10
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->Z:Z

    if-eqz v0, :cond_b5

    .line 11
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 12
    iget-object v4, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 13
    sget v5, Lf/a;->f:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 14
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_68

    .line 15
    iget-object v5, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 17
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 18
    new-instance v4, Landroidx/appcompat/view/d;

    iget-object v6, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_6a

    .line 20
    :cond_68
    iget-object v4, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    .line 21
    :goto_6a
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    .line 22
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Lf/a;->i:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 23
    invoke-static {v5, v6}, Landroidx/core/widget/i;->b(Landroid/widget/PopupWindow;I)V

    .line 24
    iget-object v5, p0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 25
    iget-object v5, p0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lf/a;->b:I

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 27
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 28
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 29
    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 30
    iget-object v4, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 31
    iget-object v0, p0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 32
    new-instance v0, Landroidx/appcompat/app/h$f;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/h$f;-><init>(Landroidx/appcompat/app/h;)V

    iput-object v0, p0, Landroidx/appcompat/app/h;->N:Ljava/lang/Runnable;

    goto :goto_d4

    .line 33
    :cond_b5
    iget-object v0, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    sget v4, Lf/f;->h:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v0, :cond_d4

    .line 34
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->r0()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 35
    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    .line 36
    :cond_d4
    :goto_d4
    iget-object v0, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_15b

    .line 37
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->m0()V

    .line 38
    iget-object v0, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    .line 39
    new-instance v0, Landroidx/appcompat/view/e;

    iget-object v4, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    if-nez v6, :cond_ef

    goto :goto_f0

    :cond_ef
    const/4 v3, 0x0

    :goto_f0
    invoke-direct {v0, v4, v5, p1, v3}, Landroidx/appcompat/view/e;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/b$a;Z)V

    .line 40
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->e()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_159

    .line 41
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->k()V

    .line 42
    iget-object p1, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->h(Landroidx/appcompat/view/b;)V

    .line 43
    iput-object v0, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    .line 44
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->X0()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_12a

    .line 45
    iget-object p1, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 46
    iget-object p1, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Landroidx/core/view/a0;->e(Landroid/view/View;)Landroidx/core/view/g0;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/g0;->b(F)Landroidx/core/view/g0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    .line 47
    new-instance v0, Landroidx/appcompat/app/h$g;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/h$g;-><init>(Landroidx/appcompat/app/h;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/g0;->h(Landroidx/core/view/h0;)Landroidx/core/view/g0;

    goto :goto_149

    .line 48
    :cond_12a
    iget-object p1, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 49
    iget-object p1, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_149

    .line 51
    iget-object p1, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/a0;->n0(Landroid/view/View;)V

    .line 52
    :cond_149
    :goto_149
    iget-object p1, p0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_15b

    .line 53
    iget-object p1, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/h;->N:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_15b

    .line 54
    :cond_159
    iput-object v1, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    .line 55
    :cond_15b
    :goto_15b
    iget-object p1, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    if-eqz p1, :cond_166

    iget-object v0, p0, Landroidx/appcompat/app/h;->D:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_166

    .line 56
    invoke-interface {v0, p1}, Landroidx/appcompat/app/d;->e(Landroidx/appcompat/view/b;)V

    .line 57
    :cond_166
    iget-object p1, p0, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    return-object p1
.end method

.method public b(Landroidx/appcompat/view/menu/g;)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h;->T0(Z)V

    return-void
.end method

.method b0(ILandroidx/appcompat/app/h$u;Landroid/view/Menu;)V
    .registers 6

    if-nez p3, :cond_11

    if-nez p2, :cond_d

    if-ltz p1, :cond_d

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->c0:[Landroidx/appcompat/app/h$u;

    array-length v1, v0

    if-ge p1, v1, :cond_d

    .line 2
    aget-object p2, v0, p1

    :cond_d
    if-eqz p2, :cond_11

    .line 3
    iget-object p3, p2, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    :cond_11
    if-eqz p2, :cond_18

    .line 4
    iget-boolean p2, p2, Landroidx/appcompat/app/h$u;->o:Z

    if-nez p2, :cond_18

    return-void

    .line 5
    :cond_18
    iget-boolean p2, p0, Landroidx/appcompat/app/h;->h0:Z

    if-nez p2, :cond_27

    .line 6
    iget-object p2, p0, Landroidx/appcompat/app/h;->C:Landroidx/appcompat/app/h$o;

    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p2, v0, p1, p3}, Landroidx/appcompat/app/h$o;->d(Landroid/view/Window$Callback;ILandroid/view/Menu;)V

    :cond_27
    return-void
.end method

.method c0(Landroidx/appcompat/view/menu/g;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h;->b0:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/h;->b0:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->i()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->y0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/app/h;->h0:Z

    if-nez v1, :cond_1c

    const/16 v1, 0x6c

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1c
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/app/h;->b0:Z

    return-void
.end method

.method e0(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/h;->f0(Landroidx/appcompat/app/h$u;Z)V

    return-void
.end method

.method public f(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/h;->n0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/app/h;->C:Landroidx/appcompat/app/h$o;

    iget-object p2, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/h$o;->c(Landroid/view/Window$Callback;)V

    return-void
.end method

.method f0(Landroidx/appcompat/app/h$u;Z)V
    .registers 6

    if-eqz p2, :cond_16

    .line 1
    iget v0, p1, Landroidx/appcompat/app/h$u;->a:I

    if-nez v0, :cond_16

    iget-object v0, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz v0, :cond_16

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    iget-object p1, p1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h;->c0(Landroidx/appcompat/view/menu/g;)V

    return-void

    .line 4
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 5
    iget-boolean v2, p1, Landroidx/appcompat/app/h$u;->o:Z

    if-eqz v2, :cond_35

    iget-object v2, p1, Landroidx/appcompat/app/h$u;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_35

    .line 6
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_35

    .line 7
    iget p2, p1, Landroidx/appcompat/app/h$u;->a:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/h;->b0(ILandroidx/appcompat/app/h$u;Landroid/view/Menu;)V

    :cond_35
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Landroidx/appcompat/app/h$u;->m:Z

    .line 9
    iput-boolean p2, p1, Landroidx/appcompat/app/h$u;->n:Z

    .line 10
    iput-boolean p2, p1, Landroidx/appcompat/app/h$u;->o:Z

    .line 11
    iput-object v1, p1, Landroidx/appcompat/app/h$u;->h:Landroid/view/View;

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p1, Landroidx/appcompat/app/h$u;->q:Z

    .line 13
    iget-object p2, p0, Landroidx/appcompat/app/h;->d0:Landroidx/appcompat/app/h$u;

    if-ne p2, p1, :cond_47

    .line 14
    iput-object v1, p0, Landroidx/appcompat/app/h;->d0:Landroidx/appcompat/app/h$u;

    :cond_47
    return-void
.end method

.method g()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/app/g;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    invoke-static {}, Landroidx/appcompat/app/g;->u()Landroidx/core/os/h;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 3
    invoke-static {}, Landroidx/appcompat/app/g;->u()Landroidx/core/os/h;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/app/g;->v()Landroidx/core/os/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/os/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/g;->i(Landroid/content/Context;)V

    :cond_21
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h;->V(Z)Z

    move-result v0

    return v0
.end method

.method final g1(Landroidx/core/view/k0;Landroid/graphics/Rect;)I
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/k0;->l()I

    move-result v1

    goto :goto_e

    :cond_8
    if-eqz p2, :cond_d

    .line 2
    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 3
    :goto_e
    iget-object v2, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_10d

    .line 4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_10d

    .line 5
    iget-object v2, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget-object v4, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_fb

    .line 8
    iget-object v4, p0, Landroidx/appcompat/app/h;->t0:Landroid/graphics/Rect;

    if-nez v4, :cond_3f

    .line 9
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/app/h;->t0:Landroid/graphics/Rect;

    .line 10
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/app/h;->u0:Landroid/graphics/Rect;

    .line 11
    :cond_3f
    iget-object v4, p0, Landroidx/appcompat/app/h;->t0:Landroid/graphics/Rect;

    .line 12
    iget-object v6, p0, Landroidx/appcompat/app/h;->u0:Landroid/graphics/Rect;

    if-nez p1, :cond_49

    .line 13
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5c

    .line 14
    :cond_49
    invoke-virtual {p1}, Landroidx/core/view/k0;->j()I

    move-result p2

    .line 15
    invoke-virtual {p1}, Landroidx/core/view/k0;->l()I

    move-result v7

    .line 16
    invoke-virtual {p1}, Landroidx/core/view/k0;->k()I

    move-result v8

    .line 17
    invoke-virtual {p1}, Landroidx/core/view/k0;->i()I

    move-result p1

    .line 18
    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    :goto_5c
    iget-object p1, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    invoke-static {p1, v4, v6}, Landroidx/appcompat/widget/f1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 20
    iget p1, v4, Landroid/graphics/Rect;->top:I

    .line 21
    iget p2, v4, Landroid/graphics/Rect;->left:I

    .line 22
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 23
    iget-object v6, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    invoke-static {v6}, Landroidx/core/view/a0;->K(Landroid/view/View;)Landroidx/core/view/k0;

    move-result-object v6

    if-nez v6, :cond_71

    const/4 v7, 0x0

    goto :goto_75

    .line 24
    :cond_71
    invoke-virtual {v6}, Landroidx/core/view/k0;->j()I

    move-result v7

    :goto_75
    if-nez v6, :cond_79

    const/4 v6, 0x0

    goto :goto_7d

    .line 25
    :cond_79
    invoke-virtual {v6}, Landroidx/core/view/k0;->k()I

    move-result v6

    .line 26
    :goto_7d
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_8c

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_8c

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 p2, 0x0

    goto :goto_93

    .line 27
    :cond_8c
    :goto_8c
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 29
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 p2, 0x1

    :goto_93
    if-lez p1, :cond_bb

    .line 30
    iget-object p1, p0, Landroidx/appcompat/app/h;->T:Landroid/view/View;

    if-nez p1, :cond_bb

    .line 31
    new-instance p1, Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/h;->T:Landroid/view/View;

    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 34
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 35
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 36
    iget-object v4, p0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroidx/appcompat/app/h;->T:Landroid/view/View;

    invoke-virtual {v4, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_de

    .line 37
    :cond_bb
    iget-object p1, p0, Landroidx/appcompat/app/h;->T:Landroid/view/View;

    if-eqz p1, :cond_de

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v8, :cond_d3

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v7, :cond_d3

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v4, v6, :cond_de

    .line 40
    :cond_d3
    iput v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 41
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 42
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 43
    iget-object v4, p0, Landroidx/appcompat/app/h;->T:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_de
    :goto_de
    iget-object p1, p0, Landroidx/appcompat/app/h;->T:Landroid/view/View;

    if-eqz p1, :cond_e3

    goto :goto_e4

    :cond_e3
    const/4 v5, 0x0

    :goto_e4
    if-eqz v5, :cond_f1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_f1

    .line 46
    iget-object p1, p0, Landroidx/appcompat/app/h;->T:Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/h;->h1(Landroid/view/View;)V

    .line 47
    :cond_f1
    iget-boolean p1, p0, Landroidx/appcompat/app/h;->Y:Z

    if-nez p1, :cond_f8

    if-eqz v5, :cond_f8

    const/4 v1, 0x0

    :cond_f8
    move p1, v5

    move v5, p2

    goto :goto_105

    .line 48
    :cond_fb
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_103

    .line 49
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p1, 0x0

    goto :goto_105

    :cond_103
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_105
    if-eqz v5, :cond_10e

    .line 50
    iget-object p2, p0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10e

    :cond_10d
    const/4 p1, 0x0

    .line 51
    :cond_10e
    :goto_10e
    iget-object p2, p0, Landroidx/appcompat/app/h;->T:Landroid/view/View;

    if-eqz p2, :cond_11a

    if-eqz p1, :cond_115

    goto :goto_117

    :cond_115
    const/16 v0, 0x8

    .line 52
    :goto_117
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_11a
    return v1
.end method

.method public i0(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->v0:Landroidx/appcompat/app/l;

    const/4 v1, 0x0

    if-nez v0, :cond_5b

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    sget-object v2, Lf/j;->y0:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    sget v2, Lf/j;->C0:I

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 5
    new-instance v0, Landroidx/appcompat/app/l;

    invoke-direct {v0}, Landroidx/appcompat/app/l;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/h;->v0:Landroidx/appcompat/app/l;

    goto :goto_5b

    .line 6
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/l;

    iput-object v2, p0, Landroidx/appcompat/app/h;->v0:Landroidx/appcompat/app/l;
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_38

    goto :goto_5b

    :catchall_38
    move-exception v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    new-instance v0, Landroidx/appcompat/app/l;

    invoke-direct {v0}, Landroidx/appcompat/app/l;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/h;->v0:Landroidx/appcompat/app/l;

    .line 12
    :cond_5b
    :goto_5b
    sget-boolean v8, Landroidx/appcompat/app/h;->y0:Z

    const/4 v0, 0x1

    if-eqz v8, :cond_8e

    .line 13
    iget-object v2, p0, Landroidx/appcompat/app/h;->w0:Landroidx/appcompat/app/p;

    if-nez v2, :cond_6b

    .line 14
    new-instance v2, Landroidx/appcompat/app/p;

    invoke-direct {v2}, Landroidx/appcompat/app/p;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/app/h;->w0:Landroidx/appcompat/app/p;

    .line 15
    :cond_6b
    iget-object v2, p0, Landroidx/appcompat/app/h;->w0:Landroidx/appcompat/app/p;

    invoke-virtual {v2, p4}, Landroidx/appcompat/app/p;->a(Landroid/util/AttributeSet;)Z

    move-result v2

    if-eqz v2, :cond_75

    const/4 v7, 0x1

    goto :goto_8f

    .line 16
    :cond_75
    instance-of v2, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v2, :cond_84

    .line 17
    move-object v2, p4

    check-cast v2, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_8c

    const/4 v1, 0x1

    goto :goto_8c

    .line 18
    :cond_84
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/h;->Y0(Landroid/view/ViewParent;)Z

    move-result v0

    move v1, v0

    :cond_8c
    :goto_8c
    move v7, v1

    goto :goto_8f

    :cond_8e
    const/4 v7, 0x0

    .line 19
    :goto_8f
    iget-object v2, p0, Landroidx/appcompat/app/h;->v0:Landroidx/appcompat/app/l;

    const/4 v9, 0x1

    .line 20
    invoke-static {}, Landroidx/appcompat/widget/e1;->c()Z

    move-result v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 21
    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/app/l;->r(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method j0()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->i()V

    .line 3
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/h;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6
    :try_start_1e
    iget-object v0, p0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    .line 8
    :cond_26
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->m0()V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 10
    iget-object v0, v0, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_37

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->close()V

    :cond_37
    return-void
.end method

.method public k(Landroid/content/Context;)Landroid/content/Context;
    .registers 11

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/app/h;->f0:Z

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/app/h;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/h;->F0(Landroid/content/Context;I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroidx/appcompat/app/g;->z(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4
    invoke-static {p1}, Landroidx/appcompat/app/g;->U(Landroid/content/Context;)V

    .line 5
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h;->Z(Landroid/content/Context;)Landroidx/core/os/h;

    move-result-object v8

    .line 6
    sget-boolean v2, Landroidx/appcompat/app/h;->B0:Z

    if-eqz v2, :cond_32

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_32

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, v1

    move-object v5, v8

    .line 7
    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/app/h;->g0(Landroid/content/Context;ILandroidx/core/os/h;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v2

    .line 8
    :try_start_2a
    move-object v3, p1

    check-cast v3, Landroid/view/ContextThemeWrapper;

    invoke-static {v3, v2}, Landroidx/appcompat/app/h$s;->a(Landroid/view/ContextThemeWrapper;Landroid/content/res/Configuration;)V
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_30} :catch_31

    return-object p1

    :catch_31
    nop

    .line 9
    :cond_32
    instance-of v2, p1, Landroidx/appcompat/view/d;

    if-eqz v2, :cond_48

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, v1

    move-object v5, v8

    .line 10
    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/app/h;->g0(Landroid/content/Context;ILandroidx/core/os/h;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v2

    .line 11
    :try_start_40
    move-object v3, p1

    check-cast v3, Landroidx/appcompat/view/d;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/d;->a(Landroid/content/res/Configuration;)V
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_46} :catch_47

    return-object p1

    :catch_47
    nop

    .line 12
    :cond_48
    sget-boolean v2, Landroidx/appcompat/app/h;->A0:Z

    if-nez v2, :cond_51

    .line 13
    invoke-super {p0, p1}, Landroidx/appcompat/app/g;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1

    :cond_51
    const/4 v2, 0x0

    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_85

    .line 15
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, -0x1

    .line 16
    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x0

    .line 17
    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 18
    invoke-static {p1, v3}, Landroidx/appcompat/app/h$k;->a(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 21
    iget v5, v4, Landroid/content/res/Configuration;->uiMode:I

    iput v5, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 22
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_85

    .line 23
    invoke-static {v3, v4}, Landroidx/appcompat/app/h;->q0(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    :cond_85
    move-object v6, v2

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, v1

    move-object v5, v8

    .line 24
    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/app/h;->g0(Landroid/content/Context;ILandroidx/core/os/h;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v1

    .line 25
    new-instance v2, Landroidx/appcompat/view/d;

    sget v3, Lf/i;->c:I

    .line 26
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h;->s0(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9c

    const/4 v4, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v4, 0x0

    :goto_9d
    invoke-direct {v2, p1, v3, v4}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;IZ)V

    .line 27
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/d;->a(Landroid/content/res/Configuration;)V

    .line 28
    :try_start_a3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_a7
    .catch Ljava/lang/NullPointerException; {:try_start_a3 .. :try_end_a7} :catch_ad

    if-eqz p1, :cond_aa

    goto :goto_ab

    :cond_aa
    const/4 v0, 0x0

    :goto_ab
    move v5, v0

    goto :goto_ae

    :catch_ad
    nop

    :goto_ae
    if-eqz v5, :cond_b7

    .line 29
    invoke-virtual {v2}, Landroidx/appcompat/view/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/content/res/h$g;->a(Landroid/content/res/Resources$Theme;)V

    .line 30
    :cond_b7
    invoke-super {p0, v2}, Landroidx/appcompat/app/g;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method k0(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/core/view/f$a;

    const/4 v2, 0x1

    if-nez v1, :cond_b

    instance-of v0, v0, Landroidx/appcompat/app/j;

    if-eqz v0, :cond_1a

    .line 2
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3
    invoke-static {v0, p1}, Landroidx/core/view/f;->d(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    .line 4
    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_31

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/h;->C:Landroidx/appcompat/app/h$o;

    iget-object v1, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/h$o;->b(Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_31

    return v2

    .line 6
    :cond_31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    if-eqz v2, :cond_44

    .line 8
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/h;->H0(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_48

    :cond_44
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/h;->K0(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_48
    return p1
.end method

.method l0(I)V
    .registers 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object v1

    .line 2
    iget-object v2, v1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_25

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v3, v1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/g;->Q(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 6
    iput-object v2, v1, Landroidx/appcompat/app/h$u;->s:Landroid/os/Bundle;

    .line 7
    :cond_1b
    iget-object v2, v1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->d0()V

    .line 8
    iget-object v2, v1, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->clear()V

    .line 9
    :cond_25
    iput-boolean v0, v1, Landroidx/appcompat/app/h$u;->r:Z

    .line 10
    iput-boolean v0, v1, Landroidx/appcompat/app/h$u;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2f

    if-nez p1, :cond_40

    .line 11
    :cond_2f
    iget-object p1, p0, Landroidx/appcompat/app/h;->H:Landroidx/appcompat/widget/d0;

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, p1}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 13
    iput-boolean p1, v0, Landroidx/appcompat/app/h$u;->m:Z

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/h;->S0(Landroidx/appcompat/app/h$u;Landroid/view/KeyEvent;)Z

    :cond_40
    return-void
.end method

.method m0()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroidx/core/view/g0;->c()V

    :cond_7
    return-void
.end method

.method public n(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/h;->n0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/app/h;->i0(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/h;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    return-object v0
.end method

.method p0(Landroid/view/Menu;)Landroidx/appcompat/app/h$u;
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->c0:[Landroidx/appcompat/app/h$u;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    array-length v2, v0

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-ge v1, v2, :cond_16

    .line 3
    aget-object v3, v0, v1

    if-eqz v3, :cond_13

    .line 4
    iget-object v4, v3, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-ne v4, p1, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public r()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/app/h;->j0:I

    return v0
.end method

.method final r0()Landroid/content/Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->w()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->j()Landroid/content/Context;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_10

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    :cond_10
    return-object v0
.end method

.method public t()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->F:Landroid/view/MenuInflater;

    if-nez v0, :cond_19

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/app/h;->z0()V

    .line 3
    new-instance v0, Landroidx/appcompat/view/g;

    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/h;->E:Landroidx/appcompat/app/a;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroidx/appcompat/app/a;->j()Landroid/content/Context;

    move-result-object v1

    goto :goto_14

    :cond_12
    iget-object v1, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    :goto_14
    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/h;->F:Landroid/view/MenuInflater;

    .line 5
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/app/h;->F:Landroid/view/MenuInflater;

    return-object v0
.end method

.method v0(Landroid/content/res/Configuration;)Landroidx/core/os/h;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 2
    invoke-static {p1}, Landroidx/appcompat/app/h$m;->b(Landroid/content/res/Configuration;)Landroidx/core/os/h;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    .line 3
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p1}, Landroidx/appcompat/app/h$l;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/h;->c(Ljava/lang/String;)Landroidx/core/os/h;

    move-result-object p1

    return-object p1

    :cond_1a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    .line 4
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/core/os/h;->a([Ljava/util/Locale;)Landroidx/core/os/h;

    move-result-object p1

    return-object p1
.end method

.method public w()Landroidx/appcompat/app/a;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/h;->z0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h;->E:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method protected w0(IZ)Landroidx/appcompat/app/h$u;
    .registers 6

    .line 1
    iget-object p2, p0, Landroidx/appcompat/app/h;->c0:[Landroidx/appcompat/app/h$u;

    if-eqz p2, :cond_7

    array-length v0, p2

    if-gt v0, p1, :cond_15

    :cond_7
    add-int/lit8 v0, p1, 0x1

    .line 2
    new-array v0, v0, [Landroidx/appcompat/app/h$u;

    if-eqz p2, :cond_12

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_12
    iput-object v0, p0, Landroidx/appcompat/app/h;->c0:[Landroidx/appcompat/app/h$u;

    move-object p2, v0

    .line 5
    :cond_15
    aget-object v0, p2, p1

    if-nez v0, :cond_20

    .line 6
    new-instance v0, Landroidx/appcompat/app/h$u;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/h$u;-><init>(I)V

    aput-object v0, p2, p1

    :cond_20
    return-object v0
.end method

.method public x()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_10

    .line 3
    invoke-static {v0, p0}, Landroidx/core/view/g;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1f

    .line 4
    :cond_10
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/app/h;

    if-nez v0, :cond_1f

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method final x0()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->z:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/h;->G:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public y()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h;->Q0()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->w()Landroidx/appcompat/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->k()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_15

    :cond_11
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h;->D0(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method final y0()Landroid/view/Window$Callback;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.appcompat.app.h.a (androidx.appcompat.app.h$a)
.class Landroidx/appcompat/app/h$a;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Landroid/content/res/Resources$NotFoundException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    const-string v0, "drawable"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Drawable"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    :cond_1c
    return v1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Landroidx/appcompat/app/h$a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 6
    iget-object p2, p0, Landroidx/appcompat/app/h$a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p2, p1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_39

    .line 7
    :cond_34
    iget-object v0, p0, Landroidx/appcompat/app/h$a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_39
    return-void
.end method

###### Class androidx.appcompat.app.h.b (androidx.appcompat.app.h$b)
.class Landroidx/appcompat/app/h$b;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$b;->o:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$b;->o:Landroidx/appcompat/app/h;

    iget v1, v0, Landroidx/appcompat/app/h;->q0:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 2
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/h;->l0(I)V

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/h$b;->o:Landroidx/appcompat/app/h;

    iget v1, v0, Landroidx/appcompat/app/h;->q0:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_19

    const/16 v1, 0x6c

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/h;->l0(I)V

    .line 5
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/app/h$b;->o:Landroidx/appcompat/app/h;

    iput-boolean v2, v0, Landroidx/appcompat/app/h;->p0:Z

    .line 6
    iput v2, v0, Landroidx/appcompat/app/h;->q0:I

    return-void
.end method

###### Class androidx.appcompat.app.h.c (androidx.appcompat.app.h$c)
.class Landroidx/appcompat/app/h$c;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/core/view/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h;->h0()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$c;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/k0;)Landroidx/core/view/k0;
    .registers 7

    .line 1
    invoke-virtual {p2}, Landroidx/core/view/k0;->l()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/h$c;->a:Landroidx/appcompat/app/h;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroidx/appcompat/app/h;->g1(Landroidx/core/view/k0;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 3
    invoke-virtual {p2}, Landroidx/core/view/k0;->j()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroidx/core/view/k0;->k()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Landroidx/core/view/k0;->i()I

    move-result v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/core/view/k0;->p(IIII)Landroidx/core/view/k0;

    move-result-object p2

    .line 7
    :cond_1d
    invoke-static {p1, p2}, Landroidx/core/view/a0;->c0(Landroid/view/View;Landroidx/core/view/k0;)Landroidx/core/view/k0;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.appcompat.app.h.d (androidx.appcompat.app.h$d)
.class Landroidx/appcompat/app/h$d;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/widget/h0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h;->h0()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$d;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$d;->a:Landroidx/appcompat/app/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/h;->g1(Landroidx/core/view/k0;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

###### Class androidx.appcompat.app.h.e (androidx.appcompat.app.h$e)
.class Landroidx/appcompat/app/h$e;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/widget/ContentFrameLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h;->h0()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$e;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$e;->a:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->j0()V

    return-void
.end method

###### Class androidx.appcompat.app.h.f (androidx.appcompat.app.h$f)
.class Landroidx/appcompat/app/h$f;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h;->a1(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    iget-object v1, v0, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    iget-object v0, v0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->m0()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->X0()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3e

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    iget-object v0, v0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    iget-object v2, v0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Landroidx/core/view/a0;->e(Landroid/view/View;)Landroidx/core/view/g0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/view/g0;->b(F)Landroidx/core/view/g0;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    iget-object v0, v0, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    new-instance v1, Landroidx/appcompat/app/h$f$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/h$f$a;-><init>(Landroidx/appcompat/app/h$f;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/g0;->h(Landroidx/core/view/h0;)Landroidx/core/view/g0;

    goto :goto_4c

    .line 7
    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    iget-object v0, v0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    iget-object v0, v0, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_4c
    return-void
.end method

###### Class androidx.appcompat.app.h.f.a (androidx.appcompat.app.h$f$a)
.class Landroidx/appcompat/app/h$f$a;
.super Landroidx/core/view/i0;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h$f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h$f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$f$a;->a:Landroidx/appcompat/app/h$f;

    invoke-direct {p0}, Landroidx/core/view/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/h$f$a;->a:Landroidx/appcompat/app/h$f;

    iget-object p1, p1, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/h$f$a;->a:Landroidx/appcompat/app/h$f;

    iget-object p1, p1, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/g0;->h(Landroidx/core/view/h0;)Landroidx/core/view/g0;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/h$f$a;->a:Landroidx/appcompat/app/h$f;

    iget-object p1, p1, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    iput-object v0, p1, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/h$f$a;->a:Landroidx/appcompat/app/h$f;

    iget-object p1, p1, Landroidx/appcompat/app/h$f;->o:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

###### Class androidx.appcompat.app.h.g (androidx.appcompat.app.h$g)
.class Landroidx/appcompat/app/h$g;
.super Landroidx/core/view/i0;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h;->a1(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$g;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Landroidx/core/view/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/h$g;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/h$g;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/g0;->h(Landroidx/core/view/h0;)Landroidx/core/view/g0;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/h$g;->a:Landroidx/appcompat/app/h;

    iput-object v0, p1, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/h$g;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/h$g;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_21

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/h$g;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/a0;->n0(Landroid/view/View;)V

    :cond_21
    return-void
.end method

###### Class androidx.appcompat.app.h.InterfaceC0012h (androidx.appcompat.app.h$h)
.class interface abstract Landroidx/appcompat/app/h$h;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "h"
.end annotation


# virtual methods
.method public abstract a(I)Z
.end method

.method public abstract onCreatePanelView(I)Landroid/view/View;
.end method

###### Class androidx.appcompat.app.h.i (androidx.appcompat.app.h$i)
.class final Landroidx/appcompat/app/h$i;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$i;->o:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/g;Z)V
    .registers 3

    .line 1
    iget-object p2, p0, Landroidx/appcompat/app/h$i;->o:Landroidx/appcompat/app/h;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/h;->c0(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/g;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$i;->o:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->y0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x6c

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_d
    const/4 p1, 0x1

    return p1
.end method

###### Class androidx.appcompat.app.h.j (androidx.appcompat.app.h$j)
.class Landroidx/appcompat/app/h$j;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field private a:Landroidx/appcompat/view/b$a;

.field final synthetic b:Landroidx/appcompat/app/h;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/h;Landroidx/appcompat/view/b$a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/h$j;->a:Landroidx/appcompat/view/b$a;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$j;->a:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, p1, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_18

    .line 3
    iget-object p1, p1, Landroidx/appcompat/app/h;->B:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, v0, Landroidx/appcompat/app/h;->N:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_18
    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_3c

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/h;->m0()V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/view/a0;->e(Landroid/view/View;)Landroidx/core/view/g0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/g0;->b(F)Landroidx/core/view/g0;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    .line 7
    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    new-instance v0, Landroidx/appcompat/app/h$j$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/h$j$a;-><init>(Landroidx/appcompat/app/h$j;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/g0;->h(Landroidx/core/view/h0;)Landroidx/core/view/g0;

    .line 8
    :cond_3c
    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, p1, Landroidx/appcompat/app/h;->D:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_47

    .line 9
    iget-object p1, p1, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/d;->q(Landroidx/appcompat/view/b;)V

    .line 10
    :cond_47
    iget-object p1, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/h;->K:Landroidx/appcompat/view/b;

    .line 11
    iget-object p1, p1, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/a0;->n0(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$j;->a:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, v0, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/a0;->n0(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h$j;->a:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/b$a;->c(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public d(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$j;->a:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/b$a;->d(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

###### Class androidx.appcompat.app.h.j.a (androidx.appcompat.app.h$j$a)
.class Landroidx/appcompat/app/h$j$a;
.super Landroidx/core/view/i0;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h$j;->a(Landroidx/appcompat/view/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h$j;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h$j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    invoke-direct {p0}, Landroidx/core/view/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object v0, p1, Landroidx/appcompat/app/h;->M:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_17

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_30

    .line 4
    :cond_17
    iget-object p1, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_30

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/a0;->n0(Landroid/view/View;)V

    .line 6
    :cond_30
    :goto_30
    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    .line 7
    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/g0;->h(Landroidx/core/view/h0;)Landroidx/core/view/g0;

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/h$j$a;->a:Landroidx/appcompat/app/h$j;

    iget-object p1, p1, Landroidx/appcompat/app/h$j;->b:Landroidx/appcompat/app/h;

    iput-object v0, p1, Landroidx/appcompat/app/h;->O:Landroidx/core/view/g0;

    .line 9
    iget-object p1, p1, Landroidx/appcompat/app/h;->R:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/a0;->n0(Landroid/view/View;)V

    return-void
.end method

###### Class androidx.appcompat.app.h.k (androidx.appcompat.app.h$k)
.class Landroidx/appcompat/app/h$k;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# direct methods
.method static a(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq p0, p1, :cond_8

    .line 2
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_8
    return-void
.end method

.method static c(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    return-void
.end method

.method static d(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

###### Class androidx.appcompat.app.h.l (androidx.appcompat.app.h$l)
.class Landroidx/appcompat/app/h$l;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# direct methods
.method static a(Landroid/os/PowerManager;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method static b(Ljava/util/Locale;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.appcompat.app.h.m (androidx.appcompat.app.h$m)
.class Landroidx/appcompat/app/h$m;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# direct methods
.method static a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 5
    iget-object p0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p0, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_15
    return-void
.end method

.method static b(Landroid/content/res/Configuration;)Landroidx/core/os/h;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/h;->c(Ljava/lang/String;)Landroidx/core/os/h;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroidx/core/os/h;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/core/os/h;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {p0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    return-void
.end method

.method static d(Landroid/content/res/Configuration;Landroidx/core/os/h;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/os/h;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    return-void
.end method

###### Class androidx.appcompat.app.h.n (androidx.appcompat.app.h$n)
.class Landroidx/appcompat/app/h$n;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method static a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 6

    .line 1
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v1, 0x3

    if-eq v0, v2, :cond_11

    .line 2
    iget v0, p2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    iput v0, p2, Landroid/content/res/Configuration;->colorMode:I

    .line 3
    :cond_11
    iget p0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 p0, p0, 0xc

    iget p1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, p1, 0xc

    if-eq p0, v0, :cond_22

    .line 4
    iget p0, p2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    iput p0, p2, Landroid/content/res/Configuration;->colorMode:I

    :cond_22
    return-void
.end method

###### Class androidx.appcompat.app.h.o (androidx.appcompat.app.h$o)
.class Landroidx/appcompat/app/h$o;
.super Landroidx/appcompat/view/i;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o"
.end annotation


# instance fields
.field private p:Landroidx/appcompat/app/h$h;

.field private q:Z

.field private r:Z

.field private s:Z

.field final synthetic t:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;Landroid/view/Window$Callback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$o;->t:Landroidx/appcompat/app/h;

    .line 2
    invoke-direct {p0, p2}, Landroidx/appcompat/view/i;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p0, Landroidx/appcompat/app/h$o;->r:Z

    .line 2
    invoke-interface {p1, p2}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_b

    .line 3
    iput-boolean v1, p0, Landroidx/appcompat/app/h$o;->r:Z

    return p1

    :catchall_b
    move-exception p1

    iput-boolean v1, p0, Landroidx/appcompat/app/h$o;->r:Z

    .line 4
    throw p1
.end method

.method public c(Landroid/view/Window$Callback;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p0, Landroidx/appcompat/app/h$o;->q:Z

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_a

    .line 3
    iput-boolean v1, p0, Landroidx/appcompat/app/h$o;->q:Z

    return-void

    :catchall_a
    move-exception p1

    iput-boolean v1, p0, Landroidx/appcompat/app/h$o;->q:Z

    .line 4
    throw p1
.end method

.method public d(Landroid/view/Window$Callback;ILandroid/view/Menu;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p0, Landroidx/appcompat/app/h$o;->s:Z

    .line 2
    invoke-interface {p1, p2, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_a

    .line 3
    iput-boolean v1, p0, Landroidx/appcompat/app/h$o;->s:Z

    return-void

    :catchall_a
    move-exception p1

    iput-boolean v1, p0, Landroidx/appcompat/app/h$o;->s:Z

    .line 4
    throw p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h$o;->r:Z

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/view/i;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/h$o;->t:Landroidx/appcompat/app/h;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/h;->k0(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4
    invoke-super {p0, p1}, Landroidx/appcompat/view/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    :goto_1f
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/i;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/appcompat/app/h$o;->t:Landroidx/appcompat/app/h;

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/h;->J0(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method final e(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/view/f$a;

    iget-object v1, p0, Landroidx/appcompat/app/h$o;->t:Landroidx/appcompat/app/h;

    iget-object v1, v1, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/f$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/h$o;->t:Landroidx/appcompat/app/h;

    .line 3
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/h;->Z0(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 4
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/f$a;->e(Landroidx/appcompat/view/b;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public onContentChanged()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h$o;->q:Z

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/view/i;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_b
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    if-nez p1, :cond_8

    .line 1
    instance-of v0, p2, Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_8
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/i;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$o;->p:Landroidx/appcompat/app/h$h;

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Landroidx/appcompat/app/h$h;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 3
    :cond_b
    invoke-super {p0, p1}, Landroidx/appcompat/view/i;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/i;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2
    iget-object p2, p0, Landroidx/appcompat/app/h$o;->t:Landroidx/appcompat/app/h;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/h;->M0(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h$o;->s:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/view/i;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    .line 3
    :cond_c
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/i;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4
    iget-object p2, p0, Landroidx/appcompat/app/h$o;->t:Landroidx/appcompat/app/h;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/h;->N0(I)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 8

    .line 1
    instance-of v0, p3, Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_8

    move-object v0, p3

    check-cast v0, Landroidx/appcompat/view/menu/g;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x0

    if-nez p1, :cond_f

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/g;->a0(Z)V

    .line 3
    :cond_15
    iget-object v3, p0, Landroidx/appcompat/app/h$o;->p:Landroidx/appcompat/app/h$h;

    if-eqz v3, :cond_20

    invoke-interface {v3, p1}, Landroidx/appcompat/app/h$h;->a(I)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    if-nez v2, :cond_27

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    :cond_27
    if-eqz v0, :cond_2c

    .line 5
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->a0(Z)V

    :cond_2c
    return v2
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$o;->t:Landroidx/appcompat/app/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/h;->w0(IZ)Landroidx/appcompat/app/h$u;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, v0, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_12

    .line 3
    invoke-super {p0, p1, v0, p3}, Landroidx/appcompat/view/i;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_15

    .line 4
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/i;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_15
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/h$o;->t:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->E0()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h$o;->e(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 4
    :cond_15
    invoke-super {p0, p1}, Landroidx/appcompat/view/i;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/h$o;->t:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->E0()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_b

    goto :goto_10

    .line 6
    :cond_b
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h$o;->e(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 7
    :cond_10
    :goto_10
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/i;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.appcompat.app.h.p (androidx.appcompat.app.h$p)
.class Landroidx/appcompat/app/h$p;
.super Landroidx/appcompat/app/h$q;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field private final c:Landroid/os/PowerManager;

.field final synthetic d:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$p;->d:Landroidx/appcompat/app/h;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/h$q;-><init>(Landroidx/appcompat/app/h;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Landroidx/appcompat/app/h$p;->c:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method b()Landroid/content/IntentFilter;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()I
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_10

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/h$p;->c:Landroid/os/PowerManager;

    invoke-static {v0}, Landroidx/appcompat/app/h$l;->a(Landroid/os/PowerManager;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    :cond_10
    return v1
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$p;->d:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->W()Z

    return-void
.end method

###### Class androidx.appcompat.app.h.q (androidx.appcompat.app.h$q)
.class abstract Landroidx/appcompat/app/h$q;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "q"
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field final synthetic b:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$q;->b:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$q;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 2
    :try_start_4
    iget-object v1, p0, Landroidx/appcompat/app/h$q;->b:Landroidx/appcompat/app/h;

    iget-object v1, v1, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_b} :catch_b

    :catch_b
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/app/h$q;->a:Landroid/content/BroadcastReceiver;

    :cond_e
    return-void
.end method

.method abstract b()Landroid/content/IntentFilter;
.end method

.method abstract c()I
.end method

.method abstract d()V
.end method

.method e()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/h$q;->a()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/h$q;->b()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_24

    .line 4
    :cond_10
    iget-object v1, p0, Landroidx/appcompat/app/h$q;->a:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1b

    .line 5
    new-instance v1, Landroidx/appcompat/app/h$q$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/h$q$a;-><init>(Landroidx/appcompat/app/h$q;)V

    iput-object v1, p0, Landroidx/appcompat/app/h$q;->a:Landroid/content/BroadcastReceiver;

    .line 6
    :cond_1b
    iget-object v1, p0, Landroidx/appcompat/app/h$q;->b:Landroidx/appcompat/app/h;

    iget-object v1, v1, Landroidx/appcompat/app/h;->A:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/app/h$q;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_24
    :goto_24
    return-void
.end method

###### Class androidx.appcompat.app.h.q.a (androidx.appcompat.app.h$q$a)
.class Landroidx/appcompat/app/h$q$a;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h$q;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h$q;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h$q;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$q$a;->a:Landroidx/appcompat/app/h$q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/h$q$a;->a:Landroidx/appcompat/app/h$q;

    invoke-virtual {p1}, Landroidx/appcompat/app/h$q;->d()V

    return-void
.end method

###### Class androidx.appcompat.app.h.r (androidx.appcompat.app.h$r)
.class Landroidx/appcompat/app/h$r;
.super Landroidx/appcompat/app/h$q;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "r"
.end annotation


# instance fields
.field private final c:Landroidx/appcompat/app/t;

.field final synthetic d:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;Landroidx/appcompat/app/t;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$r;->d:Landroidx/appcompat/app/h;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/h$q;-><init>(Landroidx/appcompat/app/h;)V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/h$r;->c:Landroidx/appcompat/app/t;

    return-void
.end method


# virtual methods
.method b()Landroid/content/IntentFilter;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$r;->c:Landroidx/appcompat/app/t;

    invoke-virtual {v0}, Landroidx/appcompat/app/t;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$r;->d:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->W()Z

    return-void
.end method

###### Class androidx.appcompat.app.h.s (androidx.appcompat.app.h$s)
.class Landroidx/appcompat/app/h$s;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "s"
.end annotation


# direct methods
.method static a(Landroid/view/ContextThemeWrapper;Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

###### Class androidx.appcompat.app.h.t (androidx.appcompat.app.h$t)
.class Landroidx/appcompat/app/h$t;
.super Landroidx/appcompat/widget/ContentFrameLayout;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "t"
.end annotation


# instance fields
.field final synthetic w:Landroidx/appcompat/app/h;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/h;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$t;->w:Landroidx/appcompat/app/h;

    .line 2
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private c(II)Z
    .registers 4

    const/4 v0, -0x5

    if-lt p1, v0, :cond_18

    if-lt p2, v0, :cond_18

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    if-le p2, p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x1

    :goto_19
    return p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$t;->w:Landroidx/appcompat/app/h;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/h;->k0(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1e

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 4
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/h$t;->c(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/h$t;->w:Landroidx/appcompat/app/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/h;->e0(I)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class androidx.appcompat.app.h.u (androidx.appcompat.app.h$u)
.class public final Landroidx/appcompat/app/h$u;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "u"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroidx/appcompat/view/menu/g;

.field k:Landroidx/appcompat/view/menu/e;

.field l:Landroid/content/Context;

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/appcompat/app/h$u;->a:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/app/h$u;->q:Z

    return-void
.end method


# virtual methods
.method a(Landroidx/appcompat/view/menu/m$a;)Landroidx/appcompat/view/menu/n;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/app/h$u;->k:Landroidx/appcompat/view/menu/e;

    if-nez v0, :cond_1f

    .line 3
    new-instance v0, Landroidx/appcompat/view/menu/e;

    iget-object v1, p0, Landroidx/appcompat/app/h$u;->l:Landroid/content/Context;

    sget v2, Lf/g;->j:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/app/h$u;->k:Landroidx/appcompat/view/menu/e;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->g(Landroidx/appcompat/view/menu/m$a;)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    iget-object v0, p0, Landroidx/appcompat/app/h$u;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 6
    :cond_1f
    iget-object p1, p0, Landroidx/appcompat/app/h$u;->k:Landroidx/appcompat/view/menu/e;

    iget-object v0, p0, Landroidx/appcompat/app/h$u;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/e;->h(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$u;->h:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/app/h$u;->i:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    return v2

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/h$u;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method c(Landroidx/appcompat/view/menu/g;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_c

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/h$u;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->O(Landroidx/appcompat/view/menu/m;)V

    .line 3
    :cond_c
    iput-object p1, p0, Landroidx/appcompat/app/h$u;->j:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_17

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/h$u;->k:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_17

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    :cond_17
    return-void
.end method

.method d(Landroid/content/Context;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 4
    sget v2, Lf/a;->a:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_21

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 7
    :cond_21
    sget v2, Lf/a;->F:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 8
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_2e

    .line 9
    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_33

    .line 10
    :cond_2e
    sget v0, Lf/i;->b:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 11
    :goto_33
    new-instance v0, Landroidx/appcompat/view/d;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 13
    iput-object v0, p0, Landroidx/appcompat/app/h$u;->l:Landroid/content/Context;

    .line 14
    sget-object p1, Lf/j;->y0:[I

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    sget v0, Lf/j;->B0:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/app/h$u;->b:I

    .line 16
    sget v0, Lf/j;->A0:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/app/h$u;->f:I

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

###### Class androidx.appcompat.app.h.v (androidx.appcompat.app.h$v)
.class final Landroidx/appcompat/app/h$v;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "v"
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$v;->o:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/g;Z)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->D()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 2
    :goto_a
    iget-object v3, p0, Landroidx/appcompat/app/h$v;->o:Landroidx/appcompat/app/h;

    if-eqz v2, :cond_f

    move-object p1, v0

    :cond_f
    invoke-virtual {v3, p1}, Landroidx/appcompat/app/h;->p0(Landroid/view/Menu;)Landroidx/appcompat/app/h$u;

    move-result-object p1

    if-eqz p1, :cond_29

    if-eqz v2, :cond_24

    .line 3
    iget-object p2, p0, Landroidx/appcompat/app/h$v;->o:Landroidx/appcompat/app/h;

    iget v2, p1, Landroidx/appcompat/app/h$u;->a:I

    invoke-virtual {p2, v2, p1, v0}, Landroidx/appcompat/app/h;->b0(ILandroidx/appcompat/app/h$u;Landroid/view/Menu;)V

    .line 4
    iget-object p2, p0, Landroidx/appcompat/app/h$v;->o:Landroidx/appcompat/app/h;

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/app/h;->f0(Landroidx/appcompat/app/h$u;Z)V

    goto :goto_29

    .line 5
    :cond_24
    iget-object v0, p0, Landroidx/appcompat/app/h$v;->o:Landroidx/appcompat/app/h;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/h;->f0(Landroidx/appcompat/app/h$u;Z)V

    :cond_29
    :goto_29
    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/g;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->D()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    if-ne p1, v0, :cond_1d

    iget-object v0, p0, Landroidx/appcompat/app/h$v;->o:Landroidx/appcompat/app/h;

    iget-boolean v1, v0, Landroidx/appcompat/app/h;->W:Z

    if-eqz v1, :cond_1d

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/h;->y0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/h$v;->o:Landroidx/appcompat/app/h;

    iget-boolean v1, v1, Landroidx/appcompat/app/h;->h0:Z

    if-nez v1, :cond_1d

    const/16 v1, 0x6c

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method
