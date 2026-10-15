###### Class x6.y (x6.y)
.class public final Lx6/y;
.super Ljava/lang/Object;
.source "SessionDatastore.kt"

# interfaces
.implements Lx6/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/y$c;,
        Lx6/y$b;
    }
.end annotation


# static fields
.field private static final f:Lx6/y$b;

.field private static final g:Lv9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/a<",
            "Landroid/content/Context;",
            "Lh0/f<",
            "Lk0/d;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lk9/g;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lx6/m;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkotlinx/coroutines/flow/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/b<",
            "Lx6/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lx6/y$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx6/y$b;-><init>(Lt9/g;)V

    sput-object v0, Lx6/y;->f:Lx6/y$b;

    .line 1
    sget-object v0, Lx6/w;->a:Lx6/w;

    invoke-virtual {v0}, Lx6/w;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lj0/a;->b(Ljava/lang/String;Li0/b;Ls9/l;Lda/o0;ILjava/lang/Object;)Lv9/a;

    move-result-object v0

    sput-object v0, Lx6/y;->g:Lv9/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lk9/g;)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx6/y;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lx6/y;->c:Lk9/g;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lx6/y;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    sget-object v0, Lx6/y;->f:Lx6/y$b;

    invoke-static {v0, p1}, Lx6/y$b;->a(Lx6/y$b;Landroid/content/Context;)Lh0/f;

    move-result-object p1

    invoke-interface {p1}, Lh0/f;->b()Lkotlinx/coroutines/flow/b;

    move-result-object p1

    .line 6
    new-instance v0, Lx6/y$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx6/y$d;-><init>(Lk9/d;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/d;->a(Lkotlinx/coroutines/flow/b;Ls9/q;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    .line 7
    new-instance v0, Lx6/y$e;

    invoke-direct {v0, p1, p0}, Lx6/y$e;-><init>(Lkotlinx/coroutines/flow/b;Lx6/y;)V

    .line 8
    iput-object v0, p0, Lx6/y;->e:Lkotlinx/coroutines/flow/b;

    .line 9
    invoke-static {p2}, Lda/p0;->a(Lk9/g;)Lda/o0;

    move-result-object v2

    new-instance v5, Lx6/y$a;

    invoke-direct {v5, p0, v1}, Lx6/y$a;-><init>(Lx6/y;Lk9/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lda/h;->b(Lda/o0;Lk9/g;Lda/q0;Ls9/p;ILjava/lang/Object;)Lda/x1;

    return-void
.end method

.method public static final synthetic c()Lx6/y$b;
    .registers 1

    .line 1
    sget-object v0, Lx6/y;->f:Lx6/y$b;

    return-object v0
.end method

.method public static final synthetic d(Lx6/y;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lx6/y;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic e(Lx6/y;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lx6/y;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static final synthetic f()Lv9/a;
    .registers 1

    .line 1
    sget-object v0, Lx6/y;->g:Lv9/a;

    return-object v0
.end method

.method public static final synthetic g(Lx6/y;)Lkotlinx/coroutines/flow/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lx6/y;->e:Lkotlinx/coroutines/flow/b;

    return-object p0
.end method

.method public static final synthetic h(Lx6/y;Lk0/d;)Lx6/m;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lx6/y;->i(Lk0/d;)Lx6/m;

    move-result-object p0

    return-object p0
.end method

.method private final i(Lk0/d;)Lx6/m;
    .registers 4

    .line 1
    new-instance v0, Lx6/m;

    .line 2
    sget-object v1, Lx6/y$c;->a:Lx6/y$c;

    invoke-virtual {v1}, Lx6/y$c;->a()Lk0/d$a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lk0/d;->b(Lk0/d$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-direct {v0, p1}, Lx6/m;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lx6/y;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx6/m;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lx6/m;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 9

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lx6/y;->c:Lk9/g;

    invoke-static {v0}, Lda/p0;->a(Lk9/g;)Lda/o0;

    move-result-object v1

    new-instance v4, Lx6/y$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lx6/y$f;-><init>(Lx6/y;Ljava/lang/String;Lk9/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lda/h;->b(Lda/o0;Lk9/g;Lda/q0;Ls9/p;ILjava/lang/Object;)Lda/x1;

    return-void
.end method

###### Class x6.y.a (x6.y$a)
.class final Lx6/y$a;
.super Lm9/k;
.source "SessionDatastore.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/y;-><init>(Landroid/content/Context;Lk9/g;)V
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
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.SessionDatastoreImpl$1"
    f = "SessionDatastore.kt"
    l = {
        0x4f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field final synthetic t:Lx6/y;


# direct methods
.method constructor <init>(Lx6/y;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/y;",
            "Lk9/d<",
            "-",
            "Lx6/y$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx6/y$a;->t:Lx6/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 4
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

    new-instance p1, Lx6/y$a;

    iget-object v0, p0, Lx6/y$a;->t:Lx6/y;

    invoke-direct {p1, v0, p2}, Lx6/y$a;-><init>(Lx6/y;Lk9/d;)V

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lx6/y$a;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_30

    .line 2
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_17
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lx6/y$a;->t:Lx6/y;

    invoke-static {p1}, Lx6/y;->g(Lx6/y;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    new-instance v1, Lx6/y$a$a;

    iget-object v3, p0, Lx6/y$a;->t:Lx6/y;

    invoke-direct {v1, v3}, Lx6/y$a$a;-><init>(Lx6/y;)V

    iput v2, p0, Lx6/y$a;->s:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_30

    return-object v0

    .line 5
    :cond_30
    :goto_30
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lda/o0;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lx6/y$a;->l(Lda/o0;Lk9/d;)Ljava/lang/Object;

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
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lx6/y$a;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lx6/y$a;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lx6/y$a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x6.y.a.C0298a (x6.y$a$a)
.class final Lx6/y$a$a;
.super Ljava/lang/Object;
.source "SessionDatastore.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/y$a;->i(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/c;"
    }
.end annotation


# instance fields
.field final synthetic o:Lx6/y;


# direct methods
.method constructor <init>(Lx6/y;)V
    .registers 2

    iput-object p1, p0, Lx6/y$a$a;->o:Lx6/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lx6/m;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/m;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lx6/y$a$a;->o:Lx6/y;

    invoke-static {p2}, Lx6/y;->e(Lx6/y;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lx6/m;

    invoke-virtual {p0, p1, p2}, Lx6/y$a$a;->a(Lx6/m;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x6.y.b (x6.y$b)
.class final Lx6/y$b;
.super Ljava/lang/Object;
.source "SessionDatastore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final synthetic a:[Lz9/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lz9/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lz9/h;

    .line 1
    new-instance v1, Lt9/u;

    const-class v2, Lx6/y$b;

    const-string v3, "dataStore"

    const-string v4, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lt9/u;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lt9/z;->f(Lt9/t;)Lz9/g;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lx6/y$b;->a:[Lz9/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lx6/y$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lx6/y$b;Landroid/content/Context;)Lh0/f;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lx6/y$b;->b(Landroid/content/Context;)Lh0/f;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/content/Context;)Lh0/f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lh0/f<",
            "Lk0/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lx6/y;->f()Lv9/a;

    move-result-object v0

    sget-object v1, Lx6/y$b;->a:[Lz9/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-interface {v0, p1, v1}, Lv9/a;->a(Ljava/lang/Object;Lz9/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh0/f;

    return-object p1
.end method

###### Class x6.y.c (x6.y$c)
.class final Lx6/y$c;
.super Ljava/lang/Object;
.source "SessionDatastore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final a:Lx6/y$c;

.field private static final b:Lk0/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/d$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/y$c;

    invoke-direct {v0}, Lx6/y$c;-><init>()V

    sput-object v0, Lx6/y$c;->a:Lx6/y$c;

    const-string v0, "session_id"

    .line 1
    invoke-static {v0}, Lk0/f;->f(Ljava/lang/String;)Lk0/d$a;

    move-result-object v0

    sput-object v0, Lx6/y$c;->b:Lk0/d$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lk0/d$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk0/d$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lx6/y$c;->b:Lk0/d$a;

    return-object v0
.end method

###### Class x6.y.d (x6.y$d)
.class final Lx6/y$d;
.super Lm9/k;
.source "SessionDatastore.kt"

# interfaces
.implements Ls9/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/y;-><init>(Landroid/content/Context;Lk9/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/q<",
        "Lkotlinx/coroutines/flow/c<",
        "-",
        "Lk0/d;",
        ">;",
        "Ljava/lang/Throwable;",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.SessionDatastoreImpl$firebaseSessionDataFlow$1"
    f = "SessionDatastore.kt"
    l = {
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field private synthetic t:Ljava/lang/Object;

.field synthetic u:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lx6/y$d;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lk9/d;

    invoke-virtual {p0, p1, p2, p3}, Lx6/y$d;->l(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lx6/y$d;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_39

    .line 2
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_17
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lx6/y$d;->t:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/c;

    iget-object v1, p0, Lx6/y$d;->u:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    const-string v3, "FirebaseSessionsRepo"

    const-string v4, "Error reading stored session data."

    .line 4
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-static {}, Lk0/e;->a()Lk0/d;

    move-result-object v1

    const/4 v3, 0x0

    iput-object v3, p0, Lx6/y$d;->t:Ljava/lang/Object;

    iput v2, p0, Lx6/y$d;->s:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/c;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    return-object v0

    .line 6
    :cond_39
    :goto_39
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public final l(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;Lk9/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c<",
            "-",
            "Lk0/d;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lx6/y$d;

    invoke-direct {v0, p3}, Lx6/y$d;-><init>(Lk9/d;)V

    iput-object p1, v0, Lx6/y$d;->t:Ljava/lang/Object;

    iput-object p2, v0, Lx6/y$d;->u:Ljava/lang/Object;

    sget-object p1, Lh9/t;->a:Lh9/t;

    invoke-virtual {v0, p1}, Lx6/y$d;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x6.y.e (x6.y$e)
.class public final Lx6/y$e;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/y;-><init>(Landroid/content/Context;Lk9/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/b<",
        "Lx6/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lkotlinx/coroutines/flow/b;

.field final synthetic p:Lx6/y;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/b;Lx6/y;)V
    .registers 3

    iput-object p1, p0, Lx6/y$e;->o:Lkotlinx/coroutines/flow/b;

    iput-object p2, p0, Lx6/y$e;->p:Lx6/y;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lx6/y$e;->o:Lkotlinx/coroutines/flow/b;

    new-instance v1, Lx6/y$e$a;

    iget-object v2, p0, Lx6/y$e;->p:Lx6/y;

    invoke-direct {v1, p1, v2}, Lx6/y$e$a;-><init>(Lkotlinx/coroutines/flow/c;Lx6/y;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_14

    return-object p1

    .line 2
    :cond_14
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class x6.y.e.a (x6.y$e$a)
.class public final Lx6/y$e$a;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/y$e;->a(Lkotlinx/coroutines/flow/c;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/c;"
    }
.end annotation


# instance fields
.field final synthetic o:Lkotlinx/coroutines/flow/c;

.field final synthetic p:Lx6/y;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/c;Lx6/y;)V
    .registers 3

    iput-object p1, p0, Lx6/y$e$a;->o:Lkotlinx/coroutines/flow/c;

    iput-object p2, p0, Lx6/y$e$a;->p:Lx6/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 7

    instance-of v0, p2, Lx6/y$e$a$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lx6/y$e$a$a;

    iget v1, v0, Lx6/y$e$a$a;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lx6/y$e$a$a;->s:I

    goto :goto_18

    :cond_13
    new-instance v0, Lx6/y$e$a$a;

    invoke-direct {v0, p0, p2}, Lx6/y$e$a$a;-><init>(Lx6/y$e$a;Lk9/d;)V

    :goto_18
    iget-object p2, v0, Lx6/y$e$a$a;->r:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lx6/y$e$a$a;->s:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    .line 1
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_47

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_31
    invoke-static {p2}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lx6/y$e$a;->o:Lkotlinx/coroutines/flow/c;

    .line 4
    check-cast p1, Lk0/d;

    .line 5
    iget-object v2, p0, Lx6/y$e$a;->p:Lx6/y;

    invoke-static {v2, p1}, Lx6/y;->h(Lx6/y;Lk0/d;)Lx6/m;

    move-result-object p1

    iput v3, v0, Lx6/y$e$a$a;->s:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/c;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_47

    return-object v1

    :cond_47
    :goto_47
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class x6.y.e.a.C0299a (x6.y$e$a$a)
.class public final Lx6/y$e$a$a;
.super Lm9/d;
.source "Emitters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/y$e$a;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2"
    f = "SessionDatastore.kt"
    l = {
        0xe0
    }
    m = "emit"
.end annotation


# instance fields
.field synthetic r:Ljava/lang/Object;

.field s:I

.field final synthetic t:Lx6/y$e$a;


# direct methods
.method public constructor <init>(Lx6/y$e$a;Lk9/d;)V
    .registers 3

    iput-object p1, p0, Lx6/y$e$a$a;->t:Lx6/y$e$a;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lx6/y$e$a$a;->r:Ljava/lang/Object;

    iget p1, p0, Lx6/y$e$a$a;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx6/y$e$a$a;->s:I

    iget-object p1, p0, Lx6/y$e$a$a;->t:Lx6/y$e$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lx6/y$e$a;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x6.y.f (x6.y$f)
.class final Lx6/y$f;
.super Lm9/k;
.source "SessionDatastore.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/y;->b(Ljava/lang/String;)V
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
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1"
    f = "SessionDatastore.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field final synthetic t:Lx6/y;

.field final synthetic u:Ljava/lang/String;


# direct methods
.method constructor <init>(Lx6/y;Ljava/lang/String;Lk9/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/y;",
            "Ljava/lang/String;",
            "Lk9/d<",
            "-",
            "Lx6/y$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx6/y$f;->t:Lx6/y;

    iput-object p2, p0, Lx6/y$f;->u:Ljava/lang/String;

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

    new-instance p1, Lx6/y$f;

    iget-object v0, p0, Lx6/y$f;->t:Lx6/y;

    iget-object v1, p0, Lx6/y$f;->u:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lx6/y$f;-><init>(Lx6/y;Ljava/lang/String;Lk9/d;)V

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lx6/y$f;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_39

    .line 2
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_17
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lx6/y;->c()Lx6/y$b;

    move-result-object p1

    iget-object v1, p0, Lx6/y$f;->t:Lx6/y;

    invoke-static {v1}, Lx6/y;->d(Lx6/y;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lx6/y$b;->a(Lx6/y$b;Landroid/content/Context;)Lh0/f;

    move-result-object p1

    new-instance v1, Lx6/y$f$a;

    iget-object v3, p0, Lx6/y$f;->u:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lx6/y$f$a;-><init>(Ljava/lang/String;Lk9/d;)V

    iput v2, p0, Lx6/y$f;->s:I

    invoke-static {p1, v1, p0}, Lk0/g;->a(Lh0/f;Ls9/p;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    return-object v0

    .line 5
    :cond_39
    :goto_39
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lda/o0;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lx6/y$f;->l(Lda/o0;Lk9/d;)Ljava/lang/Object;

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
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lx6/y$f;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lx6/y$f;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lx6/y$f;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x6.y.f.a (x6.y$f$a)
.class final Lx6/y$f$a;
.super Lm9/k;
.source "SessionDatastore.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/y$f;->i(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lk0/a;",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1$1"
    f = "SessionDatastore.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field synthetic t:Ljava/lang/Object;

.field final synthetic u:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk9/d<",
            "-",
            "Lx6/y$f$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx6/y$f$a;->u:Ljava/lang/String;

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

    new-instance v0, Lx6/y$f$a;

    iget-object v1, p0, Lx6/y$f$a;->u:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lx6/y$f$a;-><init>(Ljava/lang/String;Lk9/d;)V

    iput-object p1, v0, Lx6/y$f$a;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lx6/y$f$a;->s:I

    if-nez v0, :cond_1c

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lx6/y$f$a;->t:Ljava/lang/Object;

    check-cast p1, Lk0/a;

    .line 2
    sget-object v0, Lx6/y$c;->a:Lx6/y$c;

    invoke-virtual {v0}, Lx6/y$c;->a()Lk0/d$a;

    move-result-object v0

    iget-object v1, p0, Lx6/y$f$a;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lk0/a;->i(Lk0/d$a;Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lk0/a;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lx6/y$f$a;->l(Lk0/a;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lk0/a;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/a;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lx6/y$f$a;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lx6/y$f$a;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lx6/y$f$a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
