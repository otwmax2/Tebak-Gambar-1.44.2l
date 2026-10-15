###### Class j1.g (j1.g)
.class public Lj1/g;
.super Li1/r;
.source "WorkContinuationImpl.java"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private final a:Lj1/i;

.field private final b:Ljava/lang/String;

.field private final c:Li1/d;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Li1/u;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj1/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Li1/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WorkContinuationImpl"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj1/g;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lj1/i;Ljava/lang/String;Li1/d;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/i;",
            "Ljava/lang/String;",
            "Li1/d;",
            "Ljava/util/List<",
            "+",
            "Li1/u;",
            ">;",
            "Ljava/util/List<",
            "Lj1/g;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Li1/r;-><init>()V

    .line 3
    iput-object p1, p0, Lj1/g;->a:Lj1/i;

    .line 4
    iput-object p2, p0, Lj1/g;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lj1/g;->c:Li1/d;

    .line 6
    iput-object p4, p0, Lj1/g;->d:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lj1/g;->g:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lj1/g;->e:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lj1/g;->f:Ljava/util/List;

    if-eqz p5, :cond_39

    .line 10
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj1/g;

    .line 11
    iget-object p3, p0, Lj1/g;->f:Ljava/util/List;

    iget-object p2, p2, Lj1/g;->f:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    :cond_39
    const/4 p1, 0x0

    .line 12
    :goto_3a
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_57

    .line 13
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li1/u;

    invoke-virtual {p2}, Li1/u;->a()Ljava/lang/String;

    move-result-object p2

    .line 14
    iget-object p3, p0, Lj1/g;->e:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p3, p0, Lj1/g;->f:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3a

    :cond_57
    return-void
.end method

.method public constructor <init>(Lj1/i;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/i;",
            "Ljava/util/List<",
            "+",
            "Li1/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v3, Li1/d;->p:Li1/d;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lj1/g;-><init>(Lj1/i;Ljava/lang/String;Li1/d;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static i(Lj1/g;Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/g;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj1/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-static {p0}, Lj1/g;->l(Lj1/g;)Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    return v3

    .line 5
    :cond_23
    invoke-virtual {p0}, Lj1/g;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj1/g;

    .line 8
    invoke-static {v1, p1}, Lj1/g;->i(Lj1/g;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_33

    return v3

    .line 9
    :cond_46
    invoke-virtual {p0}, Lj1/g;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static l(Lj1/g;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj1/g;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Lj1/g;->e()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj1/g;

    .line 5
    invoke-virtual {v1}, Lj1/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    :cond_29
    return-object v0
.end method


# virtual methods
.method public a()Li1/m;
    .registers 6

    .line 1
    iget-boolean v0, p0, Lj1/g;->h:Z

    if-nez v0, :cond_19

    .line 2
    new-instance v0, Lr1/b;

    invoke-direct {v0, p0}, Lr1/b;-><init>(Lj1/g;)V

    .line 3
    iget-object v1, p0, Lj1/g;->a:Lj1/i;

    invoke-virtual {v1}, Lj1/i;->q()Ls1/a;

    move-result-object v1

    invoke-interface {v1, v0}, Ls1/a;->b(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Lr1/b;->d()Li1/m;

    move-result-object v0

    iput-object v0, p0, Lj1/g;->i:Li1/m;

    goto :goto_38

    .line 5
    :cond_19
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Lj1/g;->j:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lj1/g;->e:Ljava/util/List;

    const-string v4, ", "

    .line 6
    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Already enqueued work ids (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Li1/j;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    :goto_38
    iget-object v0, p0, Lj1/g;->i:Li1/m;

    return-object v0
.end method

.method public b()Li1/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lj1/g;->c:Li1/d;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj1/g;->e:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lj1/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj1/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj1/g;->g:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Li1/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj1/g;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Lj1/i;
    .registers 2

    .line 1
    iget-object v0, p0, Lj1/g;->a:Lj1/i;

    return-object v0
.end method

.method public h()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0}, Lj1/g;->i(Lj1/g;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lj1/g;->h:Z

    return v0
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj1/g;->h:Z

    return-void
.end method
