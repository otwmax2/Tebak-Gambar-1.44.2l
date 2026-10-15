###### Class h0.m (h0.m)
.class public final Lh0/m;
.super Ljava/lang/Object;
.source "SingleProcessDataStore.kt"

# interfaces
.implements Lh0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/m$b;,
        Lh0/m$c;,
        Lh0/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lh0/f<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final k:Lh0/m$a;

.field private static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/lang/Object;


# instance fields
.field private final a:Ls9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lh0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lh0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lda/o0;

.field private final e:Lkotlinx/coroutines/flow/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Lh9/h;

.field private final h:Lkotlinx/coroutines/flow/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/k<",
            "Lh0/n<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ls9/p<",
            "-",
            "Lh0/i<",
            "TT;>;-",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lh0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/l<",
            "Lh0/m$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lh0/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh0/m$a;-><init>(Lt9/g;)V

    sput-object v0, Lh0/m;->k:Lh0/m$a;

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lh0/m;->l:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh0/m;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls9/a;Lh0/k;Ljava/util/List;Lh0/b;Lda/o0;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/a<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Lh0/k<",
            "TT;>;",
            "Ljava/util/List<",
            "+",
            "Ls9/p<",
            "-",
            "Lh0/i<",
            "TT;>;-",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;",
            "Lh0/b<",
            "TT;>;",
            "Lda/o0;",
            ")V"
        }
    .end annotation

    const-string v0, "produceFile"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initTasksList"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "corruptionHandler"

    invoke-static {p4, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh0/m;->a:Ls9/a;

    .line 3
    iput-object p2, p0, Lh0/m;->b:Lh0/k;

    .line 4
    iput-object p4, p0, Lh0/m;->c:Lh0/b;

    .line 5
    iput-object p5, p0, Lh0/m;->d:Lda/o0;

    .line 6
    new-instance p1, Lh0/m$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lh0/m$g;-><init>(Lh0/m;Lk9/d;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/d;->g(Ls9/p;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    iput-object p1, p0, Lh0/m;->e:Lkotlinx/coroutines/flow/b;

    const-string p1, ".tmp"

    .line 7
    iput-object p1, p0, Lh0/m;->f:Ljava/lang/String;

    .line 8
    new-instance p1, Lh0/m$h;

    invoke-direct {p1, p0}, Lh0/m$h;-><init>(Lh0/m;)V

    invoke-static {p1}, Lh9/i;->a(Ls9/a;)Lh9/h;

    move-result-object p1

    iput-object p1, p0, Lh0/m;->g:Lh9/h;

    .line 9
    sget-object p1, Lh0/o;->a:Lh0/o;

    invoke-static {p1}, Lkotlinx/coroutines/flow/n;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/k;

    move-result-object p1

    iput-object p1, p0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    .line 10
    invoke-static {p3}, Li9/j;->O(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh0/m;->i:Ljava/util/List;

    .line 11
    new-instance p1, Lh0/l;

    .line 12
    new-instance p3, Lh0/m$d;

    invoke-direct {p3, p0}, Lh0/m$d;-><init>(Lh0/m;)V

    .line 13
    sget-object p4, Lh0/m$e;->o:Lh0/m$e;

    .line 14
    new-instance v0, Lh0/m$f;

    invoke-direct {v0, p0, p2}, Lh0/m$f;-><init>(Lh0/m;Lk9/d;)V

    .line 15
    invoke-direct {p1, p5, p3, p4, v0}, Lh0/l;-><init>(Lda/o0;Ls9/l;Ls9/p;Ls9/p;)V

    iput-object p1, p0, Lh0/m;->j:Lh0/l;

    return-void
.end method

.method public static final synthetic c()Ljava/util/Set;
    .registers 1

    .line 1
    sget-object v0, Lh0/m;->l:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic d()Ljava/lang/Object;
    .registers 1

    .line 1
    sget-object v0, Lh0/m;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic e(Lh0/m;)Lh0/l;
    .registers 1

    .line 1
    iget-object p0, p0, Lh0/m;->j:Lh0/l;

    return-object p0
.end method

.method public static final synthetic f(Lh0/m;)Lkotlinx/coroutines/flow/k;
    .registers 1

    .line 1
    iget-object p0, p0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    return-object p0
.end method

.method public static final synthetic g(Lh0/m;)Ljava/io/File;
    .registers 1

    .line 1
    invoke-direct {p0}, Lh0/m;->r()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lh0/m;)Ls9/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lh0/m;->a:Ls9/a;

    return-object p0
.end method

.method public static final synthetic i(Lh0/m;Lh0/m$b$a;Lk9/d;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lh0/m;->s(Lh0/m$b$a;Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lh0/m;Lh0/m$b$b;Lk9/d;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lh0/m;->t(Lh0/m$b$b;Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lh0/m;Lk9/d;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lh0/m;->u(Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lh0/m;Lk9/d;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lh0/m;->v(Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lh0/m;Lk9/d;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lh0/m;->w(Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lh0/m;Lk9/d;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lh0/m;->x(Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lh0/m;Lk9/d;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lh0/m;->y(Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lh0/m;Ls9/p;Lk9/g;Lk9/d;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lh0/m;->z(Ls9/p;Lk9/g;Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final q(Ljava/io/File;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_14

    .line 2
    :cond_b
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_14
    return-void

    .line 4
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create parent directories of "

    invoke-static {v1, p1}, Lt9/m;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final r()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lh0/m;->g:Lh9/h;

    invoke-interface {v0}, Lh9/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method private final s(Lh0/m$b$a;Lk9/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m$b$a<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/k;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh0/n;

    .line 2
    instance-of v1, v0, Lh0/c;

    if-eqz v1, :cond_d

    goto :goto_3f

    .line 3
    :cond_d
    instance-of v1, v0, Lh0/j;

    if-eqz v1, :cond_25

    .line 4
    invoke-virtual {p1}, Lh0/m$b$a;->a()Lh0/n;

    move-result-object p1

    if-ne v0, p1, :cond_3f

    .line 5
    invoke-direct {p0, p2}, Lh0/m;->w(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_22

    return-object p1

    :cond_22
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    .line 6
    :cond_25
    sget-object p1, Lh0/o;->a:Lh0/o;

    invoke-static {v0, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 7
    invoke-direct {p0, p2}, Lh0/m;->w(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_38

    return-object p1

    :cond_38
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    .line 8
    :cond_3b
    instance-of p1, v0, Lh0/h;

    if-nez p1, :cond_42

    .line 9
    :cond_3f
    :goto_3f
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    .line 10
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t read in final state."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final t(Lh0/m$b$b;Lk9/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m$b$b<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lh0/m$i;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lh0/m$i;

    iget v1, v0, Lh0/m$i;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/m$i;->w:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/m$i;

    invoke-direct {v0, p0, p2}, Lh0/m$i;-><init>(Lh0/m;Lk9/d;)V

    :goto_18
    iget-object p2, v0, Lh0/m$i;->u:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lh0/m$i;->w:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_55

    if-eq v2, v5, :cond_4a

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p1, v0, Lh0/m$i;->r:Ljava/lang/Object;

    check-cast p1, Lda/v;

    goto :goto_4e

    .line 2
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_38
    iget-object p1, v0, Lh0/m$i;->t:Ljava/lang/Object;

    check-cast p1, Lda/v;

    iget-object v2, v0, Lh0/m$i;->s:Ljava/lang/Object;

    check-cast v2, Lh0/m;

    iget-object v4, v0, Lh0/m$i;->r:Ljava/lang/Object;

    check-cast v4, Lh0/m$b$b;

    :try_start_44
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_52

    move-object p2, p1

    move-object p1, v4

    goto :goto_a0

    :cond_4a
    iget-object p1, v0, Lh0/m$i;->r:Ljava/lang/Object;

    check-cast p1, Lda/v;

    :goto_4e
    :try_start_4e
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_b8

    :catchall_52
    move-exception p2

    goto/16 :goto_d9

    :cond_55
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lh0/m$b$b;->a()Lda/v;

    move-result-object p2

    .line 5
    :try_start_5c
    sget-object v2, Lh9/n;->o:Lh9/n$a;

    .line 6
    iget-object v2, p0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh0/n;

    .line 7
    instance-of v6, v2, Lh0/c;

    if-eqz v6, :cond_81

    .line 8
    invoke-virtual {p1}, Lh0/m$b$b;->d()Ls9/p;

    move-result-object v2

    invoke-virtual {p1}, Lh0/m$b$b;->b()Lk9/g;

    move-result-object p1

    iput-object p2, v0, Lh0/m$i;->r:Ljava/lang/Object;

    iput v5, v0, Lh0/m$i;->w:I

    invoke-direct {p0, v2, p1, v0}, Lh0/m;->z(Ls9/p;Lk9/g;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7d

    return-object v1

    :cond_7d
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_b8

    .line 9
    :cond_81
    instance-of v6, v2, Lh0/j;

    if-eqz v6, :cond_86

    goto :goto_88

    :cond_86
    instance-of v5, v2, Lh0/o;

    :goto_88
    if-eqz v5, :cond_c4

    .line 10
    invoke-virtual {p1}, Lh0/m$b$b;->c()Lh0/n;

    move-result-object v5

    if-ne v2, v5, :cond_bd

    .line 11
    iput-object p1, v0, Lh0/m$i;->r:Ljava/lang/Object;

    iput-object p0, v0, Lh0/m$i;->s:Ljava/lang/Object;

    iput-object p2, v0, Lh0/m$i;->t:Ljava/lang/Object;

    iput v4, v0, Lh0/m$i;->w:I

    invoke-direct {p0, v0}, Lh0/m;->v(Lk9/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9f

    return-object v1

    :cond_9f
    move-object v2, p0

    .line 12
    :goto_a0
    invoke-virtual {p1}, Lh0/m$b$b;->d()Ls9/p;

    move-result-object v4

    invoke-virtual {p1}, Lh0/m$b$b;->b()Lk9/g;

    move-result-object p1

    iput-object p2, v0, Lh0/m$i;->r:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Lh0/m$i;->s:Ljava/lang/Object;

    iput-object v5, v0, Lh0/m$i;->t:Ljava/lang/Object;

    iput v3, v0, Lh0/m$i;->w:I

    invoke-direct {v2, v4, p1, v0}, Lh0/m;->z(Ls9/p;Lk9/g;Lk9/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b5
    .catchall {:try_start_5c .. :try_end_b5} :catchall_d5

    if-ne p1, v1, :cond_7d

    return-object v1

    .line 13
    :goto_b8
    :try_start_b8
    invoke-static {p2}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_52

    goto :goto_e3

    .line 14
    :cond_bd
    :try_start_bd
    check-cast v2, Lh0/j;

    invoke-virtual {v2}, Lh0/j;->a()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 15
    :cond_c4
    instance-of p1, v2, Lh0/h;

    if-eqz p1, :cond_cf

    check-cast v2, Lh0/h;

    invoke-virtual {v2}, Lh0/h;->a()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_cf
    new-instance p1, Lh9/l;

    invoke-direct {p1}, Lh9/l;-><init>()V

    throw p1
    :try_end_d5
    .catchall {:try_start_bd .. :try_end_d5} :catchall_d5

    :catchall_d5
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 16
    :goto_d9
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    invoke-static {p2}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    :goto_e3
    invoke-static {p1, p2}, Lda/x;->c(Lda/v;Ljava/lang/Object;)Z

    .line 18
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method private final u(Lk9/d;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lh0/m$j;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lh0/m$j;

    iget v1, v0, Lh0/m$j;->z:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/m$j;->z:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/m$j;

    invoke-direct {v0, p0, p1}, Lh0/m$j;-><init>(Lh0/m;Lk9/d;)V

    :goto_18
    iget-object p1, v0, Lh0/m$j;->x:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lh0/m$j;->z:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_7b

    if-eq v2, v6, :cond_67

    if-eq v2, v4, :cond_4a

    if-ne v2, v3, :cond_42

    iget-object v1, v0, Lh0/m$j;->u:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/b;

    iget-object v2, v0, Lh0/m$j;->t:Ljava/lang/Object;

    check-cast v2, Lt9/w;

    iget-object v3, v0, Lh0/m$j;->s:Ljava/lang/Object;

    check-cast v3, Lt9/y;

    iget-object v0, v0, Lh0/m$j;->r:Ljava/lang/Object;

    check-cast v0, Lh0/m;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto/16 :goto_117

    .line 2
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_4a
    iget-object v2, v0, Lh0/m$j;->w:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v8, v0, Lh0/m$j;->v:Ljava/lang/Object;

    check-cast v8, Lh0/m$k;

    iget-object v9, v0, Lh0/m$j;->u:Ljava/lang/Object;

    check-cast v9, Lt9/w;

    iget-object v10, v0, Lh0/m$j;->t:Ljava/lang/Object;

    check-cast v10, Lt9/y;

    iget-object v11, v0, Lh0/m$j;->s:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/sync/b;

    iget-object v12, v0, Lh0/m$j;->r:Ljava/lang/Object;

    check-cast v12, Lh0/m;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto/16 :goto_d8

    :cond_67
    iget-object v2, v0, Lh0/m$j;->u:Ljava/lang/Object;

    check-cast v2, Lt9/y;

    iget-object v8, v0, Lh0/m$j;->t:Ljava/lang/Object;

    check-cast v8, Lt9/y;

    iget-object v9, v0, Lh0/m$j;->s:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/sync/b;

    iget-object v10, v0, Lh0/m$j;->r:Ljava/lang/Object;

    check-cast v10, Lh0/m;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_b8

    :cond_7b
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/k;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lh0/o;->a:Lh0/o;

    invoke-static {p1, v2}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    iget-object p1, p0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/k;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lh0/j;

    if-eqz p1, :cond_97

    goto :goto_99

    :cond_97
    const/4 p1, 0x0

    goto :goto_9a

    :cond_99
    :goto_99
    const/4 p1, 0x1

    :goto_9a
    if-eqz p1, :cond_136

    .line 5
    invoke-static {v5, v6, v7}, Lkotlinx/coroutines/sync/d;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/b;

    move-result-object v9

    .line 6
    new-instance v2, Lt9/y;

    invoke-direct {v2}, Lt9/y;-><init>()V

    iput-object p0, v0, Lh0/m$j;->r:Ljava/lang/Object;

    iput-object v9, v0, Lh0/m$j;->s:Ljava/lang/Object;

    iput-object v2, v0, Lh0/m$j;->t:Ljava/lang/Object;

    iput-object v2, v0, Lh0/m$j;->u:Ljava/lang/Object;

    iput v6, v0, Lh0/m$j;->z:I

    invoke-direct {p0, v0}, Lh0/m;->y(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b6

    return-object v1

    :cond_b6
    move-object v10, p0

    move-object v8, v2

    .line 7
    :goto_b8
    iput-object p1, v2, Lt9/y;->o:Ljava/lang/Object;

    .line 8
    new-instance p1, Lt9/w;

    invoke-direct {p1}, Lt9/w;-><init>()V

    .line 9
    new-instance v2, Lh0/m$k;

    invoke-direct {v2, v9, p1, v8, v10}, Lh0/m$k;-><init>(Lkotlinx/coroutines/sync/b;Lt9/w;Lt9/y;Lh0/m;)V

    .line 10
    iget-object v11, v10, Lh0/m;->i:Ljava/util/List;

    if-nez v11, :cond_ce

    move-object v2, v1

    move-object v1, v9

    move-object v9, p1

    move-object p1, v0

    move-object v0, v10

    goto :goto_fe

    .line 11
    :cond_ce
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v10

    move-object v10, v8

    move-object v8, v2

    move-object v2, v11

    move-object v11, v9

    move-object v9, p1

    :cond_d8
    :goto_d8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls9/p;

    .line 12
    iput-object v12, v0, Lh0/m$j;->r:Ljava/lang/Object;

    iput-object v11, v0, Lh0/m$j;->s:Ljava/lang/Object;

    iput-object v10, v0, Lh0/m$j;->t:Ljava/lang/Object;

    iput-object v9, v0, Lh0/m$j;->u:Ljava/lang/Object;

    iput-object v8, v0, Lh0/m$j;->v:Ljava/lang/Object;

    iput-object v2, v0, Lh0/m$j;->w:Ljava/lang/Object;

    iput v4, v0, Lh0/m$j;->z:I

    invoke-interface {p1, v8, v0}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d8

    return-object v1

    :cond_f9
    move-object p1, v0

    move-object v2, v1

    move-object v8, v10

    move-object v1, v11

    move-object v0, v12

    .line 13
    :goto_fe
    iput-object v7, v0, Lh0/m;->i:Ljava/util/List;

    .line 14
    iput-object v0, p1, Lh0/m$j;->r:Ljava/lang/Object;

    iput-object v8, p1, Lh0/m$j;->s:Ljava/lang/Object;

    iput-object v9, p1, Lh0/m$j;->t:Ljava/lang/Object;

    iput-object v1, p1, Lh0/m$j;->u:Ljava/lang/Object;

    iput-object v7, p1, Lh0/m$j;->v:Ljava/lang/Object;

    iput-object v7, p1, Lh0/m$j;->w:Ljava/lang/Object;

    iput v3, p1, Lh0/m$j;->z:I

    invoke-interface {v1, v7, p1}, Lkotlinx/coroutines/sync/b;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_115

    return-object v2

    :cond_115
    move-object v3, v8

    move-object v2, v9

    .line 15
    :goto_117
    :try_start_117
    iput-boolean v6, v2, Lt9/w;->o:Z

    .line 16
    sget-object p1, Lh9/t;->a:Lh9/t;
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_131

    .line 17
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    new-instance v1, Lh0/c;

    iget-object v2, v3, Lt9/y;->o:Ljava/lang/Object;

    if-eqz v2, :cond_12a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :cond_12a
    invoke-direct {v1, v2, v5}, Lh0/c;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/k;->setValue(Ljava/lang/Object;)V

    return-object p1

    :catchall_131
    move-exception p1

    .line 19
    invoke-interface {v1, v7}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    throw p1

    .line 20
    :cond_136
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_143

    :goto_142
    throw p1

    :goto_143
    goto :goto_142
.end method

.method private final v(Lk9/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lh0/m$l;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lh0/m$l;

    iget v1, v0, Lh0/m$l;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/m$l;->u:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/m$l;

    invoke-direct {v0, p0, p1}, Lh0/m$l;-><init>(Lh0/m;Lk9/d;)V

    :goto_18
    iget-object p1, v0, Lh0/m$l;->s:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lh0/m$l;->u:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object v0, v0, Lh0/m$l;->r:Ljava/lang/Object;

    check-cast v0, Lh0/m;

    :try_start_29
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_45

    :catchall_2d
    move-exception p1

    goto :goto_4a

    .line 2
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_37
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_3a
    iput-object p0, v0, Lh0/m$l;->r:Ljava/lang/Object;

    iput v3, v0, Lh0/m$l;->u:I

    invoke-direct {p0, v0}, Lh0/m;->u(Lk9/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_48

    if-ne p1, v1, :cond_45

    return-object v1

    .line 5
    :cond_45
    :goto_45
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    :catchall_48
    move-exception p1

    move-object v0, p0

    .line 6
    :goto_4a
    iget-object v0, v0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    new-instance v1, Lh0/j;

    invoke-direct {v1, p1}, Lh0/j;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/k;->setValue(Ljava/lang/Object;)V

    .line 7
    throw p1
.end method

.method private final w(Lk9/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lh0/m$m;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lh0/m$m;

    iget v1, v0, Lh0/m$m;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/m$m;->u:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/m$m;

    invoke-direct {v0, p0, p1}, Lh0/m$m;-><init>(Lh0/m;Lk9/d;)V

    :goto_18
    iget-object p1, v0, Lh0/m$m;->s:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lh0/m$m;->u:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object v0, v0, Lh0/m$m;->r:Ljava/lang/Object;

    check-cast v0, Lh0/m;

    :try_start_29
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_51

    :catchall_2d
    move-exception p1

    goto :goto_47

    .line 2
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_37
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_3a
    iput-object p0, v0, Lh0/m$m;->r:Ljava/lang/Object;

    iput v3, v0, Lh0/m$m;->u:I

    invoke-direct {p0, v0}, Lh0/m;->u(Lk9/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_45

    if-ne p1, v1, :cond_51

    return-object v1

    :catchall_45
    move-exception p1

    move-object v0, p0

    .line 5
    :goto_47
    iget-object v0, v0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    new-instance v1, Lh0/j;

    invoke-direct {v1, p1}, Lh0/j;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/k;->setValue(Ljava/lang/Object;)V

    .line 6
    :cond_51
    :goto_51
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method private final x(Lk9/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lh0/m$n;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lh0/m$n;

    iget v1, v0, Lh0/m$n;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/m$n;->w:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/m$n;

    invoke-direct {v0, p0, p1}, Lh0/m$n;-><init>(Lh0/m;Lk9/d;)V

    :goto_18
    iget-object p1, v0, Lh0/m$n;->u:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lh0/m$n;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v1, v0, Lh0/m$n;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v2, v0, Lh0/m$n;->s:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v0, Lh0/m$n;->r:Ljava/lang/Object;

    check-cast v0, Lh0/m;

    :try_start_31
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_60

    :catchall_35
    move-exception p1

    goto :goto_68

    .line 2
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_3f
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_42
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lh0/m;->r()Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_4b} :catch_6e

    const/4 p1, 0x0

    .line 5
    :try_start_4c
    iget-object v4, p0, Lh0/m;->b:Lh0/k;

    iput-object p0, v0, Lh0/m$n;->r:Ljava/lang/Object;

    iput-object v2, v0, Lh0/m$n;->s:Ljava/lang/Object;

    iput-object p1, v0, Lh0/m$n;->t:Ljava/lang/Object;

    iput v3, v0, Lh0/m$n;->w:I

    invoke-interface {v4, v2, v0}, Lh0/k;->b(Ljava/io/InputStream;Lk9/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_66

    if-ne v0, v1, :cond_5d

    return-object v1

    :cond_5d
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    :goto_60
    :try_start_60
    invoke-static {v2, v1}, Lq9/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_63} :catch_64

    return-object p1

    :catch_64
    move-exception p1

    goto :goto_70

    :catchall_66
    move-exception p1

    move-object v0, p0

    :goto_68
    :try_start_68
    throw p1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v1

    :try_start_6a
    invoke-static {v2, p1}, Lq9/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_6e} :catch_64

    :catch_6e
    move-exception p1

    move-object v0, p0

    .line 6
    :goto_70
    invoke-direct {v0}, Lh0/m;->r()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_81

    .line 7
    iget-object p1, v0, Lh0/m;->b:Lh0/k;

    invoke-interface {p1}, Lh0/k;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_81
    throw p1
.end method

.method private final y(Lk9/d;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lh0/m$o;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lh0/m$o;

    iget v1, v0, Lh0/m$o;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/m$o;->v:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/m$o;

    invoke-direct {v0, p0, p1}, Lh0/m$o;-><init>(Lh0/m;Lk9/d;)V

    :goto_18
    iget-object p1, v0, Lh0/m$o;->t:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lh0/m$o;->v:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_55

    if-eq v2, v5, :cond_4b

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v1, v0, Lh0/m$o;->s:Ljava/lang/Object;

    iget-object v0, v0, Lh0/m$o;->r:Ljava/lang/Object;

    check-cast v0, Lh0/a;

    :try_start_31
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_87

    :catch_35
    move-exception p1

    goto :goto_8a

    .line 2
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_3f
    iget-object v2, v0, Lh0/m$o;->s:Ljava/lang/Object;

    check-cast v2, Lh0/a;

    iget-object v4, v0, Lh0/m$o;->r:Ljava/lang/Object;

    check-cast v4, Lh0/m;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_79

    :cond_4b
    iget-object v2, v0, Lh0/m$o;->r:Ljava/lang/Object;

    check-cast v2, Lh0/m;

    :try_start_4f
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_52
    .catch Lh0/a; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_63

    :catch_53
    move-exception p1

    goto :goto_66

    :cond_55
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_58
    iput-object p0, v0, Lh0/m$o;->r:Ljava/lang/Object;

    iput v5, v0, Lh0/m$o;->v:I

    invoke-direct {p0, v0}, Lh0/m;->x(Lk9/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_60
    .catch Lh0/a; {:try_start_58 .. :try_end_60} :catch_64

    if-ne p1, v1, :cond_63

    return-object v1

    :cond_63
    :goto_63
    return-object p1

    :catch_64
    move-exception p1

    move-object v2, p0

    .line 5
    :goto_66
    iget-object v5, v2, Lh0/m;->c:Lh0/b;

    iput-object v2, v0, Lh0/m$o;->r:Ljava/lang/Object;

    iput-object p1, v0, Lh0/m$o;->s:Ljava/lang/Object;

    iput v4, v0, Lh0/m$o;->v:I

    invoke-interface {v5, p1, v0}, Lh0/b;->a(Lh0/a;Lk9/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_75

    return-object v1

    :cond_75
    move-object v6, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, v6

    .line 6
    :goto_79
    :try_start_79
    iput-object v2, v0, Lh0/m$o;->r:Ljava/lang/Object;

    iput-object p1, v0, Lh0/m$o;->s:Ljava/lang/Object;

    iput v3, v0, Lh0/m$o;->v:I

    invoke-virtual {v4, p1, v0}, Lh0/m;->A(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_83} :catch_88

    if-ne v0, v1, :cond_86

    return-object v1

    :cond_86
    move-object v1, p1

    :goto_87
    return-object v1

    :catch_88
    move-exception p1

    move-object v0, v2

    .line 7
    :goto_8a
    invoke-static {v0, p1}, Lh9/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 8
    throw v0
.end method

.method private final z(Ls9/p;Lk9/g;Lk9/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/p<",
            "-TT;-",
            "Lk9/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lk9/g;",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lh0/m$p;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lh0/m$p;

    iget v1, v0, Lh0/m$p;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/m$p;->w:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/m$p;

    invoke-direct {v0, p0, p3}, Lh0/m$p;-><init>(Lh0/m;Lk9/d;)V

    :goto_18
    iget-object p3, v0, Lh0/m$p;->u:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lh0/m$p;->w:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_49

    if-eq v2, v5, :cond_3b

    if-ne v2, v4, :cond_33

    iget-object p1, v0, Lh0/m$p;->s:Ljava/lang/Object;

    iget-object p2, v0, Lh0/m$p;->r:Ljava/lang/Object;

    check-cast p2, Lh0/m;

    invoke-static {p3}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_8e

    .line 2
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_3b
    iget-object p1, v0, Lh0/m$p;->t:Ljava/lang/Object;

    iget-object p2, v0, Lh0/m$p;->s:Ljava/lang/Object;

    check-cast p2, Lh0/c;

    iget-object v2, v0, Lh0/m$p;->r:Ljava/lang/Object;

    check-cast v2, Lh0/m;

    invoke-static {p3}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_73

    :cond_49
    invoke-static {p3}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    invoke-interface {p3}, Lkotlinx/coroutines/flow/k;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh0/c;

    .line 5
    invoke-virtual {p3}, Lh0/c;->a()V

    .line 6
    invoke-virtual {p3}, Lh0/c;->b()Ljava/lang/Object;

    move-result-object v2

    .line 7
    new-instance v6, Lh0/m$q;

    invoke-direct {v6, p1, v2, v3}, Lh0/m$q;-><init>(Ls9/p;Ljava/lang/Object;Lk9/d;)V

    iput-object p0, v0, Lh0/m$p;->r:Ljava/lang/Object;

    iput-object p3, v0, Lh0/m$p;->s:Ljava/lang/Object;

    iput-object v2, v0, Lh0/m$p;->t:Ljava/lang/Object;

    iput v5, v0, Lh0/m$p;->w:I

    invoke-static {p2, v6, v0}, Lda/h;->e(Lk9/g;Ls9/p;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6f

    return-object v1

    :cond_6f
    move-object p2, p3

    move-object p3, p1

    move-object p1, v2

    move-object v2, p0

    .line 8
    :goto_73
    invoke-virtual {p2}, Lh0/c;->a()V

    .line 9
    invoke-static {p1, p3}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7d

    goto :goto_a0

    .line 10
    :cond_7d
    iput-object v2, v0, Lh0/m$p;->r:Ljava/lang/Object;

    iput-object p3, v0, Lh0/m$p;->s:Ljava/lang/Object;

    iput-object v3, v0, Lh0/m$p;->t:Ljava/lang/Object;

    iput v4, v0, Lh0/m$p;->w:I

    invoke-virtual {v2, p3, v0}, Lh0/m;->A(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8c

    return-object v1

    :cond_8c
    move-object p1, p3

    move-object p2, v2

    .line 11
    :goto_8e
    iget-object p2, p2, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    new-instance p3, Lh0/c;

    if-eqz p1, :cond_99

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_9a

    :cond_99
    const/4 v0, 0x0

    :goto_9a
    invoke-direct {p3, p1, v0}, Lh0/c;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p2, p3}, Lkotlinx/coroutines/flow/k;->setValue(Ljava/lang/Object;)V

    :goto_a0
    return-object p1
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lh0/m$r;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lh0/m$r;

    iget v1, v0, Lh0/m$r;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/m$r;->y:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/m$r;

    invoke-direct {v0, p0, p2}, Lh0/m$r;-><init>(Lh0/m;Lk9/d;)V

    :goto_18
    iget-object p2, v0, Lh0/m$r;->w:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lh0/m$r;->y:I

    const/4 v3, 0x1

    if-eqz v2, :cond_48

    if-ne v2, v3, :cond_40

    iget-object p1, v0, Lh0/m$r;->v:Ljava/lang/Object;

    check-cast p1, Ljava/io/FileOutputStream;

    iget-object v1, v0, Lh0/m$r;->u:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v2, v0, Lh0/m$r;->t:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v3, v0, Lh0/m$r;->s:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    iget-object v0, v0, Lh0/m$r;->r:Ljava/lang/Object;

    check-cast v0, Lh0/m;

    :try_start_39
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_89

    :catchall_3d
    move-exception p1

    goto/16 :goto_be

    .line 2
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_48
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lh0/m;->r()Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p2}, Lh0/m;->q(Ljava/io/File;)V

    .line 5
    new-instance p2, Ljava/io/File;

    invoke-direct {p0}, Lh0/m;->r()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lh0/m;->f:Ljava/lang/String;

    invoke-static {v2, v4}, Lt9/m;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    :try_start_65
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6a} :catch_c7

    const/4 v4, 0x0

    .line 7
    :try_start_6b
    iget-object v5, p0, Lh0/m;->b:Lh0/k;

    new-instance v6, Lh0/m$c;

    invoke-direct {v6, v2}, Lh0/m$c;-><init>(Ljava/io/FileOutputStream;)V

    iput-object p0, v0, Lh0/m$r;->r:Ljava/lang/Object;

    iput-object p2, v0, Lh0/m$r;->s:Ljava/lang/Object;

    iput-object v2, v0, Lh0/m$r;->t:Ljava/lang/Object;

    iput-object v4, v0, Lh0/m$r;->u:Ljava/lang/Object;

    iput-object v2, v0, Lh0/m$r;->v:Ljava/lang/Object;

    iput v3, v0, Lh0/m$r;->y:I

    invoke-interface {v5, p1, v6, v0}, Lh0/k;->c(Ljava/lang/Object;Ljava/io/OutputStream;Lk9/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_82
    .catchall {:try_start_6b .. :try_end_82} :catchall_bc

    if-ne p1, v1, :cond_85

    return-object v1

    :cond_85
    move-object v0, p0

    move-object v3, p2

    move-object p1, v2

    move-object v1, v4

    .line 8
    :goto_89
    :try_start_89
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 9
    sget-object p1, Lh9/t;->a:Lh9/t;
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_3d

    .line 10
    :try_start_92
    invoke-static {v2, v1}, Lq9/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 11
    invoke-direct {v0}, Lh0/m;->r()Ljava/io/File;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_a0

    return-object p1

    .line 12
    :cond_a0
    new-instance p1, Ljava/io/IOException;

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to rename "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_bc} :catch_c4

    :catchall_bc
    move-exception p1

    move-object v3, p2

    .line 15
    :goto_be
    :try_start_be
    throw p1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bf

    :catchall_bf
    move-exception p2

    :try_start_c0
    invoke-static {v2, p1}, Lq9/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c4} :catch_c4

    :catch_c4
    move-exception p1

    move-object p2, v3

    goto :goto_c8

    :catch_c7
    move-exception p1

    .line 16
    :goto_c8
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 17
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 18
    :cond_d1
    throw p1
.end method

.method public a(Ls9/p;Lk9/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/p<",
            "-TT;-",
            "Lk9/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lda/x;->b(Lda/x1;ILjava/lang/Object;)Lda/v;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lh0/m;->h:Lkotlinx/coroutines/flow/k;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/k;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/n;

    .line 3
    new-instance v2, Lh0/m$b$b;

    invoke-interface {p2}, Lk9/d;->getContext()Lk9/g;

    move-result-object v3

    invoke-direct {v2, p1, v0, v1, v3}, Lh0/m$b$b;-><init>(Ls9/p;Lda/v;Lh0/n;Lk9/g;)V

    .line 4
    iget-object p1, p0, Lh0/m;->j:Lh0/l;

    invoke-virtual {p1, v2}, Lh0/l;->e(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, p2}, Lda/w0;->A(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()Lkotlinx/coroutines/flow/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh0/m;->e:Lkotlinx/coroutines/flow/b;

    return-object v0
.end method

###### Class h0.m.a (h0.m$a)
.class public final Lh0/m$a;
.super Ljava/lang/Object;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lh0/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lh0/m;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {}, Lh0/m;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class h0.m.b (h0.m$b)
.class abstract Lh0/m$b;
.super Ljava/lang/Object;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/m$b$a;,
        Lh0/m$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lh0/m$b;-><init>()V

    return-void
.end method

###### Class h0.m.b.a (h0.m$b$a)
.class public final Lh0/m$b$a;
.super Lh0/m$b;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/m$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lh0/m$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lh0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh0/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/n<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lh0/m$b;-><init>(Lt9/g;)V

    .line 2
    iput-object p1, p0, Lh0/m$b$a;->a:Lh0/n;

    return-void
.end method


# virtual methods
.method public a()Lh0/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh0/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh0/m$b$a;->a:Lh0/n;

    return-object v0
.end method

###### Class h0.m.b.C0169b (h0.m$b$b)
.class public final Lh0/m$b$b;
.super Lh0/m$b;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/m$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lh0/m$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "TT;",
            "Lk9/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lda/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lda/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lh0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lk9/g;


# direct methods
.method public constructor <init>(Ls9/p;Lda/v;Lh0/n;Lk9/g;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/p<",
            "-TT;-",
            "Lk9/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lda/v<",
            "TT;>;",
            "Lh0/n<",
            "TT;>;",
            "Lk9/g;",
            ")V"
        }
    .end annotation

    const-string v0, "transform"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ack"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerContext"

    invoke-static {p4, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lh0/m$b;-><init>(Lt9/g;)V

    .line 2
    iput-object p1, p0, Lh0/m$b$b;->a:Ls9/p;

    .line 3
    iput-object p2, p0, Lh0/m$b$b;->b:Lda/v;

    .line 4
    iput-object p3, p0, Lh0/m$b$b;->c:Lh0/n;

    .line 5
    iput-object p4, p0, Lh0/m$b$b;->d:Lk9/g;

    return-void
.end method


# virtual methods
.method public final a()Lda/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lda/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh0/m$b$b;->b:Lda/v;

    return-object v0
.end method

.method public final b()Lk9/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lh0/m$b$b;->d:Lk9/g;

    return-object v0
.end method

.method public c()Lh0/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh0/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh0/m$b$b;->c:Lh0/n;

    return-object v0
.end method

.method public final d()Ls9/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls9/p<",
            "TT;",
            "Lk9/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh0/m$b$b;->a:Ls9/p;

    return-object v0
.end method

###### Class h0.m.c (h0.m$c)
.class final Lh0/m$c;
.super Ljava/io/OutputStream;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final o:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;)V
    .registers 3

    const-string v0, "fileOutputStream"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lh0/m$c;->o:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 2

    .line 1
    iget-object v0, p0, Lh0/m$c;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh0/m$c;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 3

    const-string v0, "b"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lh0/m$c;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lh0/m$c;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method

###### Class h0.m.d (h0.m$d)
.class final Lh0/m$d;
.super Lt9/n;
.source "SingleProcessDataStore.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;-><init>(Ls9/a;Lh0/k;Ljava/util/List;Lh0/b;Lda/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Ljava/lang/Throwable;",
        "Lh9/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lh0/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$d;->o:Lh0/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_11

    .line 1
    :cond_3
    iget-object v0, p0, Lh0/m$d;->o:Lh0/m;

    .line 2
    invoke-static {v0}, Lh0/m;->f(Lh0/m;)Lkotlinx/coroutines/flow/k;

    move-result-object v0

    new-instance v1, Lh0/h;

    invoke-direct {v1, p1}, Lh0/h;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/k;->setValue(Ljava/lang/Object;)V

    .line 3
    :goto_11
    sget-object p1, Lh0/m;->k:Lh0/m$a;

    invoke-virtual {p1}, Lh0/m$a;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lh0/m$d;->o:Lh0/m;

    monitor-enter v0

    .line 4
    :try_start_1a
    invoke-virtual {p1}, Lh0/m$a;->a()Ljava/util/Set;

    move-result-object p1

    invoke-static {v1}, Lh0/m;->g(Lh0/m;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    sget-object p1, Lh9/t;->a:Lh9/t;
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_2d

    .line 6
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lh0/m$d;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class h0.m.e (h0.m$e)
.class final Lh0/m$e;
.super Lt9/n;
.source "SingleProcessDataStore.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;-><init>(Ls9/a;Lh0/k;Ljava/util/List;Lh0/b;Lda/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Lh0/m$b<",
        "TT;>;",
        "Ljava/lang/Throwable;",
        "Lh9/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lh0/m$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh0/m$e;

    invoke-direct {v0}, Lh0/m$e;-><init>()V

    sput-object v0, Lh0/m$e;->o:Lh0/m$e;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lh0/m$b;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m$b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lh0/m$b$b;

    if-eqz v0, :cond_1b

    .line 2
    check-cast p1, Lh0/m$b$b;

    invoke-virtual {p1}, Lh0/m$b$b;->a()Lda/v;

    move-result-object p1

    if-nez p2, :cond_18

    .line 3
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "DataStore scope was cancelled before updateData could complete"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 4
    :cond_18
    invoke-interface {p1, p2}, Lda/v;->u(Ljava/lang/Throwable;)Z

    :cond_1b
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lh0/m$b;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lh0/m$e;->c(Lh0/m$b;Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class h0.m.f (h0.m$f)
.class final Lh0/m$f;
.super Lm9/k;
.source "SingleProcessDataStore.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;-><init>(Ls9/a;Lh0/k;Ljava/util/List;Lh0/b;Lda/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lh0/m$b<",
        "TT;>;",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore$actor$3"
    f = "SingleProcessDataStore.kt"
    l = {
        0xef,
        0xf2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field synthetic t:Ljava/lang/Object;

.field final synthetic u:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lh0/m;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$f;->u:Lh0/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "*>;)",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lh0/m$f;

    iget-object v1, p0, Lh0/m$f;->u:Lh0/m;

    invoke-direct {v0, v1, p2}, Lh0/m$f;-><init>(Lh0/m;Lk9/d;)V

    iput-object p1, v0, Lh0/m$f;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lh0/m$f;->s:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    if-eq v1, v3, :cond_17

    if-ne v1, v2, :cond_f

    goto :goto_17

    .line 2
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_17
    :goto_17
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_44

    :cond_1b
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lh0/m$f;->t:Ljava/lang/Object;

    check-cast p1, Lh0/m$b;

    .line 4
    instance-of v1, p1, Lh0/m$b$a;

    if-eqz v1, :cond_33

    .line 5
    iget-object v1, p0, Lh0/m$f;->u:Lh0/m;

    check-cast p1, Lh0/m$b$a;

    iput v3, p0, Lh0/m$f;->s:I

    invoke-static {v1, p1, p0}, Lh0/m;->i(Lh0/m;Lh0/m$b$a;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_44

    return-object v0

    .line 6
    :cond_33
    instance-of v1, p1, Lh0/m$b$b;

    if-eqz v1, :cond_44

    .line 7
    iget-object v1, p0, Lh0/m$f;->u:Lh0/m;

    check-cast p1, Lh0/m$b$b;

    iput v2, p0, Lh0/m$f;->s:I

    invoke-static {v1, p1, p0}, Lh0/m;->j(Lh0/m;Lh0/m$b$b;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_44

    return-object v0

    .line 8
    :cond_44
    :goto_44
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lh0/m$b;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lh0/m$f;->l(Lh0/m$b;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lh0/m$b;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m$b<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lh0/m$f;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lh0/m$f;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lh0/m$f;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.g (h0.m$g)
.class final Lh0/m$g;
.super Lm9/k;
.source "SingleProcessDataStore.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;-><init>(Ls9/a;Lh0/k;Ljava/util/List;Lh0/b;Lda/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lkotlinx/coroutines/flow/c<",
        "-TT;>;",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore$data$1"
    f = "SingleProcessDataStore.kt"
    l = {
        0x75
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field private synthetic t:Ljava/lang/Object;

.field final synthetic u:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lh0/m;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$g;->u:Lh0/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "*>;)",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lh0/m$g;

    iget-object v1, p0, Lh0/m$g;->u:Lh0/m;

    invoke-direct {v0, v1, p2}, Lh0/m$g;-><init>(Lh0/m;Lk9/d;)V

    iput-object p1, v0, Lh0/m$g;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lh0/m$g;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_5a

    .line 2
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_17
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lh0/m$g;->t:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/c;

    .line 4
    iget-object v1, p0, Lh0/m$g;->u:Lh0/m;

    invoke-static {v1}, Lh0/m;->f(Lh0/m;)Lkotlinx/coroutines/flow/k;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/k;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/n;

    .line 5
    instance-of v3, v1, Lh0/c;

    if-nez v3, :cond_3c

    .line 6
    iget-object v3, p0, Lh0/m$g;->u:Lh0/m;

    invoke-static {v3}, Lh0/m;->e(Lh0/m;)Lh0/l;

    move-result-object v3

    new-instance v4, Lh0/m$b$a;

    invoke-direct {v4, v1}, Lh0/m$b$a;-><init>(Lh0/n;)V

    invoke-virtual {v3, v4}, Lh0/l;->e(Ljava/lang/Object;)V

    .line 7
    :cond_3c
    iget-object v3, p0, Lh0/m$g;->u:Lh0/m;

    invoke-static {v3}, Lh0/m;->f(Lh0/m;)Lkotlinx/coroutines/flow/k;

    move-result-object v3

    new-instance v4, Lh0/m$g$a;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lh0/m$g$a;-><init>(Lh0/n;Lk9/d;)V

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/d;->c(Lkotlinx/coroutines/flow/b;Ls9/p;)Lkotlinx/coroutines/flow/b;

    move-result-object v1

    .line 8
    new-instance v3, Lh0/m$g$b;

    invoke-direct {v3, v1}, Lh0/m$g$b;-><init>(Lkotlinx/coroutines/flow/b;)V

    .line 9
    iput v2, p0, Lh0/m$g;->s:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/d;->d(Lkotlinx/coroutines/flow/c;Lkotlinx/coroutines/flow/b;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5a

    return-object v0

    .line 10
    :cond_5a
    :goto_5a
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lh0/m$g;->l(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c<",
            "-TT;>;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lh0/m$g;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lh0/m$g;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lh0/m$g;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.g.a (h0.m$g$a)
.class final Lh0/m$g$a;
.super Lm9/k;
.source "SingleProcessDataStore.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m$g;->i(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lh0/n<",
        "TT;>;",
        "Lk9/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore$data$1$1"
    f = "SingleProcessDataStore.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field synthetic t:Ljava/lang/Object;

.field final synthetic u:Lh0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lh0/n;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/n<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$g$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$g$a;->u:Lh0/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "*>;)",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lh0/m$g$a;

    iget-object v1, p0, Lh0/m$g$a;->u:Lh0/n;

    invoke-direct {v0, v1, p2}, Lh0/m$g$a;-><init>(Lh0/n;Lk9/d;)V

    iput-object p1, v0, Lh0/m$g$a;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lh0/m$g$a;->s:I

    if-nez v0, :cond_22

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lh0/m$g$a;->t:Ljava/lang/Object;

    check-cast p1, Lh0/n;

    .line 2
    iget-object v0, p0, Lh0/m$g$a;->u:Lh0/n;

    instance-of v1, v0, Lh0/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    .line 3
    instance-of v1, v0, Lh0/h;

    if-eqz v1, :cond_1a

    goto :goto_1d

    :cond_1a
    if-ne p1, v0, :cond_1d

    const/4 v2, 0x1

    .line 4
    :cond_1d
    :goto_1d
    invoke-static {v2}, Lm9/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lh0/n;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lh0/m$g$a;->l(Lh0/n;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lh0/n;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/n<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lh0/m$g$a;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lh0/m$g$a;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lh0/m$g$a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.g.b (h0.m$g$b)
.class public final Lh0/m$g$b;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m$g;->i(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic o:Lkotlinx/coroutines/flow/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/b;)V
    .registers 2

    iput-object p1, p0, Lh0/m$g$b;->o:Lkotlinx/coroutines/flow/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lh0/m$g$b;->o:Lkotlinx/coroutines/flow/b;

    .line 2
    new-instance v1, Lh0/m$g$b$a;

    invoke-direct {v1, p1}, Lh0/m$g$b$a;-><init>(Lkotlinx/coroutines/flow/c;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_12

    return-object p1

    .line 3
    :cond_12
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class h0.m.g.b.a (h0.m$g$b$a)
.class public final Lh0/m$g$b$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m$g$b;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/c<",
        "Lh0/n<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic o:Lkotlinx/coroutines/flow/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/c;)V
    .registers 2

    iput-object p1, p0, Lh0/m$g$b$a;->o:Lkotlinx/coroutines/flow/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 7

    instance-of v0, p2, Lh0/m$g$b$a$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lh0/m$g$b$a$a;

    iget v1, v0, Lh0/m$g$b$a$a;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/m$g$b$a$a;->s:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/m$g$b$a$a;

    invoke-direct {v0, p0, p2}, Lh0/m$g$b$a$a;-><init>(Lh0/m$g$b$a;Lk9/d;)V

    :goto_18
    iget-object p2, v0, Lh0/m$g$b$a$a;->r:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lh0/m$g$b$a$a;->s:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    .line 1
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_53

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_31
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lh0/m$g$b$a;->o:Lkotlinx/coroutines/flow/c;

    .line 4
    check-cast p1, Lh0/n;

    .line 5
    instance-of v2, p1, Lh0/j;

    if-nez v2, :cond_73

    .line 6
    instance-of v2, p1, Lh0/h;

    if-nez v2, :cond_6c

    .line 7
    instance-of v2, p1, Lh0/c;

    if-eqz v2, :cond_56

    check-cast p1, Lh0/c;

    invoke-virtual {p1}, Lh0/c;->b()Ljava/lang/Object;

    move-result-object p1

    .line 8
    iput v3, v0, Lh0/m$g$b$a$a;->s:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/c;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_53

    return-object v1

    :cond_53
    :goto_53
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    .line 9
    :cond_56
    instance-of p1, p1, Lh0/o;

    if-eqz p1, :cond_66

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    new-instance p1, Lh9/l;

    invoke-direct {p1}, Lh9/l;-><init>()V

    throw p1

    .line 10
    :cond_6c
    check-cast p1, Lh0/h;

    invoke-virtual {p1}, Lh0/h;->a()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 11
    :cond_73
    check-cast p1, Lh0/j;

    invoke-virtual {p1}, Lh0/j;->a()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

###### Class h0.m.g.b.a.C0170a (h0.m$g$b$a$a)
.class public final Lh0/m$g$b$a$a;
.super Lm9/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m$g$b$a;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2"
    f = "SingleProcessDataStore.kt"
    l = {
        0x89
    }
    m = "emit"
.end annotation


# instance fields
.field synthetic r:Ljava/lang/Object;

.field s:I

.field final synthetic t:Lh0/m$g$b$a;


# direct methods
.method public constructor <init>(Lh0/m$g$b$a;Lk9/d;)V
    .registers 3

    iput-object p1, p0, Lh0/m$g$b$a$a;->t:Lh0/m$g$b$a;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/m$g$b$a$a;->r:Ljava/lang/Object;

    iget p1, p0, Lh0/m$g$b$a$a;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/m$g$b$a$a;->s:I

    iget-object p1, p0, Lh0/m$g$b$a$a;->t:Lh0/m$g$b$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lh0/m$g$b$a;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.h (h0.m$h)
.class final Lh0/m$h;
.super Lt9/n;
.source "SingleProcessDataStore.kt"

# interfaces
.implements Ls9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;-><init>(Ls9/a;Lh0/k;Ljava/util/List;Lh0/b;Lda/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/a<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lh0/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$h;->o:Lh0/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/io/File;
    .registers 6

    .line 1
    iget-object v0, p0, Lh0/m$h;->o:Lh0/m;

    invoke-static {v0}, Lh0/m;->h(Lh0/m;)Ls9/a;

    move-result-object v0

    invoke-interface {v0}, Ls9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lh0/m;->k:Lh0/m$a;

    invoke-virtual {v2}, Lh0/m$a;->b()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4
    :try_start_17
    invoke-virtual {v2}, Lh0/m$a;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_31

    .line 5
    invoke-virtual {v2}, Lh0/m$a;->a()Ljava/util/Set;

    move-result-object v2

    const-string v4, "it"

    invoke-static {v1, v4}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_51

    .line 6
    monitor-exit v3

    return-object v0

    .line 7
    :cond_31
    :try_start_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are multiple DataStores active for the same file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    .line 9
    monitor-exit v3

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lh0/m$h;->c()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

###### Class h0.m.i (h0.m$i)
.class final Lh0/m$i;
.super Lm9/d;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;->t(Lh0/m$b$b;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore"
    f = "SingleProcessDataStore.kt"
    l = {
        0x114,
        0x119,
        0x11c
    }
    m = "handleUpdate"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field t:Ljava/lang/Object;

.field synthetic u:Ljava/lang/Object;

.field final synthetic v:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field w:I


# direct methods
.method constructor <init>(Lh0/m;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$i;->v:Lh0/m;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/m$i;->u:Ljava/lang/Object;

    iget p1, p0, Lh0/m$i;->w:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/m$i;->w:I

    iget-object p1, p0, Lh0/m$i;->v:Lh0/m;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lh0/m;->j(Lh0/m;Lh0/m$b$b;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.j (h0.m$j)
.class final Lh0/m$j;
.super Lm9/d;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;->u(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore"
    f = "SingleProcessDataStore.kt"
    l = {
        0x142,
        0x15c,
        0x1f9
    }
    m = "readAndInit"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field t:Ljava/lang/Object;

.field u:Ljava/lang/Object;

.field v:Ljava/lang/Object;

.field w:Ljava/lang/Object;

.field synthetic x:Ljava/lang/Object;

.field final synthetic y:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field z:I


# direct methods
.method constructor <init>(Lh0/m;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$j;->y:Lh0/m;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/m$j;->x:Ljava/lang/Object;

    iget p1, p0, Lh0/m$j;->z:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/m$j;->z:I

    iget-object p1, p0, Lh0/m$j;->y:Lh0/m;

    invoke-static {p1, p0}, Lh0/m;->k(Lh0/m;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.k (h0.m$k)
.class public final Lh0/m$k;
.super Ljava/lang/Object;
.source "SingleProcessDataStore.kt"

# interfaces
.implements Lh0/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;->u(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh0/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/sync/b;

.field final synthetic b:Lt9/w;

.field final synthetic c:Lt9/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt9/y<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/b;Lt9/w;Lt9/y;Lh0/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/b;",
            "Lt9/w;",
            "Lt9/y<",
            "TT;>;",
            "Lh0/m<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$k;->a:Lkotlinx/coroutines/sync/b;

    iput-object p2, p0, Lh0/m$k;->b:Lt9/w;

    iput-object p3, p0, Lh0/m$k;->c:Lt9/y;

    iput-object p4, p0, Lh0/m$k;->d:Lh0/m;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls9/p;Lk9/d;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/p<",
            "-TT;-",
            "Lk9/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lh0/m$k$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lh0/m$k$a;

    iget v1, v0, Lh0/m$k$a;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/m$k$a;->y:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/m$k$a;

    invoke-direct {v0, p0, p2}, Lh0/m$k$a;-><init>(Lh0/m$k;Lk9/d;)V

    :goto_18
    iget-object p2, v0, Lh0/m$k$a;->w:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lh0/m$k$a;->y:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_76

    if-eq v2, v5, :cond_5a

    if-eq v2, v4, :cond_46

    if-ne v2, v3, :cond_3e

    iget-object p1, v0, Lh0/m$k$a;->t:Ljava/lang/Object;

    iget-object v1, v0, Lh0/m$k$a;->s:Ljava/lang/Object;

    check-cast v1, Lt9/y;

    iget-object v0, v0, Lh0/m$k$a;->r:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/b;

    :try_start_36
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    goto/16 :goto_cc

    :catchall_3b
    move-exception p1

    goto/16 :goto_e1

    .line 2
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_46
    iget-object p1, v0, Lh0/m$k$a;->t:Ljava/lang/Object;

    check-cast p1, Lh0/m;

    iget-object v2, v0, Lh0/m$k$a;->s:Ljava/lang/Object;

    check-cast v2, Lt9/y;

    iget-object v4, v0, Lh0/m$k$a;->r:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/b;

    :try_start_52
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_b2

    :catchall_56
    move-exception p1

    move-object v0, v4

    goto/16 :goto_e1

    :cond_5a
    iget-object p1, v0, Lh0/m$k$a;->v:Ljava/lang/Object;

    check-cast p1, Lh0/m;

    iget-object v2, v0, Lh0/m$k$a;->u:Ljava/lang/Object;

    check-cast v2, Lt9/y;

    iget-object v5, v0, Lh0/m$k$a;->t:Ljava/lang/Object;

    check-cast v5, Lt9/w;

    iget-object v7, v0, Lh0/m$k$a;->s:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/b;

    iget-object v8, v0, Lh0/m$k$a;->r:Ljava/lang/Object;

    check-cast v8, Ls9/p;

    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    move-object p2, v7

    move-object v9, v8

    move-object v8, p1

    move-object p1, v9

    goto :goto_96

    :cond_76
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lh0/m$k;->a:Lkotlinx/coroutines/sync/b;

    iget-object v2, p0, Lh0/m$k;->b:Lt9/w;

    iget-object v7, p0, Lh0/m$k;->c:Lt9/y;

    iget-object v8, p0, Lh0/m$k;->d:Lh0/m;

    .line 5
    iput-object p1, v0, Lh0/m$k$a;->r:Ljava/lang/Object;

    iput-object p2, v0, Lh0/m$k$a;->s:Ljava/lang/Object;

    iput-object v2, v0, Lh0/m$k$a;->t:Ljava/lang/Object;

    iput-object v7, v0, Lh0/m$k$a;->u:Ljava/lang/Object;

    iput-object v8, v0, Lh0/m$k$a;->v:Ljava/lang/Object;

    iput v5, v0, Lh0/m$k$a;->y:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/b;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_94

    return-object v1

    :cond_94
    move-object v5, v2

    move-object v2, v7

    .line 6
    :goto_96
    :try_start_96
    iget-boolean v5, v5, Lt9/w;->o:Z

    if-nez v5, :cond_d7

    .line 7
    iget-object v5, v2, Lt9/y;->o:Ljava/lang/Object;

    iput-object p2, v0, Lh0/m$k$a;->r:Ljava/lang/Object;

    iput-object v2, v0, Lh0/m$k$a;->s:Ljava/lang/Object;

    iput-object v8, v0, Lh0/m$k$a;->t:Ljava/lang/Object;

    iput-object v6, v0, Lh0/m$k$a;->u:Ljava/lang/Object;

    iput-object v6, v0, Lh0/m$k$a;->v:Ljava/lang/Object;

    iput v4, v0, Lh0/m$k$a;->y:I

    invoke-interface {p1, v5, v0}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_ac
    .catchall {:try_start_96 .. :try_end_ac} :catchall_df

    if-ne p1, v1, :cond_af

    return-object v1

    :cond_af
    move-object v4, p2

    move-object p2, p1

    move-object p1, v8

    .line 8
    :goto_b2
    :try_start_b2
    iget-object v5, v2, Lt9/y;->o:Ljava/lang/Object;

    invoke-static {p2, v5}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d0

    .line 9
    iput-object v4, v0, Lh0/m$k$a;->r:Ljava/lang/Object;

    iput-object v2, v0, Lh0/m$k$a;->s:Ljava/lang/Object;

    iput-object p2, v0, Lh0/m$k$a;->t:Ljava/lang/Object;

    iput v3, v0, Lh0/m$k$a;->y:I

    invoke-virtual {p1, p2, v0}, Lh0/m;->A(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c6
    .catchall {:try_start_b2 .. :try_end_c6} :catchall_56

    if-ne p1, v1, :cond_c9

    return-object v1

    :cond_c9
    move-object p1, p2

    move-object v1, v2

    move-object v0, v4

    .line 10
    :goto_cc
    :try_start_cc
    iput-object p1, v1, Lt9/y;->o:Ljava/lang/Object;

    move-object v2, v1

    goto :goto_d1

    :cond_d0
    move-object v0, v4

    .line 11
    :goto_d1
    iget-object p1, v2, Lt9/y;->o:Ljava/lang/Object;
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_3b

    .line 12
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    return-object p1

    .line 13
    :cond_d7
    :try_start_d7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "InitializerApi.updateData should not be called after initialization is complete."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_df
    .catchall {:try_start_d7 .. :try_end_df} :catchall_df

    :catchall_df
    move-exception p1

    move-object v0, p2

    .line 14
    :goto_e1
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    throw p1
.end method

###### Class h0.m.k.a (h0.m$k$a)
.class final Lh0/m$k$a;
.super Lm9/d;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m$k;->a(Ls9/p;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore$readAndInit$api$1"
    f = "SingleProcessDataStore.kt"
    l = {
        0x1f7,
        0x151,
        0x153
    }
    m = "updateData"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field t:Ljava/lang/Object;

.field u:Ljava/lang/Object;

.field v:Ljava/lang/Object;

.field synthetic w:Ljava/lang/Object;

.field final synthetic x:Lh0/m$k;

.field y:I


# direct methods
.method constructor <init>(Lh0/m$k;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m$k;",
            "Lk9/d<",
            "-",
            "Lh0/m$k$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$k$a;->x:Lh0/m$k;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/m$k$a;->w:Ljava/lang/Object;

    iget p1, p0, Lh0/m$k$a;->y:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/m$k$a;->y:I

    iget-object p1, p0, Lh0/m$k$a;->x:Lh0/m$k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lh0/m$k;->a(Ls9/p;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.l (h0.m$l)
.class final Lh0/m$l;
.super Lm9/d;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;->v(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore"
    f = "SingleProcessDataStore.kt"
    l = {
        0x12e
    }
    m = "readAndInitOrPropagateAndThrowFailure"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field synthetic s:Ljava/lang/Object;

.field final synthetic t:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field u:I


# direct methods
.method constructor <init>(Lh0/m;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$l;->t:Lh0/m;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/m$l;->s:Ljava/lang/Object;

    iget p1, p0, Lh0/m$l;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/m$l;->u:I

    iget-object p1, p0, Lh0/m$l;->t:Lh0/m;

    invoke-static {p1, p0}, Lh0/m;->l(Lh0/m;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.C0171m (h0.m$m)
.class final Lh0/m$m;
.super Lm9/d;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;->w(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore"
    f = "SingleProcessDataStore.kt"
    l = {
        0x137
    }
    m = "readAndInitOrPropagateFailure"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field synthetic s:Ljava/lang/Object;

.field final synthetic t:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field u:I


# direct methods
.method constructor <init>(Lh0/m;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$m;->t:Lh0/m;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/m$m;->s:Ljava/lang/Object;

    iget p1, p0, Lh0/m$m;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/m$m;->u:I

    iget-object p1, p0, Lh0/m$m;->t:Lh0/m;

    invoke-static {p1, p0}, Lh0/m;->m(Lh0/m;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.n (h0.m$n)
.class final Lh0/m$n;
.super Lm9/d;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;->x(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore"
    f = "SingleProcessDataStore.kt"
    l = {
        0x17d
    }
    m = "readData"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field t:Ljava/lang/Object;

.field synthetic u:Ljava/lang/Object;

.field final synthetic v:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field w:I


# direct methods
.method constructor <init>(Lh0/m;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$n;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$n;->v:Lh0/m;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/m$n;->u:Ljava/lang/Object;

    iget p1, p0, Lh0/m$n;->w:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/m$n;->w:I

    iget-object p1, p0, Lh0/m$n;->v:Lh0/m;

    invoke-static {p1, p0}, Lh0/m;->n(Lh0/m;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.o (h0.m$o)
.class final Lh0/m$o;
.super Lm9/d;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;->y(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore"
    f = "SingleProcessDataStore.kt"
    l = {
        0x167,
        0x16a,
        0x16d
    }
    m = "readDataOrHandleCorruption"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field synthetic t:Ljava/lang/Object;

.field final synthetic u:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field v:I


# direct methods
.method constructor <init>(Lh0/m;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$o;->u:Lh0/m;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/m$o;->t:Ljava/lang/Object;

    iget p1, p0, Lh0/m$o;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/m$o;->v:I

    iget-object p1, p0, Lh0/m$o;->u:Lh0/m;

    invoke-static {p1, p0}, Lh0/m;->o(Lh0/m;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.p (h0.m$p)
.class final Lh0/m$p;
.super Lm9/d;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;->z(Ls9/p;Lk9/g;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore"
    f = "SingleProcessDataStore.kt"
    l = {
        0x192,
        0x19a
    }
    m = "transformAndWrite"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field t:Ljava/lang/Object;

.field synthetic u:Ljava/lang/Object;

.field final synthetic v:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field w:I


# direct methods
.method constructor <init>(Lh0/m;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$p;->v:Lh0/m;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/m$p;->u:Ljava/lang/Object;

    iget p1, p0, Lh0/m$p;->w:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/m$p;->w:I

    iget-object p1, p0, Lh0/m$p;->v:Lh0/m;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lh0/m;->p(Lh0/m;Ls9/p;Lk9/g;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.q (h0.m$q)
.class final Lh0/m$q;
.super Lm9/k;
.source "SingleProcessDataStore.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;->z(Ls9/p;Lk9/g;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lda/o0;",
        "Lk9/d<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore$transformAndWrite$newData$1"
    f = "SingleProcessDataStore.kt"
    l = {
        0x192
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field final synthetic t:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "TT;",
            "Lk9/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ls9/p;Ljava/lang/Object;Lk9/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/p<",
            "-TT;-",
            "Lk9/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TT;",
            "Lk9/d<",
            "-",
            "Lh0/m$q;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$q;->t:Ls9/p;

    iput-object p2, p0, Lh0/m$q;->u:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "*>;)",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    new-instance p1, Lh0/m$q;

    iget-object v0, p0, Lh0/m$q;->t:Ls9/p;

    iget-object v1, p0, Lh0/m$q;->u:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p2}, Lh0/m$q;-><init>(Ls9/p;Ljava/lang/Object;Lk9/d;)V

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lh0/m$q;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lh0/m$q;->t:Ls9/p;

    iget-object v1, p0, Lh0/m$q;->u:Ljava/lang/Object;

    iput v2, p0, Lh0/m$q;->s:I

    invoke-interface {p1, v1, p0}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lda/o0;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lh0/m$q;->l(Lda/o0;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lda/o0;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/o0;",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lh0/m$q;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lh0/m$q;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lh0/m$q;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.m.r (h0.m$r)
.class final Lh0/m$r;
.super Lm9/d;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/m;->A(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.SingleProcessDataStore"
    f = "SingleProcessDataStore.kt"
    l = {
        0x1aa
    }
    m = "writeData$datastore_core"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field t:Ljava/lang/Object;

.field u:Ljava/lang/Object;

.field v:Ljava/lang/Object;

.field synthetic w:Ljava/lang/Object;

.field final synthetic x:Lh0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field y:I


# direct methods
.method constructor <init>(Lh0/m;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/m$r;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/m$r;->x:Lh0/m;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/m$r;->w:Ljava/lang/Object;

    iget p1, p0, Lh0/m$r;->y:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/m$r;->y:I

    iget-object p1, p0, Lh0/m$r;->x:Lh0/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lh0/m;->A(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
