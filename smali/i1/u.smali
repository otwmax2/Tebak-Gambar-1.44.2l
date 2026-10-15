###### Class i1.u (i1.u)
.class public abstract Li1/u;
.super Ljava/lang/Object;
.source "WorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/u$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Lq1/p;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/UUID;Lq1/p;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lq1/p;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li1/u;->a:Ljava/util/UUID;

    .line 3
    iput-object p2, p0, Li1/u;->b:Lq1/p;

    .line 4
    iput-object p3, p0, Li1/u;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Li1/u;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Set;
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
    iget-object v0, p0, Li1/u;->c:Ljava/util/Set;

    return-object v0
.end method

.method public c()Lq1/p;
    .registers 2

    .line 1
    iget-object v0, p0, Li1/u;->b:Lq1/p;

    return-object v0
.end method

###### Class i1.u.a (i1.u$a)
.class public abstract Li1/u$a;
.super Ljava/lang/Object;
.source "WorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Li1/u$a<",
        "**>;W:",
        "Li1/u;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/util/UUID;

.field c:Lq1/p;

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li1/u$a;->a:Z

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Li1/u$a;->d:Ljava/util/Set;

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Li1/u$a;->b:Ljava/util/UUID;

    .line 5
    iput-object p1, p0, Li1/u$a;->e:Ljava/lang/Class;

    .line 6
    new-instance v0, Lq1/p;

    iget-object v1, p0, Li1/u$a;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lq1/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Li1/u$a;->c:Lq1/p;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li1/u$a;->a(Ljava/lang/String;)Li1/u$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Li1/u$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li1/u$a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Li1/u$a;->d()Li1/u$a;

    move-result-object p1

    return-object p1
.end method

.method public final b()Li1/u;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li1/u$a;->c()Li1/u;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li1/u$a;->c:Lq1/p;

    iget-object v1, v1, Lq1/p;->j:Li1/b;

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_14

    .line 4
    invoke-virtual {v1}, Li1/b;->e()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 5
    :cond_14
    invoke-virtual {v1}, Li1/b;->f()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 6
    invoke-virtual {v1}, Li1/b;->g()Z

    move-result v3

    if-nez v3, :cond_2d

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2b

    .line 7
    invoke-virtual {v1}, Li1/b;->h()Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    .line 8
    :goto_2e
    iget-object v2, p0, Li1/u$a;->c:Lq1/p;

    iget-boolean v2, v2, Lq1/p;->q:Z

    if-eqz v2, :cond_3f

    if-nez v1, :cond_37

    goto :goto_3f

    .line 9
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3f
    :goto_3f
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Li1/u$a;->b:Ljava/util/UUID;

    .line 11
    new-instance v1, Lq1/p;

    iget-object v2, p0, Li1/u$a;->c:Lq1/p;

    invoke-direct {v1, v2}, Lq1/p;-><init>(Lq1/p;)V

    iput-object v1, p0, Li1/u$a;->c:Lq1/p;

    .line 12
    iget-object v2, p0, Li1/u$a;->b:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lq1/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method abstract c()Li1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method abstract d()Li1/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final e(Li1/b;)Li1/u$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/b;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li1/u$a;->c:Lq1/p;

    iput-object p1, v0, Lq1/p;->j:Li1/b;

    .line 2
    invoke-virtual {p0}, Li1/u$a;->d()Li1/u$a;

    move-result-object p1

    return-object p1
.end method

.method public f(JLjava/util/concurrent/TimeUnit;)Li1/u$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li1/u$a;->c:Lq1/p;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Lq1/p;->g:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p1

    iget-object p1, p0, Li1/u$a;->c:Lq1/p;

    iget-wide p1, p1, Lq1/p;->g:J

    cmp-long p3, v0, p1

    if-lez p3, :cond_1f

    .line 3
    invoke-virtual {p0}, Li1/u$a;->d()Li1/u$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Landroidx/work/b;)Li1/u$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/b;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li1/u$a;->c:Lq1/p;

    iput-object p1, v0, Lq1/p;->e:Landroidx/work/b;

    .line 2
    invoke-virtual {p0}, Li1/u$a;->d()Li1/u$a;

    move-result-object p1

    return-object p1
.end method
