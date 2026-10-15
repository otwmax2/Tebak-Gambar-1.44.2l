###### Class androidx.core.view.k0 (androidx.core.view.k0)
.class public Landroidx/core/view/k0;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/k0$a;,
        Landroidx/core/view/k0$n;,
        Landroidx/core/view/k0$m;,
        Landroidx/core/view/k0$e;,
        Landroidx/core/view/k0$d;,
        Landroidx/core/view/k0$c;,
        Landroidx/core/view/k0$f;,
        Landroidx/core/view/k0$b;,
        Landroidx/core/view/k0$k;,
        Landroidx/core/view/k0$j;,
        Landroidx/core/view/k0$i;,
        Landroidx/core/view/k0$h;,
        Landroidx/core/view/k0$g;,
        Landroidx/core/view/k0$l;
    }
.end annotation


# static fields
.field public static final b:Landroidx/core/view/k0;


# instance fields
.field private final a:Landroidx/core/view/k0$l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 2
    sget-object v0, Landroidx/core/view/k0$k;->q:Landroidx/core/view/k0;

    sput-object v0, Landroidx/core/view/k0;->b:Landroidx/core/view/k0;

    goto :goto_f

    .line 3
    :cond_b
    sget-object v0, Landroidx/core/view/k0$l;->b:Landroidx/core/view/k0;

    sput-object v0, Landroidx/core/view/k0;->b:Landroidx/core/view/k0;

    :goto_f
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Landroidx/core/view/k0$k;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/k0$k;-><init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    goto :goto_48

    :cond_11
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1d

    .line 4
    new-instance v0, Landroidx/core/view/k0$j;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/k0$j;-><init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    goto :goto_48

    :cond_1d
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_29

    .line 5
    new-instance v0, Landroidx/core/view/k0$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/k0$i;-><init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    goto :goto_48

    :cond_29
    const/16 v1, 0x15

    if-lt v0, v1, :cond_35

    .line 6
    new-instance v0, Landroidx/core/view/k0$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/k0$h;-><init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    goto :goto_48

    :cond_35
    const/16 v1, 0x14

    if-lt v0, v1, :cond_41

    .line 7
    new-instance v0, Landroidx/core/view/k0$g;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/k0$g;-><init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    goto :goto_48

    .line 8
    :cond_41
    new-instance p1, Landroidx/core/view/k0$l;

    invoke-direct {p1, p0}, Landroidx/core/view/k0$l;-><init>(Landroidx/core/view/k0;)V

    iput-object p1, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    :goto_48
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/k0;)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_73

    .line 10
    iget-object p1, p1, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1c

    instance-of v1, p1, Landroidx/core/view/k0$k;

    if-eqz v1, :cond_1c

    .line 12
    new-instance v0, Landroidx/core/view/k0$k;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/k0$k;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/k0$k;-><init>(Landroidx/core/view/k0;Landroidx/core/view/k0$k;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    goto :goto_6f

    :cond_1c
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2f

    .line 13
    instance-of v1, p1, Landroidx/core/view/k0$j;

    if-eqz v1, :cond_2f

    .line 14
    new-instance v0, Landroidx/core/view/k0$j;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/k0$j;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/k0$j;-><init>(Landroidx/core/view/k0;Landroidx/core/view/k0$j;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    goto :goto_6f

    :cond_2f
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_42

    .line 15
    instance-of v1, p1, Landroidx/core/view/k0$i;

    if-eqz v1, :cond_42

    .line 16
    new-instance v0, Landroidx/core/view/k0$i;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/k0$i;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/k0$i;-><init>(Landroidx/core/view/k0;Landroidx/core/view/k0$i;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    goto :goto_6f

    :cond_42
    const/16 v1, 0x15

    if-lt v0, v1, :cond_55

    .line 17
    instance-of v1, p1, Landroidx/core/view/k0$h;

    if-eqz v1, :cond_55

    .line 18
    new-instance v0, Landroidx/core/view/k0$h;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/k0$h;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/k0$h;-><init>(Landroidx/core/view/k0;Landroidx/core/view/k0$h;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    goto :goto_6f

    :cond_55
    const/16 v1, 0x14

    if-lt v0, v1, :cond_68

    .line 19
    instance-of v0, p1, Landroidx/core/view/k0$g;

    if-eqz v0, :cond_68

    .line 20
    new-instance v0, Landroidx/core/view/k0$g;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/k0$g;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/k0$g;-><init>(Landroidx/core/view/k0;Landroidx/core/view/k0$g;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    goto :goto_6f

    .line 21
    :cond_68
    new-instance v0, Landroidx/core/view/k0$l;

    invoke-direct {v0, p0}, Landroidx/core/view/k0$l;-><init>(Landroidx/core/view/k0;)V

    iput-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    .line 22
    :goto_6f
    invoke-virtual {p1, p0}, Landroidx/core/view/k0$l;->e(Landroidx/core/view/k0;)V

    goto :goto_7a

    .line 23
    :cond_73
    new-instance p1, Landroidx/core/view/k0$l;

    invoke-direct {p1, p0}, Landroidx/core/view/k0$l;-><init>(Landroidx/core/view/k0;)V

    iput-object p1, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    :goto_7a
    return-void
.end method

.method static n(Landroidx/core/graphics/b;IIII)Landroidx/core/graphics/b;
    .registers 10

    .line 1
    iget v0, p0, Landroidx/core/graphics/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    iget v2, p0, Landroidx/core/graphics/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    iget v3, p0, Landroidx/core/graphics/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4
    iget v4, p0, Landroidx/core/graphics/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_26

    if-ne v2, p2, :cond_26

    if-ne v3, p3, :cond_26

    if-ne v1, p4, :cond_26

    return-object p0

    .line 5
    :cond_26
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/view/WindowInsets;)Landroidx/core/view/k0;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroidx/core/view/k0;->w(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/k0;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/k0;
    .registers 3

    .line 1
    new-instance v0, Landroidx/core/view/k0;

    invoke-static {p0}, Landroidx/core/util/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/view/k0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_21

    .line 2
    invoke-static {p1}, Landroidx/core/view/a0;->T(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 3
    invoke-static {p1}, Landroidx/core/view/a0;->K(Landroid/view/View;)Landroidx/core/view/k0;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/k0;->s(Landroidx/core/view/k0;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/k0;->d(Landroid/view/View;)V

    :cond_21
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/core/view/k0;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->a()Landroidx/core/view/k0;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/core/view/k0;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->b()Landroidx/core/view/k0;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroidx/core/view/k0;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->c()Landroidx/core/view/k0;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/k0$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()Landroidx/core/view/d;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->f()Landroidx/core/view/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Landroidx/core/view/k0;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Landroidx/core/view/k0;

    .line 3
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    iget-object p1, p1, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-static {v0, p1}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Landroidx/core/graphics/b;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/k0$l;->g(I)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroidx/core/graphics/b;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->h()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroidx/core/graphics/b;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->i()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroidx/core/view/k0$l;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public i()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->d:I

    return v0
.end method

.method public j()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->a:I

    return v0
.end method

.method public k()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->c:I

    return v0
.end method

.method public l()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->b:I

    return v0
.end method

.method public m(IIII)Landroidx/core/view/k0;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/k0$l;->m(IIII)Landroidx/core/view/k0;

    move-result-object p1

    return-object p1
.end method

.method public o()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0}, Landroidx/core/view/k0$l;->n()Z

    move-result v0

    return v0
.end method

.method public p(IIII)Landroidx/core/view/k0;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroidx/core/view/k0$b;

    invoke-direct {v0, p0}, Landroidx/core/view/k0$b;-><init>(Landroidx/core/view/k0;)V

    .line 2
    invoke-static {p1, p2, p3, p4}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/k0$b;->c(Landroidx/core/graphics/b;)Landroidx/core/view/k0$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/core/view/k0$b;->a()Landroidx/core/view/k0;

    move-result-object p1

    return-object p1
.end method

.method q([Landroidx/core/graphics/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/k0$l;->p([Landroidx/core/graphics/b;)V

    return-void
.end method

.method r(Landroidx/core/graphics/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/k0$l;->q(Landroidx/core/graphics/b;)V

    return-void
.end method

.method s(Landroidx/core/view/k0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/k0$l;->r(Landroidx/core/view/k0;)V

    return-void
.end method

.method t(Landroidx/core/graphics/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/k0$l;->s(Landroidx/core/graphics/b;)V

    return-void
.end method

.method public u()Landroid/view/WindowInsets;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0;->a:Landroidx/core/view/k0$l;

    instance-of v1, v0, Landroidx/core/view/k0$g;

    if-eqz v1, :cond_b

    check-cast v0, Landroidx/core/view/k0$g;

    iget-object v0, v0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

###### Class androidx.core.view.k0.a (androidx.core.view.k0$a)
.class Landroidx/core/view/k0$a;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SoonBlockedPrivateApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/k0$a;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v0, "android.view.View$AttachInfo"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mStableInsets"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/view/k0$a;->b:Ljava/lang/reflect/Field;

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v2, "mContentInsets"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/k0$a;->c:Ljava/lang/reflect/Field;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    sput-boolean v1, Landroidx/core/view/k0$a;->d:Z
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_48

    :catch_2d
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get visible insets from AttachInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    return-void
.end method

.method public static a(Landroid/view/View;)Landroidx/core/view/k0;
    .registers 5

    .line 1
    sget-boolean v0, Landroidx/core/view/k0$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6b

    .line 2
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3
    :try_start_10
    sget-object v2, Landroidx/core/view/k0$a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 4
    sget-object v2, Landroidx/core/view/k0$a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 5
    sget-object v3, Landroidx/core/view/k0$a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v2, :cond_6b

    if-eqz v0, :cond_6b

    .line 6
    new-instance v3, Landroidx/core/view/k0$b;

    invoke-direct {v3}, Landroidx/core/view/k0$b;-><init>()V

    .line 7
    invoke-static {v2}, Landroidx/core/graphics/b;->c(Landroid/graphics/Rect;)Landroidx/core/graphics/b;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/core/view/k0$b;->b(Landroidx/core/graphics/b;)Landroidx/core/view/k0$b;

    move-result-object v2

    .line 8
    invoke-static {v0}, Landroidx/core/graphics/b;->c(Landroid/graphics/Rect;)Landroidx/core/graphics/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/view/k0$b;->c(Landroidx/core/graphics/b;)Landroidx/core/view/k0$b;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/core/view/k0$b;->a()Landroidx/core/view/k0;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v0}, Landroidx/core/view/k0;->s(Landroidx/core/view/k0;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/k0;->d(Landroid/view/View;)V
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_4f} :catch_50

    return-object v0

    :catch_50
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get insets from AttachInfo. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6b
    :goto_6b
    return-object v1
.end method

###### Class androidx.core.view.k0.b (androidx.core.view.k0$b)
.class public final Landroidx/core/view/k0$b;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/k0$f;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Landroidx/core/view/k0$e;

    invoke-direct {v0}, Landroidx/core/view/k0$e;-><init>()V

    iput-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    goto :goto_30

    :cond_11
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1d

    .line 4
    new-instance v0, Landroidx/core/view/k0$d;

    invoke-direct {v0}, Landroidx/core/view/k0$d;-><init>()V

    iput-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    goto :goto_30

    :cond_1d
    const/16 v1, 0x14

    if-lt v0, v1, :cond_29

    .line 5
    new-instance v0, Landroidx/core/view/k0$c;

    invoke-direct {v0}, Landroidx/core/view/k0$c;-><init>()V

    iput-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    goto :goto_30

    .line 6
    :cond_29
    new-instance v0, Landroidx/core/view/k0$f;

    invoke-direct {v0}, Landroidx/core/view/k0$f;-><init>()V

    iput-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    :goto_30
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/k0;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 9
    new-instance v0, Landroidx/core/view/k0$e;

    invoke-direct {v0, p1}, Landroidx/core/view/k0$e;-><init>(Landroidx/core/view/k0;)V

    iput-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    goto :goto_30

    :cond_11
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1d

    .line 10
    new-instance v0, Landroidx/core/view/k0$d;

    invoke-direct {v0, p1}, Landroidx/core/view/k0$d;-><init>(Landroidx/core/view/k0;)V

    iput-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    goto :goto_30

    :cond_1d
    const/16 v1, 0x14

    if-lt v0, v1, :cond_29

    .line 11
    new-instance v0, Landroidx/core/view/k0$c;

    invoke-direct {v0, p1}, Landroidx/core/view/k0$c;-><init>(Landroidx/core/view/k0;)V

    iput-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    goto :goto_30

    .line 12
    :cond_29
    new-instance v0, Landroidx/core/view/k0$f;

    invoke-direct {v0, p1}, Landroidx/core/view/k0$f;-><init>(Landroidx/core/view/k0;)V

    iput-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    :goto_30
    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/k0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    invoke-virtual {v0}, Landroidx/core/view/k0$f;->b()Landroidx/core/view/k0;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroidx/core/graphics/b;)Landroidx/core/view/k0$b;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    invoke-virtual {v0, p1}, Landroidx/core/view/k0$f;->d(Landroidx/core/graphics/b;)V

    return-object p0
.end method

.method public c(Landroidx/core/graphics/b;)Landroidx/core/view/k0$b;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$b;->a:Landroidx/core/view/k0$f;

    invoke-virtual {v0, p1}, Landroidx/core/view/k0$f;->f(Landroidx/core/graphics/b;)V

    return-object p0
.end method

###### Class androidx.core.view.k0.c (androidx.core.view.k0$c)
.class Landroidx/core/view/k0$c;
.super Landroidx/core/view/k0$f;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static e:Ljava/lang/reflect/Field; = null

.field private static f:Z = false

.field private static g:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z = false


# instance fields
.field private c:Landroid/view/WindowInsets;

.field private d:Landroidx/core/graphics/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/core/view/k0$f;-><init>()V

    .line 2
    invoke-static {}, Landroidx/core/view/k0$c;->h()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/k0$c;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/k0$f;-><init>(Landroidx/core/view/k0;)V

    .line 4
    invoke-virtual {p1}, Landroidx/core/view/k0;->u()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/k0$c;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private static h()Landroid/view/WindowInsets;
    .registers 7

    .line 1
    sget-boolean v0, Landroidx/core/view/k0$c;->f:Z

    const/4 v1, 0x1

    const-string v2, "WindowInsetsCompat"

    if-nez v0, :cond_1a

    .line 2
    :try_start_7
    const-class v0, Landroid/view/WindowInsets;

    const-string v3, "CONSUMED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/k0$c;->e:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception v0

    const-string v3, "Could not retrieve WindowInsets.CONSUMED field"

    .line 3
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :goto_18
    sput-boolean v1, Landroidx/core/view/k0$c;->f:Z

    .line 5
    :cond_1a
    sget-object v0, Landroidx/core/view/k0$c;->e:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-eqz v0, :cond_33

    .line 6
    :try_start_1f
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_33

    .line 7
    new-instance v4, Landroid/view/WindowInsets;

    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1f .. :try_end_2c} :catch_2d

    return-object v4

    :catch_2d
    move-exception v0

    const-string v4, "Could not get value from WindowInsets.CONSUMED field"

    .line 8
    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_33
    sget-boolean v0, Landroidx/core/view/k0$c;->h:Z

    const/4 v4, 0x0

    if-nez v0, :cond_4f

    .line 10
    :try_start_38
    const-class v0, Landroid/view/WindowInsets;

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Landroidx/core/view/k0$c;->g:Ljava/lang/reflect/Constructor;
    :try_end_46
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_38 .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    move-exception v0

    const-string v5, "Could not retrieve WindowInsets(Rect) constructor"

    .line 11
    invoke-static {v2, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :goto_4d
    sput-boolean v1, Landroidx/core/view/k0$c;->h:Z

    .line 13
    :cond_4f
    sget-object v0, Landroidx/core/view/k0$c;->g:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_69

    :try_start_53
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_62
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_53 .. :try_end_62} :catch_63

    return-object v0

    :catch_63
    move-exception v0

    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    .line 15
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_69
    return-object v3
.end method


# virtual methods
.method b()Landroidx/core/view/k0;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/k0$f;->a()V

    .line 2
    iget-object v0, p0, Landroidx/core/view/k0$c;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/k0;->v(Landroid/view/WindowInsets;)Landroidx/core/view/k0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/core/view/k0$f;->b:[Landroidx/core/graphics/b;

    invoke-virtual {v0, v1}, Landroidx/core/view/k0;->q([Landroidx/core/graphics/b;)V

    .line 4
    iget-object v1, p0, Landroidx/core/view/k0$c;->d:Landroidx/core/graphics/b;

    invoke-virtual {v0, v1}, Landroidx/core/view/k0;->t(Landroidx/core/graphics/b;)V

    return-object v0
.end method

.method d(Landroidx/core/graphics/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/k0$c;->d:Landroidx/core/graphics/b;

    return-void
.end method

.method f(Landroidx/core/graphics/b;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$c;->c:Landroid/view/WindowInsets;

    if-eqz v0, :cond_12

    .line 2
    iget v1, p1, Landroidx/core/graphics/b;->a:I

    iget v2, p1, Landroidx/core/graphics/b;->b:I

    iget v3, p1, Landroidx/core/graphics/b;->c:I

    iget p1, p1, Landroidx/core/graphics/b;->d:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/k0$c;->c:Landroid/view/WindowInsets;

    :cond_12
    return-void
.end method

###### Class androidx.core.view.k0.d (androidx.core.view.k0$d)
.class Landroidx/core/view/k0$d;
.super Landroidx/core/view/k0$f;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/core/view/k0$f;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Landroidx/core/view/k0$d;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/k0$f;-><init>(Landroidx/core/view/k0;)V

    .line 4
    invoke-virtual {p1}, Landroidx/core/view/k0;->u()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_14

    .line 6
    :cond_f
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_14
    iput-object v0, p0, Landroidx/core/view/k0$d;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method b()Landroidx/core/view/k0;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/k0$f;->a()V

    .line 2
    iget-object v0, p0, Landroidx/core/view/k0$d;->c:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroidx/core/view/k0;->v(Landroid/view/WindowInsets;)Landroidx/core/view/k0;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/core/view/k0$f;->b:[Landroidx/core/graphics/b;

    invoke-virtual {v0, v1}, Landroidx/core/view/k0;->q([Landroidx/core/graphics/b;)V

    return-object v0
.end method

.method c(Landroidx/core/graphics/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method d(Landroidx/core/graphics/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method e(Landroidx/core/graphics/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method f(Landroidx/core/graphics/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method g(Landroidx/core/graphics/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

###### Class androidx.core.view.k0.e (androidx.core.view.k0$e)
.class Landroidx/core/view/k0$e;
.super Landroidx/core/view/k0$d;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/core/view/k0$d;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Landroidx/core/view/k0$d;-><init>(Landroidx/core/view/k0;)V

    return-void
.end method

###### Class androidx.core.view.k0.f (androidx.core.view.k0$f)
.class Landroidx/core/view/k0$f;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/k0;

.field b:[Landroidx/core/graphics/b;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/core/view/k0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/view/k0;-><init>(Landroidx/core/view/k0;)V

    invoke-direct {p0, v0}, Landroidx/core/view/k0$f;-><init>(Landroidx/core/view/k0;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/core/view/k0$f;->a:Landroidx/core/view/k0;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$f;->b:[Landroidx/core/graphics/b;

    if-eqz v0, :cond_58

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Landroidx/core/view/k0$m;->a(I)I

    move-result v2

    aget-object v0, v0, v2

    .line 3
    iget-object v2, p0, Landroidx/core/view/k0$f;->b:[Landroidx/core/graphics/b;

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/core/view/k0$m;->a(I)I

    move-result v4

    aget-object v2, v2, v4

    if-nez v2, :cond_1c

    .line 4
    iget-object v2, p0, Landroidx/core/view/k0$f;->a:Landroidx/core/view/k0;

    invoke-virtual {v2, v3}, Landroidx/core/view/k0;->f(I)Landroidx/core/graphics/b;

    move-result-object v2

    :cond_1c
    if-nez v0, :cond_24

    .line 5
    iget-object v0, p0, Landroidx/core/view/k0$f;->a:Landroidx/core/view/k0;

    invoke-virtual {v0, v1}, Landroidx/core/view/k0;->f(I)Landroidx/core/graphics/b;

    move-result-object v0

    .line 6
    :cond_24
    invoke-static {v0, v2}, Landroidx/core/graphics/b;->a(Landroidx/core/graphics/b;Landroidx/core/graphics/b;)Landroidx/core/graphics/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/k0$f;->f(Landroidx/core/graphics/b;)V

    .line 7
    iget-object v0, p0, Landroidx/core/view/k0$f;->b:[Landroidx/core/graphics/b;

    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/core/view/k0$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3a

    .line 8
    invoke-virtual {p0, v0}, Landroidx/core/view/k0$f;->e(Landroidx/core/graphics/b;)V

    .line 9
    :cond_3a
    iget-object v0, p0, Landroidx/core/view/k0$f;->b:[Landroidx/core/graphics/b;

    const/16 v1, 0x20

    invoke-static {v1}, Landroidx/core/view/k0$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_49

    .line 10
    invoke-virtual {p0, v0}, Landroidx/core/view/k0$f;->c(Landroidx/core/graphics/b;)V

    .line 11
    :cond_49
    iget-object v0, p0, Landroidx/core/view/k0$f;->b:[Landroidx/core/graphics/b;

    const/16 v1, 0x40

    invoke-static {v1}, Landroidx/core/view/k0$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_58

    .line 12
    invoke-virtual {p0, v0}, Landroidx/core/view/k0$f;->g(Landroidx/core/graphics/b;)V

    :cond_58
    return-void
.end method

.method b()Landroidx/core/view/k0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/k0$f;->a()V

    .line 2
    iget-object v0, p0, Landroidx/core/view/k0$f;->a:Landroidx/core/view/k0;

    return-object v0
.end method

.method c(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

.method d(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

.method e(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

.method f(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

.method g(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

###### Class androidx.core.view.k0.g (androidx.core.view.k0$g)
.class Landroidx/core/view/k0$g;
.super Landroidx/core/view/k0$l;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field private static h:Z = false

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/reflect/Field;

.field private static l:Ljava/lang/reflect/Field;


# instance fields
.field final c:Landroid/view/WindowInsets;

.field private d:[Landroidx/core/graphics/b;

.field private e:Landroidx/core/graphics/b;

.field private f:Landroidx/core/view/k0;

.field g:Landroidx/core/graphics/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/k0$l;-><init>(Landroidx/core/view/k0;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/k0$g;->e:Landroidx/core/graphics/b;

    .line 3
    iput-object p2, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;Landroidx/core/view/k0$g;)V
    .registers 4

    .line 4
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Landroidx/core/view/k0$g;-><init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private t(IZ)Landroidx/core/graphics/b;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    const/4 v1, 0x1

    :goto_3
    const/16 v2, 0x100

    if-gt v1, v2, :cond_17

    and-int v2, p1, v1

    if-nez v2, :cond_c

    goto :goto_14

    .line 2
    :cond_c
    invoke-virtual {p0, v1, p2}, Landroidx/core/view/k0$g;->u(IZ)Landroidx/core/graphics/b;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/graphics/b;->a(Landroidx/core/graphics/b;Landroidx/core/graphics/b;)Landroidx/core/graphics/b;

    move-result-object v0

    :goto_14
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    return-object v0
.end method

.method private v()Landroidx/core/graphics/b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->f:Landroidx/core/view/k0;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroidx/core/view/k0;->h()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    sget-object v0, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    return-object v0
.end method

.method private w(Landroid/view/View;)Landroidx/core/graphics/b;
    .registers 6

    const-string v0, "WindowInsetsCompat"

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_60

    .line 2
    sget-boolean v1, Landroidx/core/view/k0$g;->h:Z

    if-nez v1, :cond_f

    .line 3
    invoke-static {}, Landroidx/core/view/k0$g;->x()V

    .line 4
    :cond_f
    sget-object v1, Landroidx/core/view/k0$g;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    sget-object v3, Landroidx/core/view/k0$g;->j:Ljava/lang/Class;

    if-eqz v3, :cond_5f

    sget-object v3, Landroidx/core/view/k0$g;->k:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1d

    goto :goto_5f

    :cond_1d
    const/4 v3, 0x0

    :try_start_1e
    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_31

    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    .line 6
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 7
    :cond_31
    sget-object v1, Landroidx/core/view/k0$g;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    sget-object v1, Landroidx/core/view/k0$g;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_45

    .line 9
    invoke-static {p1}, Landroidx/core/graphics/b;->c(Landroid/graphics/Rect;)Landroidx/core/graphics/b;

    move-result-object v2
    :try_end_45
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1e .. :try_end_45} :catch_46

    :cond_45
    return-object v2

    :catch_46
    move-exception p1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5f
    :goto_5f
    return-object v2

    .line 13
    :cond_60
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static x()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_1
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/view/k0$g;->i:Ljava/lang/reflect/Method;

    const-string v1, "android.view.View$AttachInfo"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/view/k0$g;->j:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/k0$g;->k:Ljava/lang/reflect/Field;

    const-string v1, "android.view.ViewRootImpl"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAttachInfo"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/k0$g;->l:Ljava/lang/reflect/Field;

    .line 6
    sget-object v1, Landroidx/core/view/k0$g;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    sget-object v1, Landroidx/core/view/k0$g;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_36
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_36} :catch_37

    goto :goto_52

    :catch_37
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowInsetsCompat"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :goto_52
    sput-boolean v0, Landroidx/core/view/k0$g;->h:Z

    return-void
.end method


# virtual methods
.method d(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/k0$g;->w(Landroid/view/View;)Landroidx/core/graphics/b;

    move-result-object p1

    if-nez p1, :cond_8

    .line 2
    sget-object p1, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    .line 3
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/core/view/k0$g;->q(Landroidx/core/graphics/b;)V

    return-void
.end method

.method e(Landroidx/core/view/k0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->f:Landroidx/core/view/k0;

    invoke-virtual {p1, v0}, Landroidx/core/view/k0;->s(Landroidx/core/view/k0;)V

    .line 2
    iget-object v0, p0, Landroidx/core/view/k0$g;->g:Landroidx/core/graphics/b;

    invoke-virtual {p1, v0}, Landroidx/core/view/k0;->r(Landroidx/core/graphics/b;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/core/view/k0$l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_8
    check-cast p1, Landroidx/core/view/k0$g;

    .line 3
    iget-object v0, p0, Landroidx/core/view/k0$g;->g:Landroidx/core/graphics/b;

    iget-object p1, p1, Landroidx/core/view/k0$g;->g:Landroidx/core/graphics/b;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(I)Landroidx/core/graphics/b;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/core/view/k0$g;->t(IZ)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1
.end method

.method final k()Landroidx/core/graphics/b;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->e:Landroidx/core/graphics/b;

    if-nez v0, :cond_22

    .line 2
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/k0$g;->e:Landroidx/core/graphics/b;

    .line 8
    :cond_22
    iget-object v0, p0, Landroidx/core/view/k0$g;->e:Landroidx/core/graphics/b;

    return-object v0
.end method

.method m(IIII)Landroidx/core/view/k0;
    .registers 7

    .line 1
    new-instance v0, Landroidx/core/view/k0$b;

    iget-object v1, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-static {v1}, Landroidx/core/view/k0;->v(Landroid/view/WindowInsets;)Landroidx/core/view/k0;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/k0$b;-><init>(Landroidx/core/view/k0;)V

    .line 2
    invoke-virtual {p0}, Landroidx/core/view/k0$g;->k()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/k0;->n(Landroidx/core/graphics/b;IIII)Landroidx/core/graphics/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/k0$b;->c(Landroidx/core/graphics/b;)Landroidx/core/view/k0$b;

    .line 3
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->i()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/k0;->n(Landroidx/core/graphics/b;IIII)Landroidx/core/graphics/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/k0$b;->b(Landroidx/core/graphics/b;)Landroidx/core/view/k0$b;

    .line 4
    invoke-virtual {v0}, Landroidx/core/view/k0$b;->a()Landroidx/core/view/k0;

    move-result-object p1

    return-object p1
.end method

.method o()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public p([Landroidx/core/graphics/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/k0$g;->d:[Landroidx/core/graphics/b;

    return-void
.end method

.method q(Landroidx/core/graphics/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/k0$g;->g:Landroidx/core/graphics/b;

    return-void
.end method

.method r(Landroidx/core/view/k0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/k0$g;->f:Landroidx/core/view/k0;

    return-void
.end method

.method protected u(IZ)Landroidx/core/graphics/b;
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d7

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_91

    const/16 p2, 0x8

    if-eq p1, p2, :cond_55

    const/16 p2, 0x10

    if-eq p1, p2, :cond_50

    const/16 p2, 0x20

    if-eq p1, p2, :cond_4b

    const/16 p2, 0x40

    if-eq p1, p2, :cond_46

    const/16 p2, 0x80

    if-eq p1, p2, :cond_1f

    .line 1
    sget-object p1, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    return-object p1

    .line 2
    :cond_1f
    iget-object p1, p0, Landroidx/core/view/k0$g;->f:Landroidx/core/view/k0;

    if-eqz p1, :cond_28

    .line 3
    invoke-virtual {p1}, Landroidx/core/view/k0;->e()Landroidx/core/view/d;

    move-result-object p1

    goto :goto_2c

    .line 4
    :cond_28
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->f()Landroidx/core/view/d;

    move-result-object p1

    :goto_2c
    if-eqz p1, :cond_43

    .line 5
    invoke-virtual {p1}, Landroidx/core/view/d;->b()I

    move-result p2

    invoke-virtual {p1}, Landroidx/core/view/d;->d()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroidx/core/view/d;->c()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/d;->a()I

    move-result p1

    .line 7
    invoke-static {p2, v0, v1, p1}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1

    .line 8
    :cond_43
    sget-object p1, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    return-object p1

    .line 9
    :cond_46
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->l()Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4b
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->h()Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1

    .line 11
    :cond_50
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->j()Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1

    .line 12
    :cond_55
    iget-object p1, p0, Landroidx/core/view/k0$g;->d:[Landroidx/core/graphics/b;

    if-eqz p1, :cond_5f

    .line 13
    invoke-static {p2}, Landroidx/core/view/k0$m;->a(I)I

    move-result p2

    aget-object v2, p1, p2

    :cond_5f
    if-eqz v2, :cond_62

    return-object v2

    .line 14
    :cond_62
    invoke-virtual {p0}, Landroidx/core/view/k0$g;->k()Landroidx/core/graphics/b;

    move-result-object p1

    .line 15
    invoke-direct {p0}, Landroidx/core/view/k0$g;->v()Landroidx/core/graphics/b;

    move-result-object p2

    .line 16
    iget p1, p1, Landroidx/core/graphics/b;->d:I

    iget v0, p2, Landroidx/core/graphics/b;->d:I

    if-le p1, v0, :cond_75

    .line 17
    invoke-static {v1, v1, v1, p1}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1

    .line 18
    :cond_75
    iget-object p1, p0, Landroidx/core/view/k0$g;->g:Landroidx/core/graphics/b;

    if-eqz p1, :cond_8e

    sget-object v0, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    .line 19
    invoke-virtual {p1, v0}, Landroidx/core/graphics/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 20
    iget-object p1, p0, Landroidx/core/view/k0$g;->g:Landroidx/core/graphics/b;

    iget p1, p1, Landroidx/core/graphics/b;->d:I

    iget p2, p2, Landroidx/core/graphics/b;->d:I

    if-le p1, p2, :cond_8e

    .line 21
    invoke-static {v1, v1, v1, p1}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1

    .line 22
    :cond_8e
    sget-object p1, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    return-object p1

    :cond_91
    if-eqz p2, :cond_b8

    .line 23
    invoke-direct {p0}, Landroidx/core/view/k0$g;->v()Landroidx/core/graphics/b;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->i()Landroidx/core/graphics/b;

    move-result-object p2

    .line 25
    iget v0, p1, Landroidx/core/graphics/b;->a:I

    iget v2, p2, Landroidx/core/graphics/b;->a:I

    .line 26
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p1, Landroidx/core/graphics/b;->c:I

    iget v3, p2, Landroidx/core/graphics/b;->c:I

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p1, Landroidx/core/graphics/b;->d:I

    iget p2, p2, Landroidx/core/graphics/b;->d:I

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 29
    invoke-static {v0, v1, v2, p1}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1

    .line 30
    :cond_b8
    invoke-virtual {p0}, Landroidx/core/view/k0$g;->k()Landroidx/core/graphics/b;

    move-result-object p1

    .line 31
    iget-object p2, p0, Landroidx/core/view/k0$g;->f:Landroidx/core/view/k0;

    if-eqz p2, :cond_c4

    .line 32
    invoke-virtual {p2}, Landroidx/core/view/k0;->h()Landroidx/core/graphics/b;

    move-result-object v2

    .line 33
    :cond_c4
    iget p2, p1, Landroidx/core/graphics/b;->d:I

    if-eqz v2, :cond_ce

    .line 34
    iget v0, v2, Landroidx/core/graphics/b;->d:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 35
    :cond_ce
    iget v0, p1, Landroidx/core/graphics/b;->a:I

    iget p1, p1, Landroidx/core/graphics/b;->c:I

    invoke-static {v0, v1, p1, p2}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1

    :cond_d7
    if-eqz p2, :cond_ee

    .line 36
    invoke-direct {p0}, Landroidx/core/view/k0$g;->v()Landroidx/core/graphics/b;

    move-result-object p1

    .line 37
    iget p1, p1, Landroidx/core/graphics/b;->b:I

    .line 38
    invoke-virtual {p0}, Landroidx/core/view/k0$g;->k()Landroidx/core/graphics/b;

    move-result-object p2

    iget p2, p2, Landroidx/core/graphics/b;->b:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 39
    invoke-static {v1, p1, v1, v1}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1

    .line 40
    :cond_ee
    invoke-virtual {p0}, Landroidx/core/view/k0$g;->k()Landroidx/core/graphics/b;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/b;->b:I

    invoke-static {v1, p1, v1, v1}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.core.view.k0.h (androidx.core.view.k0$h)
.class Landroidx/core/view/k0$h;
.super Landroidx/core/view/k0$g;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private m:Landroidx/core/graphics/b;


# direct methods
.method constructor <init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/k0$g;-><init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/k0$h;->m:Landroidx/core/graphics/b;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;Landroidx/core/view/k0$h;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/core/view/k0$g;-><init>(Landroidx/core/view/k0;Landroidx/core/view/k0$g;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/core/view/k0$h;->m:Landroidx/core/graphics/b;

    .line 5
    iget-object p1, p2, Landroidx/core/view/k0$h;->m:Landroidx/core/graphics/b;

    iput-object p1, p0, Landroidx/core/view/k0$h;->m:Landroidx/core/graphics/b;

    return-void
.end method


# virtual methods
.method b()Landroidx/core/view/k0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/k0;->v(Landroid/view/WindowInsets;)Landroidx/core/view/k0;

    move-result-object v0

    return-object v0
.end method

.method c()Landroidx/core/view/k0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/k0;->v(Landroid/view/WindowInsets;)Landroidx/core/view/k0;

    move-result-object v0

    return-object v0
.end method

.method final i()Landroidx/core/graphics/b;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$h;->m:Landroidx/core/graphics/b;

    if-nez v0, :cond_22

    .line 2
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/k0$h;->m:Landroidx/core/graphics/b;

    .line 8
    :cond_22
    iget-object v0, p0, Landroidx/core/view/k0$h;->m:Landroidx/core/graphics/b;

    return-object v0
.end method

.method n()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public s(Landroidx/core/graphics/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/k0$h;->m:Landroidx/core/graphics/b;

    return-void
.end method

###### Class androidx.core.view.k0.i (androidx.core.view.k0$i)
.class Landroidx/core/view/k0$i;
.super Landroidx/core/view/k0$h;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/k0$h;-><init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;Landroidx/core/view/k0$i;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/core/view/k0$h;-><init>(Landroidx/core/view/k0;Landroidx/core/view/k0$h;)V

    return-void
.end method


# virtual methods
.method a()Landroidx/core/view/k0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/k0;->v(Landroid/view/WindowInsets;)Landroidx/core/view/k0;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Landroidx/core/view/k0$i;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Landroidx/core/view/k0$i;

    .line 3
    iget-object v1, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    iget-object v3, p1, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroidx/core/view/k0$g;->g:Landroidx/core/graphics/b;

    iget-object p1, p1, Landroidx/core/view/k0$g;->g:Landroidx/core/graphics/b;

    .line 4
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method f()Landroidx/core/view/d;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/d;->e(Landroid/view/DisplayCutout;)Landroidx/core/view/d;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method

###### Class androidx.core.view.k0.j (androidx.core.view.k0$j)
.class Landroidx/core/view/k0$j;
.super Landroidx/core/view/k0$i;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private n:Landroidx/core/graphics/b;

.field private o:Landroidx/core/graphics/b;

.field private p:Landroidx/core/graphics/b;


# direct methods
.method constructor <init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/k0$i;-><init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/k0$j;->n:Landroidx/core/graphics/b;

    .line 3
    iput-object p1, p0, Landroidx/core/view/k0$j;->o:Landroidx/core/graphics/b;

    .line 4
    iput-object p1, p0, Landroidx/core/view/k0$j;->p:Landroidx/core/graphics/b;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;Landroidx/core/view/k0$j;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/core/view/k0$i;-><init>(Landroidx/core/view/k0;Landroidx/core/view/k0$i;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/core/view/k0$j;->n:Landroidx/core/graphics/b;

    .line 7
    iput-object p1, p0, Landroidx/core/view/k0$j;->o:Landroidx/core/graphics/b;

    .line 8
    iput-object p1, p0, Landroidx/core/view/k0$j;->p:Landroidx/core/graphics/b;

    return-void
.end method


# virtual methods
.method h()Landroidx/core/graphics/b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$j;->o:Landroidx/core/graphics/b;

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/b;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/k0$j;->o:Landroidx/core/graphics/b;

    .line 4
    :cond_10
    iget-object v0, p0, Landroidx/core/view/k0$j;->o:Landroidx/core/graphics/b;

    return-object v0
.end method

.method j()Landroidx/core/graphics/b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$j;->n:Landroidx/core/graphics/b;

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/b;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/k0$j;->n:Landroidx/core/graphics/b;

    .line 3
    :cond_10
    iget-object v0, p0, Landroidx/core/view/k0$j;->n:Landroidx/core/graphics/b;

    return-object v0
.end method

.method l()Landroidx/core/graphics/b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$j;->p:Landroidx/core/graphics/b;

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/b;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/k0$j;->p:Landroidx/core/graphics/b;

    .line 3
    :cond_10
    iget-object v0, p0, Landroidx/core/view/k0$j;->p:Landroidx/core/graphics/b;

    return-object v0
.end method

.method m(IIII)Landroidx/core/view/k0;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/k0;->v(Landroid/view/WindowInsets;)Landroidx/core/view/k0;

    move-result-object p1

    return-object p1
.end method

.method public s(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

###### Class androidx.core.view.k0.k (androidx.core.view.k0$k)
.class Landroidx/core/view/k0$k;
.super Landroidx/core/view/k0$j;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# static fields
.field static final q:Landroidx/core/view/k0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/k0;->v(Landroid/view/WindowInsets;)Landroidx/core/view/k0;

    move-result-object v0

    sput-object v0, Landroidx/core/view/k0$k;->q:Landroidx/core/view/k0;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/k0$j;-><init>(Landroidx/core/view/k0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;Landroidx/core/view/k0$k;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/core/view/k0$j;-><init>(Landroidx/core/view/k0;Landroidx/core/view/k0$j;)V

    return-void
.end method


# virtual methods
.method final d(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public g(I)Landroidx/core/graphics/b;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$g;->c:Landroid/view/WindowInsets;

    .line 2
    invoke-static {p1}, Landroidx/core/view/k0$n;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroidx/core/graphics/b;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.core.view.k0.l (androidx.core.view.k0$l)
.class Landroidx/core/view/k0$l;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# static fields
.field static final b:Landroidx/core/view/k0;


# instance fields
.field final a:Landroidx/core/view/k0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/core/view/k0$b;

    invoke-direct {v0}, Landroidx/core/view/k0$b;-><init>()V

    .line 2
    invoke-virtual {v0}, Landroidx/core/view/k0$b;->a()Landroidx/core/view/k0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/core/view/k0;->a()Landroidx/core/view/k0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/core/view/k0;->b()Landroidx/core/view/k0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/core/view/k0;->c()Landroidx/core/view/k0;

    move-result-object v0

    sput-object v0, Landroidx/core/view/k0$l;->b:Landroidx/core/view/k0;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/k0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/k0$l;->a:Landroidx/core/view/k0;

    return-void
.end method


# virtual methods
.method a()Landroidx/core/view/k0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$l;->a:Landroidx/core/view/k0;

    return-object v0
.end method

.method b()Landroidx/core/view/k0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$l;->a:Landroidx/core/view/k0;

    return-object v0
.end method

.method c()Landroidx/core/view/k0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/k0$l;->a:Landroidx/core/view/k0;

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method e(Landroidx/core/view/k0;)V
    .registers 2

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Landroidx/core/view/k0$l;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Landroidx/core/view/k0$l;

    .line 3
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->o()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/k0$l;->o()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    .line 4
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->n()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/k0$l;->n()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    .line 5
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->k()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/k0$l;->k()Landroidx/core/graphics/b;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 6
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->i()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/k0$l;->i()Landroidx/core/graphics/b;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 7
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->f()Landroidx/core/view/d;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/k0$l;->f()Landroidx/core/view/d;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    return v0
.end method

.method f()Landroidx/core/view/d;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method g(I)Landroidx/core/graphics/b;
    .registers 2

    .line 1
    sget-object p1, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    return-object p1
.end method

.method h()Landroidx/core/graphics/b;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/k0$l;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/k0$l;->k()Landroidx/core/graphics/b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->i()Landroidx/core/graphics/b;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/k0$l;->f()Landroidx/core/view/d;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Landroidx/core/util/c;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i()Landroidx/core/graphics/b;
    .registers 2

    .line 1
    sget-object v0, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    return-object v0
.end method

.method j()Landroidx/core/graphics/b;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method

.method k()Landroidx/core/graphics/b;
    .registers 2

    .line 1
    sget-object v0, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    return-object v0
.end method

.method l()Landroidx/core/graphics/b;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/k0$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method

.method m(IIII)Landroidx/core/view/k0;
    .registers 5

    .line 1
    sget-object p1, Landroidx/core/view/k0$l;->b:Landroidx/core/view/k0;

    return-object p1
.end method

.method n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method o()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public p([Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

.method q(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

.method r(Landroidx/core/view/k0;)V
    .registers 2

    return-void
.end method

.method public s(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

###### Class androidx.core.view.k0.m (androidx.core.view.k0$m)
.class public final Landroidx/core/view/k0$m;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# direct methods
.method static a(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_44

    const/4 v1, 0x2

    if-eq p0, v1, :cond_43

    const/4 v0, 0x4

    if-eq p0, v0, :cond_42

    const/16 v1, 0x8

    if-eq p0, v1, :cond_40

    const/16 v2, 0x10

    if-eq p0, v2, :cond_3f

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x80

    if-eq p0, v0, :cond_39

    const/16 v0, 0x100

    if-ne p0, v0, :cond_22

    return v1

    .line 1
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    const/4 p0, 0x7

    return p0

    :cond_3b
    const/4 p0, 0x6

    return p0

    :cond_3d
    const/4 p0, 0x5

    return p0

    :cond_3f
    return v0

    :cond_40
    const/4 p0, 0x3

    return p0

    :cond_42
    return v1

    :cond_43
    return v0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

###### Class androidx.core.view.k0.n (androidx.core.view.k0$n)
.class final Landroidx/core/view/k0$n;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n"
.end annotation


# direct methods
.method static a(I)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_3
    const/16 v3, 0x100

    if-gt v2, v3, :cond_53

    and-int v3, p0, v2

    if-eqz v3, :cond_50

    if-eq v2, v0, :cond_4b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_46

    const/4 v3, 0x4

    if-eq v2, v3, :cond_41

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3c

    const/16 v3, 0x10

    if-eq v2, v3, :cond_37

    const/16 v3, 0x20

    if-eq v2, v3, :cond_32

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x80

    if-eq v2, v3, :cond_28

    goto :goto_50

    .line 1
    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    goto :goto_4f

    .line 2
    :cond_2d
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v3

    goto :goto_4f

    .line 3
    :cond_32
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    goto :goto_4f

    .line 4
    :cond_37
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    goto :goto_4f

    .line 5
    :cond_3c
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    goto :goto_4f

    .line 6
    :cond_41
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v3

    goto :goto_4f

    .line 7
    :cond_46
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    goto :goto_4f

    .line 8
    :cond_4b
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    :goto_4f
    or-int/2addr v1, v3

    :cond_50
    :goto_50
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_53
    return v1
.end method
