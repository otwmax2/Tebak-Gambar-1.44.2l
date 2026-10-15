###### Class y7.f (y7.f)
.class public Ly7/f;
.super Ljava/lang/Object;

# interfaces
.implements Lw7/c;
.implements Ly7/b$a;


# static fields
.field private static f:Ly7/f;


# instance fields
.field private a:F

.field private final b:Lw7/e;

.field private final c:Lw7/b;

.field private d:Lw7/d;

.field private e:Ly7/a;


# direct methods
.method public constructor <init>(Lw7/e;Lw7/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ly7/f;->a:F

    iput-object p1, p0, Ly7/f;->b:Lw7/e;

    iput-object p2, p0, Ly7/f;->c:Lw7/b;

    return-void
.end method

.method public static c()Ly7/f;
    .registers 3

    sget-object v0, Ly7/f;->f:Ly7/f;

    if-nez v0, :cond_15

    new-instance v0, Lw7/b;

    invoke-direct {v0}, Lw7/b;-><init>()V

    new-instance v1, Lw7/e;

    invoke-direct {v1}, Lw7/e;-><init>()V

    new-instance v2, Ly7/f;

    invoke-direct {v2, v1, v0}, Ly7/f;-><init>(Lw7/e;Lw7/b;)V

    sput-object v2, Ly7/f;->f:Ly7/f;

    :cond_15
    sget-object v0, Ly7/f;->f:Ly7/f;

    return-object v0
.end method

.method private h()Ly7/a;
    .registers 2

    iget-object v0, p0, Ly7/f;->e:Ly7/a;

    if-nez v0, :cond_a

    invoke-static {}, Ly7/a;->a()Ly7/a;

    move-result-object v0

    iput-object v0, p0, Ly7/f;->e:Ly7/a;

    :cond_a
    iget-object v0, p0, Ly7/f;->e:Ly7/a;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .registers 4

    iput p1, p0, Ly7/f;->a:F

    invoke-direct {p0}, Ly7/f;->h()Ly7/a;

    move-result-object v0

    invoke-virtual {v0}, Ly7/a;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx7/k;

    invoke-virtual {v1}, Lx7/k;->k()Lc8/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/a;->b(F)V

    goto :goto_e

    :cond_22
    return-void
.end method

.method public b(Z)V
    .registers 2

    if-eqz p1, :cond_a

    invoke-static {}, Ld8/a;->p()Ld8/a;

    move-result-object p1

    invoke-virtual {p1}, Ld8/a;->c()V

    goto :goto_11

    :cond_a
    invoke-static {}, Ld8/a;->p()Ld8/a;

    move-result-object p1

    invoke-virtual {p1}, Ld8/a;->k()V

    :goto_11
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Ly7/f;->c:Lw7/b;

    invoke-virtual {v0}, Lw7/b;->a()Lw7/a;

    move-result-object v0

    iget-object v1, p0, Ly7/f;->b:Lw7/e;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, p1, v0, p0}, Lw7/e;->a(Landroid/os/Handler;Landroid/content/Context;Lw7/a;Lw7/c;)Lw7/d;

    move-result-object p1

    iput-object p1, p0, Ly7/f;->d:Lw7/d;

    return-void
.end method

.method public e()V
    .registers 2

    invoke-static {}, Ly7/b;->a()Ly7/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Ly7/b;->c(Ly7/b$a;)V

    invoke-static {}, Ly7/b;->a()Ly7/b;

    move-result-object v0

    invoke-virtual {v0}, Ly7/b;->e()V

    invoke-static {}, Ld8/a;->p()Ld8/a;

    move-result-object v0

    invoke-virtual {v0}, Ld8/a;->c()V

    iget-object v0, p0, Ly7/f;->d:Lw7/d;

    invoke-virtual {v0}, Lw7/d;->a()V

    return-void
.end method

.method public f()V
    .registers 2

    invoke-static {}, Ld8/a;->p()Ld8/a;

    move-result-object v0

    invoke-virtual {v0}, Ld8/a;->h()V

    invoke-static {}, Ly7/b;->a()Ly7/b;

    move-result-object v0

    invoke-virtual {v0}, Ly7/b;->f()V

    iget-object v0, p0, Ly7/f;->d:Lw7/d;

    invoke-virtual {v0}, Lw7/d;->c()V

    return-void
.end method

.method public g()F
    .registers 2

    iget v0, p0, Ly7/f;->a:F

    return v0
.end method
