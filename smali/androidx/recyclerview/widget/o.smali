###### Class androidx.recyclerview.widget.o (androidx.recyclerview.widget.o)
.class Landroidx/recyclerview/widget/o;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/o$b;,
        Landroidx/recyclerview/widget/o$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/o$b;

.field b:Landroidx/recyclerview/widget/o$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/o$b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    .line 3
    new-instance p1, Landroidx/recyclerview/widget/o$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/o$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/o$b;->c()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/o$b;->d()I

    move-result v1

    if-le p2, p1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    :goto_11
    const/4 v3, 0x0

    :goto_12
    if-eq p1, p2, :cond_57

    .line 3
    iget-object v4, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/o$b;->a(I)Landroid/view/View;

    move-result-object v4

    .line 4
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v5, v4}, Landroidx/recyclerview/widget/o$b;->b(Landroid/view/View;)I

    move-result v5

    .line 5
    iget-object v6, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/o$b;->e(Landroid/view/View;)I

    move-result v6

    .line 6
    iget-object v7, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroidx/recyclerview/widget/o$a;->e(IIII)V

    if-eqz p3, :cond_40

    .line 7
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/o$a;->d()V

    .line 8
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5, p3}, Landroidx/recyclerview/widget/o$a;->a(I)V

    .line 9
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/o$a;->b()Z

    move-result v5

    if-eqz v5, :cond_40

    return-object v4

    :cond_40
    if-eqz p4, :cond_55

    .line 10
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/o$a;->d()V

    .line 11
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5, p4}, Landroidx/recyclerview/widget/o$a;->a(I)V

    .line 12
    iget-object v5, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/o$a;->b()Z

    move-result v5

    if-eqz v5, :cond_55

    move-object v3, v4

    :cond_55
    add-int/2addr p1, v2

    goto :goto_12

    :cond_57
    return-object v3
.end method

.method b(Landroid/view/View;I)Z
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    iget-object v1, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/o$b;->c()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v2}, Landroidx/recyclerview/widget/o$b;->d()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    .line 2
    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/o$b;->b(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/o;->a:Landroidx/recyclerview/widget/o$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/o$b;->e(Landroid/view/View;)I

    move-result p1

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/recyclerview/widget/o$a;->e(IIII)V

    if-eqz p2, :cond_30

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/o$a;->d()V

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/o$a;->a(I)V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/o;->b:Landroidx/recyclerview/widget/o$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/o$a;->b()Z

    move-result p1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

###### Class androidx.recyclerview.widget.o.a (androidx.recyclerview.widget.o$a)
.class Landroidx/recyclerview/widget/o$a;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/o$a;->a:I

    return-void
.end method


# virtual methods
.method a(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/o$a;->a:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/o$a;->a:I

    return-void
.end method

.method b()Z
    .registers 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/o$a;->a:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 2
    iget v1, p0, Landroidx/recyclerview/widget/o$a;->d:I

    iget v3, p0, Landroidx/recyclerview/widget/o$a;->b:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/o$a;->c(II)I

    move-result v1

    shl-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_14

    return v2

    .line 3
    :cond_14
    iget v0, p0, Landroidx/recyclerview/widget/o$a;->a:I

    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_28

    .line 4
    iget v1, p0, Landroidx/recyclerview/widget/o$a;->d:I

    iget v3, p0, Landroidx/recyclerview/widget/o$a;->c:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/o$a;->c(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_28

    return v2

    .line 5
    :cond_28
    iget v0, p0, Landroidx/recyclerview/widget/o$a;->a:I

    and-int/lit16 v1, v0, 0x700

    if-eqz v1, :cond_3c

    .line 6
    iget v1, p0, Landroidx/recyclerview/widget/o$a;->e:I

    iget v3, p0, Landroidx/recyclerview/widget/o$a;->b:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/o$a;->c(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_3c

    return v2

    .line 7
    :cond_3c
    iget v0, p0, Landroidx/recyclerview/widget/o$a;->a:I

    and-int/lit16 v1, v0, 0x7000

    if-eqz v1, :cond_50

    .line 8
    iget v1, p0, Landroidx/recyclerview/widget/o$a;->e:I

    iget v3, p0, Landroidx/recyclerview/widget/o$a;->c:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/o$a;->c(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    and-int/2addr v0, v1

    if-nez v0, :cond_50

    return v2

    :cond_50
    const/4 v0, 0x1

    return v0
.end method

.method c(II)I
    .registers 3

    if-le p1, p2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-ne p1, p2, :cond_8

    const/4 p1, 0x2

    return p1

    :cond_8
    const/4 p1, 0x4

    return p1
.end method

.method d()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/o$a;->a:I

    return-void
.end method

.method e(IIII)V
    .registers 5

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/o$a;->b:I

    .line 2
    iput p2, p0, Landroidx/recyclerview/widget/o$a;->c:I

    .line 3
    iput p3, p0, Landroidx/recyclerview/widget/o$a;->d:I

    .line 4
    iput p4, p0, Landroidx/recyclerview/widget/o$a;->e:I

    return-void
.end method

###### Class androidx.recyclerview.widget.o.b (androidx.recyclerview.widget.o$b)
.class interface abstract Landroidx/recyclerview/widget/o$b;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a(I)Landroid/view/View;
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e(Landroid/view/View;)I
.end method
