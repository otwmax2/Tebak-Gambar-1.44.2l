###### Class o1.d (o1.d)
.class public abstract Lo1/d;
.super Ljava/lang/Object;
.source "ConstraintTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field protected final a:Ls1/a;

.field protected final b:Landroid/content/Context;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lm1/a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ConstraintTracker"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo1/d;->f:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ls1/a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo1/d;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo1/d;->d:Ljava/util/Set;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo1/d;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lo1/d;->a:Ls1/a;

    return-void
.end method


# virtual methods
.method public a(Lm1/a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm1/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo1/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lo1/d;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 3
    iget-object v1, p0, Lo1/d;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 4
    invoke-virtual {p0}, Lo1/d;->b()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lo1/d;->e:Ljava/lang/Object;

    .line 5
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v3, Lo1/d;->f:Ljava/lang/String;

    const-string v4, "%s: initial state = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lo1/d;->e:Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 7
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0}, Lo1/d;->e()V

    .line 9
    :cond_40
    iget-object v1, p0, Lo1/d;->e:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lm1/a;->a(Ljava/lang/Object;)V

    .line 10
    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public c(Lm1/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm1/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo1/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lo1/d;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lo1/d;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 3
    invoke-virtual {p0}, Lo1/d;->f()V

    .line 4
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public d(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo1/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lo1/d;->e:Ljava/lang/Object;

    if-eq v1, p1, :cond_29

    if-eqz v1, :cond_10

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_29

    .line 4
    :cond_10
    iput-object p1, p0, Lo1/d;->e:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lo1/d;->d:Ljava/util/Set;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-object v1, p0, Lo1/d;->a:Ls1/a;

    invoke-interface {v1}, Ls1/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lo1/d$a;

    invoke-direct {v2, p0, p1}, Lo1/d$a;-><init>(Lo1/d;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_29
    :goto_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

###### Class o1.d.a (o1.d$a)
.class Lo1/d$a;
.super Ljava/lang/Object;
.source "ConstraintTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo1/d;->d(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/util/List;

.field final synthetic p:Lo1/d;


# direct methods
.method constructor <init>(Lo1/d;Ljava/util/List;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lo1/d$a;->p:Lo1/d;

    iput-object p2, p0, Lo1/d$a;->o:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lo1/d$a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm1/a;

    .line 2
    iget-object v2, p0, Lo1/d$a;->p:Lo1/d;

    iget-object v2, v2, Lo1/d;->e:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lm1/a;->a(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1a
    return-void
.end method
