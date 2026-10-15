###### Class x7.k (x7.k)
.class public Lx7/k;
.super Lx7/a;


# static fields
.field private static final i:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lx7/c;

.field private final b:Lx7/b;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly7/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lb8/a;

.field private e:Lc8/a;

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx7/k;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lx7/b;Lx7/c;)V
    .registers 5

    invoke-direct {p0}, Lx7/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx7/k;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx7/k;->f:Z

    iput-boolean v0, p0, Lx7/k;->g:Z

    iput-object p1, p0, Lx7/k;->b:Lx7/b;

    iput-object p2, p0, Lx7/k;->a:Lx7/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx7/k;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lx7/k;->f(Landroid/view/View;)V

    invoke-virtual {p2}, Lx7/c;->b()Lx7/d;

    move-result-object v0

    sget-object v1, Lx7/d;->p:Lx7/d;

    if-eq v0, v1, :cond_40

    invoke-virtual {p2}, Lx7/c;->b()Lx7/d;

    move-result-object v0

    sget-object v1, Lx7/d;->r:Lx7/d;

    if-ne v0, v1, :cond_32

    goto :goto_40

    :cond_32
    new-instance v0, Lc8/c;

    invoke-virtual {p2}, Lx7/c;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lx7/c;->f()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lc8/c;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_49

    :cond_40
    :goto_40
    new-instance v0, Lc8/b;

    invoke-virtual {p2}, Lx7/c;->i()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p2}, Lc8/b;-><init>(Landroid/webkit/WebView;)V

    :goto_49
    iput-object v0, p0, Lx7/k;->e:Lc8/a;

    iget-object p2, p0, Lx7/k;->e:Lc8/a;

    invoke-virtual {p2}, Lc8/a;->a()V

    invoke-static {}, Ly7/a;->a()Ly7/a;

    move-result-object p2

    invoke-virtual {p2, p0}, Ly7/a;->b(Lx7/k;)V

    iget-object p2, p0, Lx7/k;->e:Lc8/a;

    invoke-virtual {p2, p1}, Lc8/a;->e(Lx7/b;)V

    return-void
.end method

.method private f(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lb8/a;

    invoke-direct {v0, p1}, Lb8/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lx7/k;->d:Lb8/a;

    return-void
.end method

.method private h(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Ly7/a;->a()Ly7/a;

    move-result-object v0

    invoke-virtual {v0}, Ly7/a;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx7/k;

    if-eq v1, p0, :cond_14

    invoke-virtual {v1}, Lx7/k;->g()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_14

    iget-object v1, v1, Lx7/k;->d:Lb8/a;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_14

    :cond_2e
    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    iget-boolean v0, p0, Lx7/k;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lx7/k;->d:Lb8/a;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    invoke-virtual {p0}, Lx7/k;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx7/k;->g:Z

    invoke-virtual {p0}, Lx7/k;->k()Lc8/a;

    move-result-object v0

    invoke-virtual {v0}, Lc8/a;->l()V

    invoke-static {}, Ly7/a;->a()Ly7/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ly7/a;->f(Lx7/k;)V

    invoke-virtual {p0}, Lx7/k;->k()Lc8/a;

    move-result-object v0

    invoke-virtual {v0}, Lc8/a;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lx7/k;->e:Lc8/a;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Lx7/k;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, La8/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lx7/k;->g()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_11

    return-void

    :cond_11
    invoke-direct {p0, p1}, Lx7/k;->f(Landroid/view/View;)V

    invoke-virtual {p0}, Lx7/k;->k()Lc8/a;

    move-result-object v0

    invoke-virtual {v0}, Lc8/a;->n()V

    invoke-direct {p0, p1}, Lx7/k;->h(Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .registers 3

    iget-boolean v0, p0, Lx7/k;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lx7/k;->f:Z

    invoke-static {}, Ly7/a;->a()Ly7/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ly7/a;->d(Lx7/k;)V

    invoke-static {}, Ly7/f;->c()Ly7/f;

    move-result-object v0

    invoke-virtual {v0}, Ly7/f;->g()F

    move-result v0

    iget-object v1, p0, Lx7/k;->e:Lc8/a;

    invoke-virtual {v1, v0}, Lc8/a;->b(F)V

    iget-object v0, p0, Lx7/k;->e:Lc8/a;

    iget-object v1, p0, Lx7/k;->a:Lx7/c;

    invoke-virtual {v0, p0, v1}, Lc8/a;->f(Lx7/k;Lx7/c;)V

    return-void
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly7/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx7/k;->c:Ljava/util/List;

    return-object v0
.end method

.method public g()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lx7/k;->d:Lb8/a;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lx7/k;->f:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lx7/k;->g:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lx7/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lc8/a;
    .registers 2

    iget-object v0, p0, Lx7/k;->e:Lc8/a;

    return-object v0
.end method

.method public l()V
    .registers 2

    iget-boolean v0, p0, Lx7/k;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lx7/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
