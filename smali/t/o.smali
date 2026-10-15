###### Class t.o (t.o)
.class public Lt/o;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/o$a;
    }
.end annotation


# static fields
.field static g:I


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ls/e;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z

.field d:I

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lt/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/o;->a:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lt/o;->b:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lt/o;->c:Z

    .line 5
    iput v1, p0, Lt/o;->d:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lt/o;->e:Ljava/util/ArrayList;

    .line 7
    iput v0, p0, Lt/o;->f:I

    .line 8
    sget v0, Lt/o;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lt/o;->g:I

    iput v0, p0, Lt/o;->b:I

    .line 9
    iput p1, p0, Lt/o;->d:I

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lt/o;->d:I

    if-nez v0, :cond_7

    const-string v0, "Horizontal"

    return-object v0

    :cond_7
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const-string v0, "Vertical"

    return-object v0

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const-string v0, "Both"

    return-object v0

    :cond_13
    const-string v0, "Unknown"

    return-object v0
.end method

.method private j(Lp/d;Ljava/util/ArrayList;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/d;",
            "Ljava/util/ArrayList<",
            "Ls/e;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/e;

    invoke-virtual {v1}, Ls/e;->I()Ls/e;

    move-result-object v1

    check-cast v1, Ls/f;

    .line 2
    invoke-virtual {p1}, Lp/d;->D()V

    .line 3
    invoke-virtual {v1, p1, v0}, Ls/e;->g(Lp/d;Z)V

    const/4 v2, 0x0

    .line 4
    :goto_14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 5
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/e;

    .line 6
    invoke-virtual {v3, p1, v0}, Ls/e;->g(Lp/d;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_26
    if-nez p3, :cond_2f

    .line 7
    iget v2, v1, Ls/f;->V0:I

    if-lez v2, :cond_2f

    .line 8
    invoke-static {v1, p1, p2, v0}, Ls/b;->b(Ls/f;Lp/d;Ljava/util/ArrayList;I)V

    :cond_2f
    const/4 v2, 0x1

    if-ne p3, v2, :cond_39

    .line 9
    iget v3, v1, Ls/f;->W0:I

    if-lez v3, :cond_39

    .line 10
    invoke-static {v1, p1, p2, v2}, Ls/b;->b(Ls/f;Lp/d;Ljava/util/ArrayList;I)V

    .line 11
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Lp/d;->z()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lt/o;->e:Ljava/util/ArrayList;

    .line 14
    :goto_48
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_61

    .line 15
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/e;

    .line 16
    new-instance v3, Lt/o$a;

    invoke-direct {v3, p0, v2, p1, p3}, Lt/o$a;-><init>(Lt/o;Ls/e;Lp/d;I)V

    .line 17
    iget-object v2, p0, Lt/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_61
    if-nez p3, :cond_74

    .line 18
    iget-object p2, v1, Ls/e;->O:Ls/d;

    invoke-virtual {p1, p2}, Lp/d;->x(Ljava/lang/Object;)I

    move-result p2

    .line 19
    iget-object p3, v1, Ls/e;->Q:Ls/d;

    invoke-virtual {p1, p3}, Lp/d;->x(Ljava/lang/Object;)I

    move-result p3

    .line 20
    invoke-virtual {p1}, Lp/d;->D()V

    :goto_72
    sub-int/2addr p3, p2

    return p3

    .line 21
    :cond_74
    iget-object p2, v1, Ls/e;->P:Ls/d;

    invoke-virtual {p1, p2}, Lp/d;->x(Ljava/lang/Object;)I

    move-result p2

    .line 22
    iget-object p3, v1, Ls/e;->R:Ls/d;

    invoke-virtual {p1, p3}, Lp/d;->x(Ljava/lang/Object;)I

    move-result p3

    .line 23
    invoke-virtual {p1}, Lp/d;->D()V

    goto :goto_72
.end method


# virtual methods
.method public a(Ls/e;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lt/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    iget-object v0, p0, Lt/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lt/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget v1, p0, Lt/o;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    if-lez v0, :cond_28

    const/4 v1, 0x0

    .line 3
    :goto_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/o;

    .line 5
    iget v3, p0, Lt/o;->f:I

    iget v4, v2, Lt/o;->b:I

    if-ne v3, v4, :cond_25

    .line 6
    iget v3, p0, Lt/o;->d:I

    invoke-virtual {p0, v3, v2}, Lt/o;->g(ILt/o;)V

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_28
    if-nez v0, :cond_2d

    .line 7
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2d
    return-void
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lt/o;->b:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lt/o;->d:I

    return v0
.end method

.method public f(Lp/d;I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lt/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    iget-object v0, p0, Lt/o;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, p2}, Lt/o;->j(Lp/d;Ljava/util/ArrayList;I)I

    move-result p1

    return p1
.end method

.method public g(ILt/o;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lt/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/e;

    .line 2
    invoke-virtual {p2, v1}, Lt/o;->a(Ls/e;)Z

    if-nez p1, :cond_1e

    .line 3
    invoke-virtual {p2}, Lt/o;->c()I

    move-result v2

    iput v2, v1, Ls/e;->H0:I

    goto :goto_6

    .line 4
    :cond_1e
    invoke-virtual {p2}, Lt/o;->c()I

    move-result v2

    iput v2, v1, Ls/e;->I0:I

    goto :goto_6

    .line 5
    :cond_25
    iget p1, p2, Lt/o;->b:I

    iput p1, p0, Lt/o;->f:I

    return-void
.end method

.method public h(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lt/o;->c:Z

    return-void
.end method

.method public i(I)V
    .registers 2

    .line 1
    iput p1, p0, Lt/o;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lt/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lt/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lt/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/e;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ls/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 4
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class t.o.a (t.o$a)
.class Lt/o$a;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ls/e;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Lt/o;


# direct methods
.method public constructor <init>(Lt/o;Ls/e;Lp/d;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lt/o$a;->h:Lt/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lt/o$a;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iget-object p1, p2, Ls/e;->O:Ls/d;

    invoke-virtual {p3, p1}, Lp/d;->x(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lt/o$a;->b:I

    .line 4
    iget-object p1, p2, Ls/e;->P:Ls/d;

    invoke-virtual {p3, p1}, Lp/d;->x(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lt/o$a;->c:I

    .line 5
    iget-object p1, p2, Ls/e;->Q:Ls/d;

    invoke-virtual {p3, p1}, Lp/d;->x(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lt/o$a;->d:I

    .line 6
    iget-object p1, p2, Ls/e;->R:Ls/d;

    invoke-virtual {p3, p1}, Lp/d;->x(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lt/o$a;->e:I

    .line 7
    iget-object p1, p2, Ls/e;->S:Ls/d;

    invoke-virtual {p3, p1}, Lp/d;->x(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lt/o$a;->f:I

    .line 8
    iput p4, p0, Lt/o$a;->g:I

    return-void
.end method
