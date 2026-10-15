###### Class h0.e (h0.e)
.class public final Lh0/e;
.super Ljava/lang/Object;
.source "DataMigrationInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/e$a;
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


# static fields
.field public static final a:Lh0/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh0/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh0/e$a;-><init>(Lt9/g;)V

    sput-object v0, Lh0/e;->a:Lh0/e$a;

    return-void
.end method

###### Class h0.e.a (h0.e$a)
.class public final Lh0/e$a;
.super Ljava/lang/Object;
.source "DataMigrationInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/e;
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

    invoke-direct {p0}, Lh0/e$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lh0/e$a;Ljava/util/List;Lh0/i;Lk9/d;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lh0/e$a;->c(Ljava/util/List;Lh0/i;Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final c(Ljava/util/List;Lh0/i;Lk9/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lh0/d<",
            "TT;>;>;",
            "Lh0/i<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lh0/e$a$b;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lh0/e$a$b;

    iget v1, v0, Lh0/e$a$b;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lh0/e$a$b;->v:I

    goto :goto_18

    :cond_13
    new-instance v0, Lh0/e$a$b;

    invoke-direct {v0, p0, p3}, Lh0/e$a$b;-><init>(Lh0/e$a;Lk9/d;)V

    :goto_18
    iget-object p3, v0, Lh0/e$a$b;->t:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lh0/e$a$b;->v:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_46

    if-eq v2, v4, :cond_3e

    if-ne v2, v3, :cond_36

    iget-object p1, v0, Lh0/e$a$b;->s:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object p2, v0, Lh0/e$a$b;->r:Ljava/lang/Object;

    check-cast p2, Lt9/y;

    :try_start_30
    invoke-static {p3}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_69

    :catchall_34
    move-exception p3

    goto :goto_82

    .line 2
    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_3e
    iget-object p1, v0, Lh0/e$a$b;->r:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p3}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_60

    :cond_46
    invoke-static {p3}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Lh0/e$a$c;

    const/4 v5, 0x0

    invoke-direct {v2, p1, p3, v5}, Lh0/e$a$c;-><init>(Ljava/util/List;Ljava/util/List;Lk9/d;)V

    iput-object p3, v0, Lh0/e$a$b;->r:Ljava/lang/Object;

    iput v4, v0, Lh0/e$a$b;->v:I

    invoke-interface {p2, v2, v0}, Lh0/i;->a(Ls9/p;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5f

    return-object v1

    :cond_5f
    move-object p1, p3

    .line 6
    :goto_60
    new-instance p2, Lt9/y;

    invoke-direct {p2}, Lt9/y;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_69
    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls9/l;

    .line 8
    :try_start_75
    iput-object p2, v0, Lh0/e$a$b;->r:Ljava/lang/Object;

    iput-object p1, v0, Lh0/e$a$b;->s:Ljava/lang/Object;

    iput v3, v0, Lh0/e$a$b;->v:I

    invoke-interface {p3, v0}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_7f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_34

    if-ne p3, v1, :cond_69

    return-object v1

    .line 9
    :goto_82
    iget-object v2, p2, Lt9/y;->o:Ljava/lang/Object;

    if-nez v2, :cond_89

    .line 10
    iput-object p3, p2, Lt9/y;->o:Ljava/lang/Object;

    goto :goto_69

    .line 11
    :cond_89
    invoke-static {v2}, Lt9/m;->b(Ljava/lang/Object;)V

    iget-object v2, p2, Lt9/y;->o:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2, p3}, Lh9/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_69

    .line 12
    :cond_94
    iget-object p1, p2, Lt9/y;->o:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_9d

    .line 13
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    .line 14
    :cond_9d
    goto :goto_9f

    :goto_9e
    throw p1

    :goto_9f
    goto :goto_9e
.end method


# virtual methods
.method public final b(Ljava/util/List;)Ls9/p;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lh0/d<",
            "TT;>;>;)",
            "Ls9/p<",
            "Lh0/i<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "migrations"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lh0/e$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lh0/e$a$a;-><init>(Ljava/util/List;Lk9/d;)V

    return-object v0
.end method

###### Class h0.e.a.C0167a (h0.e$a$a)
.class final Lh0/e$a$a;
.super Lm9/k;
.source "DataMigrationInitializer.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/e$a;->b(Ljava/util/List;)Ls9/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lh0/i<",
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
    c = "androidx.datastore.core.DataMigrationInitializer$Companion$getInitializer$1"
    f = "DataMigrationInitializer.kt"
    l = {
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field synthetic t:Ljava/lang/Object;

.field final synthetic u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh0/d<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lh0/d<",
            "TT;>;>;",
            "Lk9/d<",
            "-",
            "Lh0/e$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/e$a$a;->u:Ljava/util/List;

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

    new-instance v0, Lh0/e$a$a;

    iget-object v1, p0, Lh0/e$a$a;->u:Ljava/util/List;

    invoke-direct {v0, v1, p2}, Lh0/e$a$a;-><init>(Ljava/util/List;Lk9/d;)V

    iput-object p1, v0, Lh0/e$a$a;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lh0/e$a$a;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_2b

    .line 2
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_17
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lh0/e$a$a;->t:Ljava/lang/Object;

    check-cast p1, Lh0/i;

    .line 4
    sget-object v1, Lh0/e;->a:Lh0/e$a;

    iget-object v3, p0, Lh0/e$a$a;->u:Ljava/util/List;

    iput v2, p0, Lh0/e$a$a;->s:I

    invoke-static {v1, v3, p1, p0}, Lh0/e$a;->a(Lh0/e$a;Ljava/util/List;Lh0/i;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    .line 5
    :cond_2b
    :goto_2b
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lh0/i;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lh0/e$a$a;->l(Lh0/i;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lh0/i;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/i<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lh0/e$a$a;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lh0/e$a$a;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lh0/e$a$a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.e.a.b (h0.e$a$b)
.class final Lh0/e$a$b;
.super Lm9/d;
.source "DataMigrationInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/e$a;->c(Ljava/util/List;Lh0/i;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm9/d;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.DataMigrationInitializer$Companion"
    f = "DataMigrationInitializer.kt"
    l = {
        0x2a,
        0x39
    }
    m = "runMigrations"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field synthetic t:Ljava/lang/Object;

.field final synthetic u:Lh0/e$a;

.field v:I


# direct methods
.method constructor <init>(Lh0/e$a;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/e$a;",
            "Lk9/d<",
            "-",
            "Lh0/e$a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/e$a$b;->u:Lh0/e$a;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lh0/e$a$b;->t:Ljava/lang/Object;

    iget p1, p0, Lh0/e$a$b;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh0/e$a$b;->v:I

    iget-object p1, p0, Lh0/e$a$b;->u:Lh0/e$a;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lh0/e$a;->a(Lh0/e$a;Ljava/util/List;Lh0/i;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.e.a.c (h0.e$a$c)
.class final Lh0/e$a$c;
.super Lm9/k;
.source "DataMigrationInitializer.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/e$a;->c(Ljava/util/List;Lh0/i;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "TT;",
        "Lk9/d<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2"
    f = "DataMigrationInitializer.kt"
    l = {
        0x2c,
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:Ljava/lang/Object;

.field t:Ljava/lang/Object;

.field u:Ljava/lang/Object;

.field v:I

.field synthetic w:Ljava/lang/Object;

.field final synthetic x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh0/d<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls9/l<",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lk9/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lh0/d<",
            "TT;>;>;",
            "Ljava/util/List<",
            "Ls9/l<",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lk9/d<",
            "-",
            "Lh0/e$a$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/e$a$c;->x:Ljava/util/List;

    iput-object p2, p0, Lh0/e$a$c;->y:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 6
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

    new-instance v0, Lh0/e$a$c;

    iget-object v1, p0, Lh0/e$a$c;->x:Ljava/util/List;

    iget-object v2, p0, Lh0/e$a$c;->y:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Lh0/e$a$c;-><init>(Ljava/util/List;Ljava/util/List;Lk9/d;)V

    iput-object p1, v0, Lh0/e$a$c;->w:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lh0/e$a$c;->v:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3a

    if-eq v1, v3, :cond_24

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lh0/e$a$c;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v4, p0, Lh0/e$a$c;->w:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    move-object v7, p0

    goto/16 :goto_8c

    .line 2
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_24
    iget-object v1, p0, Lh0/e$a$c;->u:Ljava/lang/Object;

    iget-object v4, p0, Lh0/e$a$c;->t:Ljava/lang/Object;

    check-cast v4, Lh0/d;

    iget-object v5, p0, Lh0/e$a$c;->s:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lh0/e$a$c;->w:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    move-object v7, p0

    move-object v9, v6

    move-object v6, v4

    move-object v4, v9

    goto :goto_6a

    :cond_3a
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lh0/e$a$c;->w:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lh0/e$a$c;->x:Ljava/util/List;

    iget-object v4, p0, Lh0/e$a$c;->y:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, p0

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh0/d;

    .line 6
    iput-object v4, v5, Lh0/e$a$c;->w:Ljava/lang/Object;

    iput-object v1, v5, Lh0/e$a$c;->s:Ljava/lang/Object;

    iput-object v6, v5, Lh0/e$a$c;->t:Ljava/lang/Object;

    iput-object p1, v5, Lh0/e$a$c;->u:Ljava/lang/Object;

    iput v3, v5, Lh0/e$a$c;->v:I

    invoke-interface {v6, p1, v5}, Lh0/d;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_65

    return-object v0

    :cond_65
    move-object v9, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v5

    move-object v5, v9

    :goto_6a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 7
    new-instance p1, Lh0/e$a$c$a;

    const/4 v8, 0x0

    invoke-direct {p1, v6, v8}, Lh0/e$a$c$a;-><init>(Lh0/d;Lk9/d;)V

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iput-object v4, v7, Lh0/e$a$c;->w:Ljava/lang/Object;

    iput-object v5, v7, Lh0/e$a$c;->s:Ljava/lang/Object;

    iput-object v8, v7, Lh0/e$a$c;->t:Ljava/lang/Object;

    iput-object v8, v7, Lh0/e$a$c;->u:Ljava/lang/Object;

    iput v2, v7, Lh0/e$a$c;->v:I

    invoke-interface {v6, v1, v7}, Lh0/d;->a(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8f

    return-object v0

    :goto_8c
    move-object v5, v7

    goto :goto_48

    :cond_8e
    move-object p1, v1

    :cond_8f
    move-object v1, v5

    goto :goto_8c

    :cond_91
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lh0/e$a$c;->l(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lh0/e$a$c;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lh0/e$a$c;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lh0/e$a$c;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class h0.e.a.c.C0168a (h0.e$a$c$a)
.class final Lh0/e$a$c$a;
.super Lm9/k;
.source "DataMigrationInitializer.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh0/e$a$c;->i(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/l<",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1"
    f = "DataMigrationInitializer.kt"
    l = {
        0x2d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field final synthetic t:Lh0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lh0/d;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/d<",
            "TT;>;",
            "Lk9/d<",
            "-",
            "Lh0/e$a$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lh0/e$a$c$a;->t:Lh0/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lh0/e$a$c$a;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_25

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lh0/e$a$c$a;->t:Lh0/d;

    iput v2, p0, Lh0/e$a$c$a;->s:I

    invoke-interface {p1, p0}, Lh0/d;->b(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    :cond_25
    :goto_25
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lk9/d;

    invoke-virtual {p0, p1}, Lh0/e$a$c$a;->n(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lk9/d;)Lk9/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "*>;)",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lh0/e$a$c$a;

    iget-object v1, p0, Lh0/e$a$c$a;->t:Lh0/d;

    invoke-direct {v0, v1, p1}, Lh0/e$a$c$a;-><init>(Lh0/d;Lk9/d;)V

    return-object v0
.end method

.method public final n(Lk9/d;)Ljava/lang/Object;
    .registers 3
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

    invoke-virtual {p0, p1}, Lh0/e$a$c$a;->l(Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lh0/e$a$c$a;

    sget-object v0, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, v0}, Lh0/e$a$c$a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
