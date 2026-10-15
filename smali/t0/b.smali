###### Class t0.b (t0.b)
.class public Lt0/b;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/b$a;,
        Lt0/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:I

.field b:Lt0/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt0/b$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field c:Lt0/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt0/b$a<",
            "TD;>;"
        }
    .end annotation
.end field

.field d:Landroid/content/Context;

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lt0/b;->e:Z

    .line 3
    iput-boolean v0, p0, Lt0/b;->f:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lt0/b;->g:Z

    .line 5
    iput-boolean v0, p0, Lt0/b;->h:Z

    .line 6
    iput-boolean v0, p0, Lt0/b;->i:Z

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lt0/b;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lt0/b;->f:Z

    .line 2
    invoke-virtual {p0}, Lt0/b;->j()V

    return-void
.end method

.method public b()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lt0/b;->k()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lt0/b;->i:Z

    return-void
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-static {p1, v0}, Landroidx/core/util/b;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p1, "}"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lt0/b;->c:Lt0/b$a;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p0}, Lt0/b$a;->a(Lt0/b;)V

    :cond_7
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt0/b;->b:Lt0/b$b;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p0, p1}, Lt0/b$b;->a(Lt0/b;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lt0/b;->a:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    .line 2
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lt0/b;->b:Lt0/b$b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3
    iget-boolean p2, p0, Lt0/b;->e:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Lt0/b;->h:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Lt0/b;->i:Z

    if-eqz p2, :cond_44

    .line 4
    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lt0/b;->e:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    .line 5
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lt0/b;->h:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    .line 6
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lt0/b;->i:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 7
    :cond_44
    iget-boolean p2, p0, Lt0/b;->f:Z

    if-nez p2, :cond_4c

    iget-boolean p2, p0, Lt0/b;->g:Z

    if-eqz p2, :cond_63

    .line 8
    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lt0/b;->f:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lt0/b;->g:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_63
    return-void
.end method

.method public h()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lt0/b;->m()V

    return-void
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lt0/b;->f:Z

    return v0
.end method

.method protected j()V
    .registers 1

    return-void
.end method

.method protected k()Z
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public l()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lt0/b;->e:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p0}, Lt0/b;->h()V

    goto :goto_b

    :cond_8
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lt0/b;->h:Z

    :goto_b
    return-void
.end method

.method protected m()V
    .registers 1

    return-void
.end method

.method protected n()V
    .registers 1

    return-void
.end method

.method protected o()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method protected p()V
    .registers 1

    return-void
.end method

.method public q(ILt0/b$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lt0/b$b<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt0/b;->b:Lt0/b$b;

    if-nez v0, :cond_9

    .line 2
    iput-object p2, p0, Lt0/b;->b:Lt0/b$b;

    .line 3
    iput p1, p0, Lt0/b;->a:I

    return-void

    .line 4
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lt0/b;->n()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lt0/b;->g:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lt0/b;->e:Z

    .line 4
    iput-boolean v0, p0, Lt0/b;->f:Z

    .line 5
    iput-boolean v0, p0, Lt0/b;->h:Z

    .line 6
    iput-boolean v0, p0, Lt0/b;->i:Z

    return-void
.end method

.method public s()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lt0/b;->i:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lt0/b;->l()V

    :cond_7
    return-void
.end method

.method public final t()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lt0/b;->e:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lt0/b;->g:Z

    .line 3
    iput-boolean v0, p0, Lt0/b;->f:Z

    .line 4
    invoke-virtual {p0}, Lt0/b;->o()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-static {p0, v0}, Landroidx/core/util/b;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lt0/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lt0/b;->e:Z

    .line 2
    invoke-virtual {p0}, Lt0/b;->p()V

    return-void
.end method

.method public v(Lt0/b$b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/b$b<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt0/b;->b:Lt0/b$b;

    if-eqz v0, :cond_12

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lt0/b;->b:Lt0/b$b;

    return-void

    .line 3
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class t0.b.a (t0.b$a)
.class public interface abstract Lt0/b$a;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lt0/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/b<",
            "TD;>;)V"
        }
    .end annotation
.end method

###### Class t0.b.InterfaceC0251b (t0.b$b)
.class public interface abstract Lt0/b$b;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lt0/b;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/b<",
            "TD;>;TD;)V"
        }
    .end annotation
.end method
