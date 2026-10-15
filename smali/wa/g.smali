###### Class wa.g (wa.g)
.class final Lwa/g;
.super Lwa/c$a;
.source "ExecutorCallAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa/g$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lwa/c$a;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/g;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lwa/m;)Lwa/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lwa/m;",
            ")",
            "Lwa/c<",
            "**>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lwa/c$a;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lwa/b;

    if-eq p2, p3, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_a
    invoke-static {p1}, Lwa/o;->f(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 3
    new-instance p2, Lwa/g$a;

    invoke-direct {p2, p0, p1}, Lwa/g$a;-><init>(Lwa/g;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

###### Class wa.g.a (wa.g$a)
.class Lwa/g$a;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lwa/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/g;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lwa/m;)Lwa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/c<",
        "Ljava/lang/Object;",
        "Lwa/b<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Lwa/g;


# direct methods
.method constructor <init>(Lwa/g;Ljava/lang/reflect/Type;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lwa/g$a;->b:Lwa/g;

    iput-object p2, p0, Lwa/g$a;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/g$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic b(Lwa/b;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lwa/g$a;->c(Lwa/b;)Lwa/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Lwa/b;)Lwa/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Ljava/lang/Object;",
            ">;)",
            "Lwa/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lwa/g$b;

    iget-object v1, p0, Lwa/g$a;->b:Lwa/g;

    iget-object v1, v1, Lwa/g;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Lwa/g$b;-><init>(Ljava/util/concurrent/Executor;Lwa/b;)V

    return-object v0
.end method

###### Class wa.g.b (wa.g$b)
.class final Lwa/g$b;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lwa/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwa/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final o:Ljava/util/concurrent/Executor;

.field final p:Lwa/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwa/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lwa/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lwa/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/g$b;->o:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lwa/g$b;->p:Lwa/b;

    return-void
.end method


# virtual methods
.method public L()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/g$b;->p:Lwa/b;

    invoke-interface {v0}, Lwa/b;->L()Z

    move-result v0

    return v0
.end method

.method public c2()Lwa/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwa/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lwa/g$b;

    iget-object v1, p0, Lwa/g$b;->o:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lwa/g$b;->p:Lwa/b;

    invoke-interface {v2}, Lwa/b;->c2()Lwa/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lwa/g$b;-><init>(Ljava/util/concurrent/Executor;Lwa/b;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lwa/g$b;->c2()Lwa/b;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lwa/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwa/l<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/g$b;->p:Lwa/b;

    invoke-interface {v0}, Lwa/b;->execute()Lwa/l;

    move-result-object v0

    return-object v0
.end method

.method public v3(Lwa/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/d<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Lwa/o;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lwa/g$b;->p:Lwa/b;

    new-instance v1, Lwa/g$b$a;

    invoke-direct {v1, p0, p1}, Lwa/g$b$a;-><init>(Lwa/g$b;Lwa/d;)V

    invoke-interface {v0, v1}, Lwa/b;->v3(Lwa/d;)V

    return-void
.end method

###### Class wa.g.b.a (wa.g$b$a)
.class Lwa/g$b$a;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/g$b;->v3(Lwa/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lwa/d;

.field final synthetic b:Lwa/g$b;


# direct methods
.method constructor <init>(Lwa/g$b;Lwa/d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lwa/g$b$a;->b:Lwa/g$b;

    iput-object p2, p0, Lwa/g$b$a;->a:Lwa/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "TT;>;",
            "Lwa/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lwa/g$b$a;->b:Lwa/g$b;

    iget-object p1, p1, Lwa/g$b;->o:Ljava/util/concurrent/Executor;

    new-instance v0, Lwa/g$b$a$a;

    invoke-direct {v0, p0, p2}, Lwa/g$b$a$a;-><init>(Lwa/g$b$a;Lwa/l;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lwa/g$b$a;->b:Lwa/g$b;

    iget-object p1, p1, Lwa/g$b;->o:Ljava/util/concurrent/Executor;

    new-instance v0, Lwa/g$b$a$b;

    invoke-direct {v0, p0, p2}, Lwa/g$b$a$b;-><init>(Lwa/g$b$a;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class wa.g.b.a.RunnableC0289a (wa.g$b$a$a)
.class Lwa/g$b$a$a;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/g$b$a;->a(Lwa/b;Lwa/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lwa/l;

.field final synthetic p:Lwa/g$b$a;


# direct methods
.method constructor <init>(Lwa/g$b$a;Lwa/l;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lwa/g$b$a$a;->p:Lwa/g$b$a;

    iput-object p2, p0, Lwa/g$b$a$a;->o:Lwa/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lwa/g$b$a$a;->p:Lwa/g$b$a;

    iget-object v0, v0, Lwa/g$b$a;->b:Lwa/g$b;

    iget-object v0, v0, Lwa/g$b;->p:Lwa/b;

    invoke-interface {v0}, Lwa/b;->L()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lwa/g$b$a$a;->p:Lwa/g$b$a;

    iget-object v1, v0, Lwa/g$b$a;->a:Lwa/d;

    iget-object v0, v0, Lwa/g$b$a;->b:Lwa/g$b;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lwa/d;->b(Lwa/b;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 3
    :cond_1d
    iget-object v0, p0, Lwa/g$b$a$a;->p:Lwa/g$b$a;

    iget-object v1, v0, Lwa/g$b$a;->a:Lwa/d;

    iget-object v0, v0, Lwa/g$b$a;->b:Lwa/g$b;

    iget-object v2, p0, Lwa/g$b$a$a;->o:Lwa/l;

    invoke-interface {v1, v0, v2}, Lwa/d;->a(Lwa/b;Lwa/l;)V

    :goto_28
    return-void
.end method

###### Class wa.g.b.a.RunnableC0290b (wa.g$b$a$b)
.class Lwa/g$b$a$b;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/g$b$a;->b(Lwa/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/Throwable;

.field final synthetic p:Lwa/g$b$a;


# direct methods
.method constructor <init>(Lwa/g$b$a;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lwa/g$b$a$b;->p:Lwa/g$b$a;

    iput-object p2, p0, Lwa/g$b$a$b;->o:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lwa/g$b$a$b;->p:Lwa/g$b$a;

    iget-object v1, v0, Lwa/g$b$a;->a:Lwa/d;

    iget-object v0, v0, Lwa/g$b$a;->b:Lwa/g$b;

    iget-object v2, p0, Lwa/g$b$a$b;->o:Ljava/lang/Throwable;

    invoke-interface {v1, v0, v2}, Lwa/d;->b(Lwa/b;Ljava/lang/Throwable;)V

    return-void
.end method
