###### Class androidx.appcompat.widget.a0 (androidx.appcompat.widget.a0)
.class Landroidx/appcompat/widget/a0;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/a0$g;,
        Landroidx/appcompat/widget/a0$d;,
        Landroidx/appcompat/widget/a0$c;,
        Landroidx/appcompat/widget/a0$e;,
        Landroidx/appcompat/widget/a0$f;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroidx/appcompat/widget/u0;

.field private c:Landroidx/appcompat/widget/u0;

.field private d:Landroidx/appcompat/widget/u0;

.field private e:Landroidx/appcompat/widget/u0;

.field private f:Landroidx/appcompat/widget/u0;

.field private g:Landroidx/appcompat/widget/u0;

.field private h:Landroidx/appcompat/widget/u0;

.field private final i:Landroidx/appcompat/widget/b0;

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Typeface;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/a0;->j:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/appcompat/widget/a0;->k:I

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    .line 5
    new-instance v0, Landroidx/appcompat/widget/b0;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/b0;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    return-void
.end method

.method private B(IF)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/b0;->w(IF)V

    return-void
.end method

.method private C(Landroid/content/Context;Landroidx/appcompat/widget/w0;)V
    .registers 13

    .line 1
    sget v0, Lf/j;->H2:I

    iget v1, p0, Landroidx/appcompat/widget/a0;->j:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/w0;->k(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/a0;->j:I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_23

    .line 3
    sget v5, Lf/j;->M2:I

    invoke-virtual {p2, v5, v3}, Landroidx/appcompat/widget/w0;->k(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/a0;->k:I

    if-eq v5, v3, :cond_23

    .line 4
    iget v5, p0, Landroidx/appcompat/widget/a0;->j:I

    and-int/2addr v5, v2

    or-int/2addr v5, v4

    iput v5, p0, Landroidx/appcompat/widget/a0;->j:I

    .line 5
    :cond_23
    sget v5, Lf/j;->L2:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_5a

    sget v6, Lf/j;->N2:I

    .line 6
    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v6

    if-eqz v6, :cond_35

    goto :goto_5a

    .line 7
    :cond_35
    sget p1, Lf/j;->G2:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 8
    iput-boolean v4, p0, Landroidx/appcompat/widget/a0;->m:Z

    .line 9
    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/w0;->k(II)I

    move-result p1

    if-eq p1, v7, :cond_55

    if-eq p1, v2, :cond_50

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4b

    goto :goto_59

    .line 10
    :cond_4b
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    goto :goto_59

    .line 11
    :cond_50
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    goto :goto_59

    .line 12
    :cond_55
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    :cond_59
    :goto_59
    return-void

    :cond_5a
    :goto_5a
    const/4 v6, 0x0

    .line 13
    iput-object v6, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    .line 14
    sget v6, Lf/j;->N2:I

    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v8

    if-eqz v8, :cond_66

    move v5, v6

    .line 15
    :cond_66
    iget v6, p0, Landroidx/appcompat/widget/a0;->k:I

    .line 16
    iget v8, p0, Landroidx/appcompat/widget/a0;->j:I

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_ac

    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-direct {p1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    new-instance v9, Landroidx/appcompat/widget/a0$a;

    invoke-direct {v9, p0, v6, v8, p1}, Landroidx/appcompat/widget/a0$a;-><init>(Landroidx/appcompat/widget/a0;IILjava/lang/ref/WeakReference;)V

    .line 20
    :try_start_7c
    iget p1, p0, Landroidx/appcompat/widget/a0;->j:I

    invoke-virtual {p2, v5, p1, v9}, Landroidx/appcompat/widget/w0;->j(IILandroidx/core/content/res/h$f;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a1

    if-lt v0, v1, :cond_9f

    .line 21
    iget v0, p0, Landroidx/appcompat/widget/a0;->k:I

    if-eq v0, v3, :cond_9f

    .line 22
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/widget/a0;->k:I

    iget v6, p0, Landroidx/appcompat/widget/a0;->j:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_97

    const/4 v6, 0x1

    goto :goto_98

    :cond_97
    const/4 v6, 0x0

    .line 23
    :goto_98
    invoke-static {p1, v0, v6}, Landroidx/appcompat/widget/a0$g;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    goto :goto_a1

    .line 24
    :cond_9f
    iput-object p1, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    .line 25
    :cond_a1
    :goto_a1
    iget-object p1, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_a7

    const/4 p1, 0x1

    goto :goto_a8

    :cond_a7
    const/4 p1, 0x0

    :goto_a8
    iput-boolean p1, p0, Landroidx/appcompat/widget/a0;->m:Z
    :try_end_aa
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7c .. :try_end_aa} :catch_ab
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7c .. :try_end_aa} :catch_ab

    goto :goto_ac

    :catch_ab
    nop

    .line 26
    :cond_ac
    :goto_ac
    iget-object p1, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_d9

    .line 27
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d9

    .line 28
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_d1

    iget p2, p0, Landroidx/appcompat/widget/a0;->k:I

    if-eq p2, v3, :cond_d1

    .line 29
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/a0;->k:I

    iget v0, p0, Landroidx/appcompat/widget/a0;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_ca

    const/4 v4, 0x1

    .line 30
    :cond_ca
    invoke-static {p1, p2, v4}, Landroidx/appcompat/widget/a0$g;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    goto :goto_d9

    .line 31
    :cond_d1
    iget p2, p0, Landroidx/appcompat/widget/a0;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    :cond_d9
    :goto_d9
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V
    .registers 4

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/j;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;[I)V

    :cond_d
    return-void
.end method

.method private static d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;
    .registers 3

    .line 1
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/j;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2
    new-instance p1, Landroidx/appcompat/widget/u0;

    invoke-direct {p1}, Landroidx/appcompat/widget/u0;-><init>()V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Landroidx/appcompat/widget/u0;->d:Z

    .line 4
    iput-object p0, p1, Landroidx/appcompat/widget/u0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private y(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v0, v1, :cond_2e

    if-nez p5, :cond_e

    if-eqz p6, :cond_2e

    .line 2
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/appcompat/widget/a0$c;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    iget-object p3, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    if-eqz p5, :cond_19

    goto :goto_1b

    .line 4
    :cond_19
    aget-object p5, p1, v5

    :goto_1b
    if-eqz p2, :cond_1e

    goto :goto_20

    .line 5
    :cond_1e
    aget-object p2, p1, v3

    :goto_20
    if-eqz p6, :cond_23

    goto :goto_25

    .line 6
    :cond_23
    aget-object p6, p1, v4

    :goto_25
    if-eqz p4, :cond_28

    goto :goto_2a

    .line 7
    :cond_28
    aget-object p4, p1, v2

    .line 8
    :goto_2a
    invoke-static {p3, p5, p2, p6, p4}, Landroidx/appcompat/widget/a0$c;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_79

    :cond_2e
    if-nez p1, :cond_36

    if-nez p2, :cond_36

    if-nez p3, :cond_36

    if-eqz p4, :cond_79

    :cond_36
    if-lt v0, v1, :cond_5a

    .line 9
    iget-object p5, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {p5}, Landroidx/appcompat/widget/a0$c;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 10
    aget-object p6, p5, v5

    if-nez p6, :cond_46

    aget-object p6, p5, v4

    if-eqz p6, :cond_5a

    .line 11
    :cond_46
    iget-object p1, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    aget-object p3, p5, v5

    if-eqz p2, :cond_4d

    goto :goto_4f

    .line 12
    :cond_4d
    aget-object p2, p5, v3

    :goto_4f
    aget-object p6, p5, v4

    if-eqz p4, :cond_54

    goto :goto_56

    .line 13
    :cond_54
    aget-object p4, p5, v2

    .line 14
    :goto_56
    invoke-static {p1, p3, p2, p6, p4}, Landroidx/appcompat/widget/a0$c;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 15
    :cond_5a
    iget-object p5, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 16
    iget-object p6, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_65

    goto :goto_67

    .line 17
    :cond_65
    aget-object p1, p5, v5

    :goto_67
    if-eqz p2, :cond_6a

    goto :goto_6c

    .line 18
    :cond_6a
    aget-object p2, p5, v3

    :goto_6c
    if-eqz p3, :cond_6f

    goto :goto_71

    .line 19
    :cond_6f
    aget-object p3, p5, v4

    :goto_71
    if-eqz p4, :cond_74

    goto :goto_76

    .line 20
    :cond_74
    aget-object p4, p5, v2

    .line 21
    :goto_76
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_79
    :goto_79
    return-void
.end method

.method private z()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->h:Landroidx/appcompat/widget/u0;

    iput-object v0, p0, Landroidx/appcompat/widget/a0;->b:Landroidx/appcompat/widget/u0;

    .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/a0;->c:Landroidx/appcompat/widget/u0;

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/a0;->d:Landroidx/appcompat/widget/u0;

    .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/a0;->e:Landroidx/appcompat/widget/u0;

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/a0;->f:Landroidx/appcompat/widget/u0;

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/a0;->g:Landroidx/appcompat/widget/u0;

    return-void
.end method


# virtual methods
.method A(IF)V
    .registers 4

    .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-nez v0, :cond_d

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/a0;->l()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/a0;->B(IF)V

    :cond_d
    return-void
.end method

.method b()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->b:Landroidx/appcompat/widget/u0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/a0;->c:Landroidx/appcompat/widget/u0;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/a0;->d:Landroidx/appcompat/widget/u0;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/a0;->e:Landroidx/appcompat/widget/u0;

    if-eqz v0, :cond_36

    .line 2
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/a0;->b:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/a0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    const/4 v3, 0x1

    .line 4
    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/a0;->c:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/a0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    .line 5
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/a0;->d:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/a0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    const/4 v3, 0x3

    .line 6
    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/a0;->e:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/a0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    .line 7
    :cond_36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_58

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->f:Landroidx/appcompat/widget/u0;

    if-nez v0, :cond_44

    iget-object v0, p0, Landroidx/appcompat/widget/a0;->g:Landroidx/appcompat/widget/u0;

    if-eqz v0, :cond_58

    .line 9
    :cond_44
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/appcompat/widget/a0$c;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/a0;->f:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/a0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    .line 11
    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/a0;->g:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/a0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    :cond_58
    return-void
.end method

.method c()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b0;->b()V

    return-void
.end method

.method e()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b0;->h()I

    move-result v0

    return v0
.end method

.method f()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b0;->i()I

    move-result v0

    return v0
.end method

.method g()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b0;->j()I

    move-result v0

    return v0
.end method

.method h()[I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b0;->k()[I

    move-result-object v0

    return-object v0
.end method

.method i()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b0;->l()I

    move-result v0

    return v0
.end method

.method j()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->h:Landroidx/appcompat/widget/u0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/u0;->a:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method k()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->h:Landroidx/appcompat/widget/u0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/u0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b0;->q()Z

    move-result v0

    return v0
.end method

.method m(Landroid/util/AttributeSet;I)V
    .registers 26
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 1
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 2
    invoke-static {}, Landroidx/appcompat/widget/j;->b()Landroidx/appcompat/widget/j;

    move-result-object v11

    .line 3
    sget-object v2, Lf/j;->Y:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v2, v9, v12}, Landroidx/appcompat/widget/w0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/w0;

    move-result-object v13

    .line 4
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {v13}, Landroidx/appcompat/widget/w0;->r()Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 6
    invoke-static/range {v0 .. v6}, Landroidx/core/view/a0;->o0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 7
    sget v0, Lf/j;->Z:I

    const/4 v14, -0x1

    invoke-virtual {v13, v0, v14}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    .line 8
    sget v1, Lf/j;->c0:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 9
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v1

    .line 10
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/a0;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/a0;->b:Landroidx/appcompat/widget/u0;

    .line 11
    :cond_42
    sget v1, Lf/j;->a0:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 12
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v1

    .line 13
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/a0;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/a0;->c:Landroidx/appcompat/widget/u0;

    .line 14
    :cond_54
    sget v1, Lf/j;->d0:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 15
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v1

    .line 16
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/a0;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/a0;->d:Landroidx/appcompat/widget/u0;

    .line 17
    :cond_66
    sget v1, Lf/j;->b0:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 18
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v1

    .line 19
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/a0;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/a0;->e:Landroidx/appcompat/widget/u0;

    .line 20
    :cond_78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_a2

    .line 21
    sget v2, Lf/j;->e0:I

    invoke-virtual {v13, v2}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 22
    invoke-virtual {v13, v2, v12}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v2

    .line 23
    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/a0;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/a0;->f:Landroidx/appcompat/widget/u0;

    .line 24
    :cond_90
    sget v2, Lf/j;->f0:I

    invoke-virtual {v13, v2}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 25
    invoke-virtual {v13, v2, v12}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v2

    .line 26
    invoke-static {v10, v11, v2}, Landroidx/appcompat/widget/a0;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/a0;->g:Landroidx/appcompat/widget/u0;

    .line 27
    :cond_a2
    invoke-virtual {v13}, Landroidx/appcompat/widget/w0;->w()V

    .line 28
    iget-object v2, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    .line 29
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    const/16 v3, 0x1a

    const/16 v5, 0x17

    if-eq v0, v14, :cond_11e

    .line 30
    sget-object v6, Lf/j;->E2:[I

    invoke-static {v10, v0, v6}, Landroidx/appcompat/widget/w0;->t(Landroid/content/Context;I[I)Landroidx/appcompat/widget/w0;

    move-result-object v0

    if-nez v2, :cond_c9

    .line 31
    sget v6, Lf/j;->P2:I

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v15

    if-eqz v15, :cond_c9

    .line 32
    invoke-virtual {v0, v6, v12}, Landroidx/appcompat/widget/w0;->a(IZ)Z

    move-result v6

    const/4 v15, 0x1

    goto :goto_cb

    :cond_c9
    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 33
    :goto_cb
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/a0;->C(Landroid/content/Context;Landroidx/appcompat/widget/w0;)V

    if-ge v1, v5, :cond_f9

    .line 34
    sget v4, Lf/j;->I2:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v17

    if-eqz v17, :cond_dd

    .line 35
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_de

    :cond_dd
    const/4 v4, 0x0

    .line 36
    :goto_de
    sget v13, Lf/j;->J2:I

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v18

    if-eqz v18, :cond_eb

    .line 37
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_ec

    :cond_eb
    const/4 v13, 0x0

    .line 38
    :goto_ec
    sget v14, Lf/j;->K2:I

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v19

    if-eqz v19, :cond_fb

    .line 39
    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    goto :goto_fc

    :cond_f9
    const/4 v4, 0x0

    const/4 v13, 0x0

    :cond_fb
    const/4 v14, 0x0

    .line 40
    :goto_fc
    sget v5, Lf/j;->Q2:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v20

    if-eqz v20, :cond_109

    .line 41
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_10a

    :cond_109
    const/4 v5, 0x0

    :goto_10a
    if-lt v1, v3, :cond_119

    .line 42
    sget v3, Lf/j;->O2:I

    .line 43
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v21

    if-eqz v21, :cond_119

    .line 44
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11a

    :cond_119
    const/4 v3, 0x0

    .line 45
    :goto_11a
    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->w()V

    goto :goto_125

    :cond_11e
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 46
    :goto_125
    sget-object v0, Lf/j;->E2:[I

    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/w0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/w0;

    move-result-object v0

    if-nez v2, :cond_140

    .line 47
    sget v12, Lf/j;->P2:I

    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v22

    if-eqz v22, :cond_140

    move-object/from16 v22, v3

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, v12, v3}, Landroidx/appcompat/widget/w0;->a(IZ)Z

    move-result v6

    const/16 v3, 0x17

    const/4 v15, 0x1

    goto :goto_144

    :cond_140
    move-object/from16 v22, v3

    const/16 v3, 0x17

    :goto_144
    if-ge v1, v3, :cond_16a

    .line 49
    sget v3, Lf/j;->I2:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v12

    if-eqz v12, :cond_152

    .line 50
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 51
    :cond_152
    sget v3, Lf/j;->J2:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v12

    if-eqz v12, :cond_15e

    .line 52
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 53
    :cond_15e
    sget v3, Lf/j;->K2:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v12

    if-eqz v12, :cond_16a

    .line 54
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 55
    :cond_16a
    sget v3, Lf/j;->Q2:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v12

    if-eqz v12, :cond_176

    .line 56
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object v5

    :cond_176
    const/16 v3, 0x1a

    if-lt v1, v3, :cond_187

    .line 57
    sget v3, Lf/j;->O2:I

    .line 58
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v12

    if-eqz v12, :cond_187

    .line 59
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_189

    :cond_187
    move-object/from16 v3, v22

    :goto_189
    const/16 v12, 0x1c

    if-lt v1, v12, :cond_1a6

    .line 60
    sget v12, Lf/j;->F2:I

    .line 61
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v16

    if-eqz v16, :cond_1a6

    move-object/from16 v16, v11

    const/4 v11, -0x1

    .line 62
    invoke-virtual {v0, v12, v11}, Landroidx/appcompat/widget/w0;->f(II)I

    move-result v12

    if-nez v12, :cond_1a8

    .line 63
    iget-object v11, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v8, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1a8

    :cond_1a6
    move-object/from16 v16, v11

    .line 64
    :cond_1a8
    :goto_1a8
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/a0;->C(Landroid/content/Context;Landroidx/appcompat/widget/w0;)V

    .line 65
    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->w()V

    if-eqz v4, :cond_1b5

    .line 66
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1b5
    if-eqz v13, :cond_1bc

    .line 67
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1bc
    if-eqz v14, :cond_1c3

    .line 68
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1c3
    if-nez v2, :cond_1ca

    if-eqz v15, :cond_1ca

    .line 69
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/a0;->s(Z)V

    .line 70
    :cond_1ca
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1e0

    .line 71
    iget v2, v7, Landroidx/appcompat/widget/a0;->k:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1db

    .line 72
    iget-object v2, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    iget v4, v7, Landroidx/appcompat/widget/a0;->j:I

    invoke-virtual {v2, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1e0

    .line 73
    :cond_1db
    iget-object v2, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1e0
    :goto_1e0
    if-eqz v3, :cond_1e7

    .line 74
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/appcompat/widget/a0$f;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    :cond_1e7
    if-eqz v5, :cond_20d

    const/16 v0, 0x18

    if-lt v1, v0, :cond_1f7

    .line 75
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v5}, Landroidx/appcompat/widget/a0$e;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/widget/a0$e;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    goto :goto_20d

    :cond_1f7
    const/16 v0, 0x15

    if-lt v1, v0, :cond_20d

    const-string v0, ","

    .line 76
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 77
    iget-object v1, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/appcompat/widget/a0$d;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/appcompat/widget/a0$c;->c(Landroid/widget/TextView;Ljava/util/Locale;)V

    .line 78
    :cond_20d
    :goto_20d
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Landroidx/appcompat/widget/b0;->r(Landroid/util/AttributeSet;I)V

    .line 79
    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_255

    .line 80
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b0;->l()I

    move-result v0

    if-eqz v0, :cond_255

    .line 81
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    .line 82
    invoke-virtual {v0}, Landroidx/appcompat/widget/b0;->k()[I

    move-result-object v0

    .line 83
    array-length v2, v0

    if-lez v2, :cond_255

    .line 84
    iget-object v2, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v2}, Landroidx/appcompat/widget/a0$f;->a(Landroid/widget/TextView;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_24f

    .line 85
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    iget-object v2, v7, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    .line 86
    invoke-virtual {v2}, Landroidx/appcompat/widget/b0;->i()I

    move-result v2

    iget-object v3, v7, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    .line 87
    invoke-virtual {v3}, Landroidx/appcompat/widget/b0;->h()I

    move-result v3

    iget-object v4, v7, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    .line 88
    invoke-virtual {v4}, Landroidx/appcompat/widget/b0;->j()I

    move-result v4

    const/4 v5, 0x0

    .line 89
    invoke-static {v0, v2, v3, v4, v5}, Landroidx/appcompat/widget/a0$f;->b(Landroid/widget/TextView;IIII)V

    goto :goto_255

    :cond_24f
    const/4 v5, 0x0

    .line 90
    iget-object v2, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v2, v0, v5}, Landroidx/appcompat/widget/a0$f;->c(Landroid/widget/TextView;[II)V

    .line 91
    :cond_255
    :goto_255
    sget-object v0, Lf/j;->g0:[I

    invoke-static {v10, v1, v0}, Landroidx/appcompat/widget/w0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/w0;

    move-result-object v8

    .line 92
    sget v0, Lf/j;->o0:I

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    move-object/from16 v2, v16

    if-eq v0, v1, :cond_26c

    .line 93
    invoke-virtual {v2, v10, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    goto :goto_26d

    :cond_26c
    const/4 v3, 0x0

    .line 94
    :goto_26d
    sget v0, Lf/j;->t0:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_27b

    .line 95
    invoke-virtual {v2, v10, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_27c

    :cond_27b
    const/4 v4, 0x0

    .line 96
    :goto_27c
    sget v0, Lf/j;->p0:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_28a

    .line 97
    invoke-virtual {v2, v10, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_28b

    :cond_28a
    const/4 v5, 0x0

    .line 98
    :goto_28b
    sget v0, Lf/j;->m0:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_299

    .line 99
    invoke-virtual {v2, v10, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_29a

    :cond_299
    const/4 v6, 0x0

    .line 100
    :goto_29a
    sget v0, Lf/j;->q0:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_2a8

    .line 101
    invoke-virtual {v2, v10, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_2a9

    :cond_2a8
    const/4 v9, 0x0

    .line 102
    :goto_2a9
    sget v0, Lf/j;->n0:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_2b7

    .line 103
    invoke-virtual {v2, v10, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v10, v0

    goto :goto_2b8

    :cond_2b7
    const/4 v10, 0x0

    :goto_2b8
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v9

    move-object v6, v10

    .line 104
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/a0;->y(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 105
    sget v0, Lf/j;->r0:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_2d4

    .line 106
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 107
    iget-object v1, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/j;->g(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 108
    :cond_2d4
    sget v0, Lf/j;->s0:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_2ec

    const/4 v1, -0x1

    .line 109
    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/w0;->k(II)I

    move-result v0

    const/4 v2, 0x0

    .line 110
    invoke-static {v0, v2}, Landroidx/appcompat/widget/f0;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 111
    iget-object v2, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/core/widget/j;->h(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_2ed

    :cond_2ec
    const/4 v1, -0x1

    .line 112
    :goto_2ed
    sget v0, Lf/j;->v0:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/w0;->f(II)I

    move-result v0

    .line 113
    sget v2, Lf/j;->w0:I

    invoke-virtual {v8, v2, v1}, Landroidx/appcompat/widget/w0;->f(II)I

    move-result v2

    .line 114
    sget v3, Lf/j;->x0:I

    invoke-virtual {v8, v3, v1}, Landroidx/appcompat/widget/w0;->f(II)I

    move-result v3

    .line 115
    invoke-virtual {v8}, Landroidx/appcompat/widget/w0;->w()V

    if-eq v0, v1, :cond_309

    .line 116
    iget-object v4, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/core/widget/j;->j(Landroid/widget/TextView;I)V

    :cond_309
    if-eq v2, v1, :cond_310

    .line 117
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/widget/j;->k(Landroid/widget/TextView;I)V

    :cond_310
    if-eq v3, v1, :cond_317

    .line 118
    iget-object v0, v7, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/core/widget/j;->l(Landroid/widget/TextView;I)V

    :cond_317
    return-void
.end method

.method n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/a0;->m:Z

    if-eqz v0, :cond_24

    .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_24

    .line 4
    invoke-static {p1}, Landroidx/core/view/a0;->T(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5
    iget v0, p0, Landroidx/appcompat/widget/a0;->j:I

    .line 6
    new-instance v1, Landroidx/appcompat/widget/a0$b;

    invoke-direct {v1, p0, p1, p2, v0}, Landroidx/appcompat/widget/a0$b;-><init>(Landroidx/appcompat/widget/a0;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    .line 7
    :cond_1f
    iget v0, p0, Landroidx/appcompat/widget/a0;->j:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_24
    :goto_24
    return-void
.end method

.method o(ZIIII)V
    .registers 6

    .line 1
    sget-boolean p1, Landroidx/core/widget/b;->a:Z

    if-nez p1, :cond_7

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/a0;->c()V

    :cond_7
    return-void
.end method

.method p()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/a0;->b()V

    return-void
.end method

.method q(Landroid/content/Context;I)V
    .registers 7

    .line 1
    sget-object v0, Lf/j;->E2:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/w0;->t(Landroid/content/Context;I[I)Landroidx/appcompat/widget/w0;

    move-result-object p2

    .line 2
    sget v0, Lf/j;->P2:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 3
    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/w0;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/a0;->s(Z)V

    .line 4
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_55

    .line 5
    sget v1, Lf/j;->I2:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 6
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 7
    iget-object v3, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_2f
    sget v1, Lf/j;->K2:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 9
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 10
    iget-object v3, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 11
    :cond_42
    sget v1, Lf/j;->J2:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 12
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 13
    iget-object v3, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 14
    :cond_55
    sget v1, Lf/j;->F2:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v3, -0x1

    .line 15
    invoke-virtual {p2, v1, v3}, Landroidx/appcompat/widget/w0;->f(II)I

    move-result v1

    if-nez v1, :cond_6a

    .line 16
    iget-object v1, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    :cond_6a
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/a0;->C(Landroid/content/Context;Landroidx/appcompat/widget/w0;)V

    const/16 p1, 0x1a

    if-lt v0, p1, :cond_84

    .line 18
    sget p1, Lf/j;->O2:I

    .line 19
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/w0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 20
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 21
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/a0$f;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 22
    :cond_84
    invoke-virtual {p2}, Landroidx/appcompat/widget/w0;->w()V

    .line 23
    iget-object p1, p0, Landroidx/appcompat/widget/a0;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_92

    .line 24
    iget-object p2, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/a0;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_92
    return-void
.end method

.method r(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_f

    if-eqz p2, :cond_f

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p3, p1}, Lz/a;->f(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method

.method s(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method t(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/b0;->s(IIII)V

    return-void
.end method

.method u([II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/b0;->t([II)V

    return-void
.end method

.method v(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->i:Landroidx/appcompat/widget/b0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/b0;->u(I)V

    return-void
.end method

.method w(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->h:Landroidx/appcompat/widget/u0;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/appcompat/widget/u0;

    invoke-direct {v0}, Landroidx/appcompat/widget/u0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/a0;->h:Landroidx/appcompat/widget/u0;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->h:Landroidx/appcompat/widget/u0;

    iput-object p1, v0, Landroidx/appcompat/widget/u0;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 4
    :goto_14
    iput-boolean p1, v0, Landroidx/appcompat/widget/u0;->d:Z

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/a0;->z()V

    return-void
.end method

.method x(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->h:Landroidx/appcompat/widget/u0;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/appcompat/widget/u0;

    invoke-direct {v0}, Landroidx/appcompat/widget/u0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/a0;->h:Landroidx/appcompat/widget/u0;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/a0;->h:Landroidx/appcompat/widget/u0;

    iput-object p1, v0, Landroidx/appcompat/widget/u0;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 4
    :goto_14
    iput-boolean p1, v0, Landroidx/appcompat/widget/u0;->c:Z

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/a0;->z()V

    return-void
.end method

###### Class androidx.appcompat.widget.a0.a (androidx.appcompat.widget.a0$a)
.class Landroidx/appcompat/widget/a0$a;
.super Landroidx/core/content/res/h$f;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/a0;->C(Landroid/content/Context;Landroidx/appcompat/widget/w0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/ref/WeakReference;

.field final synthetic d:Landroidx/appcompat/widget/a0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/a0;IILjava/lang/ref/WeakReference;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/a0$a;->d:Landroidx/appcompat/widget/a0;

    iput p2, p0, Landroidx/appcompat/widget/a0$a;->a:I

    iput p3, p0, Landroidx/appcompat/widget/a0$a;->b:I

    iput-object p4, p0, Landroidx/appcompat/widget/a0$a;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroidx/core/content/res/h$f;-><init>()V

    return-void
.end method


# virtual methods
.method public h(I)V
    .registers 2

    return-void
.end method

.method public i(Landroid/graphics/Typeface;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_18

    .line 2
    iget v0, p0, Landroidx/appcompat/widget/a0$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 3
    iget v1, p0, Landroidx/appcompat/widget/a0$a;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/a0$g;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    .line 4
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/a0$a;->d:Landroidx/appcompat/widget/a0;

    iget-object v1, p0, Landroidx/appcompat/widget/a0$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/a0;->n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method

###### Class androidx.appcompat.widget.a0.b (androidx.appcompat.widget.a0$b)
.class Landroidx/appcompat/widget/a0$b;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/a0;->n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroid/widget/TextView;

.field final synthetic p:Landroid/graphics/Typeface;

.field final synthetic q:I

.field final synthetic r:Landroidx/appcompat/widget/a0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/a0;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/a0$b;->r:Landroidx/appcompat/widget/a0;

    iput-object p2, p0, Landroidx/appcompat/widget/a0$b;->o:Landroid/widget/TextView;

    iput-object p3, p0, Landroidx/appcompat/widget/a0$b;->p:Landroid/graphics/Typeface;

    iput p4, p0, Landroidx/appcompat/widget/a0$b;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a0$b;->o:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/a0$b;->p:Landroid/graphics/Typeface;

    iget v2, p0, Landroidx/appcompat/widget/a0$b;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

###### Class androidx.appcompat.widget.a0.c (androidx.appcompat.widget.a0$c)
.class Landroidx/appcompat/widget/a0$c;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static c(Landroid/widget/TextView;Ljava/util/Locale;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method

###### Class androidx.appcompat.widget.a0.d (androidx.appcompat.widget.a0$d)
.class Landroidx/appcompat/widget/a0$d;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method static a(Ljava/lang/String;)Ljava/util/Locale;
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.appcompat.widget.a0.e (androidx.appcompat.widget.a0$e)
.class Landroidx/appcompat/widget/a0$e;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method static a(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/widget/TextView;Landroid/os/LocaleList;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    return-void
.end method

###### Class androidx.appcompat.widget.a0.f (androidx.appcompat.widget.a0$f)
.class Landroidx/appcompat/widget/a0$f;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method static a(Landroid/widget/TextView;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result p0

    return p0
.end method

.method static b(Landroid/widget/TextView;IIII)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void
.end method

.method static c(Landroid/widget/TextView;[II)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void
.end method

.method static d(Landroid/widget/TextView;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

###### Class androidx.appcompat.widget.a0.g (androidx.appcompat.widget.a0$g)
.class Landroidx/appcompat/widget/a0$g;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method static a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
