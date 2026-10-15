###### Class ja.z (ja.z)
.class final Lja/z;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lja/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/z$b;
    }
.end annotation


# instance fields
.field final o:Lja/x;

.field final p:Lna/j;

.field final q:Lokio/a;

.field private r:Lja/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final s:Lja/a0;

.field final t:Z

.field private u:Z


# direct methods
.method private constructor <init>(Lja/x;Lja/a0;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lja/z;->o:Lja/x;

    .line 3
    iput-object p2, p0, Lja/z;->s:Lja/a0;

    .line 4
    iput-boolean p3, p0, Lja/z;->t:Z

    .line 5
    new-instance p2, Lna/j;

    invoke-direct {p2, p1, p3}, Lna/j;-><init>(Lja/x;Z)V

    iput-object p2, p0, Lja/z;->p:Lna/j;

    .line 6
    new-instance p2, Lja/z$a;

    invoke-direct {p2, p0}, Lja/z$a;-><init>(Lja/z;)V

    iput-object p2, p0, Lja/z;->q:Lokio/a;

    .line 7
    invoke-virtual {p1}, Lja/x;->d()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lokio/v;->g(JLjava/util/concurrent/TimeUnit;)Lokio/v;

    return-void
.end method

.method static synthetic a(Lja/z;)Lja/p;
    .registers 1

    .line 1
    iget-object p0, p0, Lja/z;->r:Lja/p;

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 1
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lqa/g;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lja/z;->p:Lna/j;

    invoke-virtual {v1, v0}, Lna/j;->j(Ljava/lang/Object;)V

    return-void
.end method

.method static g(Lja/x;Lja/a0;Z)Lja/z;
    .registers 4

    .line 1
    new-instance v0, Lja/z;

    invoke-direct {v0, p0, p1, p2}, Lja/z;-><init>(Lja/x;Lja/a0;Z)V

    .line 2
    invoke-virtual {p0}, Lja/x;->m()Lja/p$c;

    move-result-object p0

    invoke-interface {p0, v0}, Lja/p$c;->a(Lja/e;)Lja/p;

    move-result-object p0

    iput-object p0, v0, Lja/z;->r:Lja/p;

    return-object v0
.end method


# virtual methods
.method public L()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lja/z;->p:Lna/j;

    invoke-virtual {v0}, Lna/j;->d()Z

    move-result v0

    return v0
.end method

.method public M1(Lja/f;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lja/z;->u:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lja/z;->u:Z

    .line 4
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_28

    .line 5
    invoke-direct {p0}, Lja/z;->b()V

    .line 6
    iget-object v0, p0, Lja/z;->r:Lja/p;

    invoke-virtual {v0, p0}, Lja/p;->c(Lja/e;)V

    .line 7
    iget-object v0, p0, Lja/z;->o:Lja/x;

    invoke-virtual {v0}, Lja/x;->k()Lja/n;

    move-result-object v0

    new-instance v1, Lja/z$b;

    invoke-direct {v1, p0, p1}, Lja/z$b;-><init>(Lja/z;Lja/f;)V

    invoke-virtual {v0, v1}, Lja/n;->a(Lja/z$b;)V

    return-void

    .line 8
    :cond_20
    :try_start_20
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_28
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lja/z;->p:Lna/j;

    invoke-virtual {v0}, Lna/j;->a()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lja/z;->d()Lja/z;

    move-result-object v0

    return-object v0
.end method

.method public d()Lja/z;
    .registers 4

    .line 1
    iget-object v0, p0, Lja/z;->o:Lja/x;

    iget-object v1, p0, Lja/z;->s:Lja/a0;

    iget-boolean v2, p0, Lja/z;->t:Z

    invoke-static {v0, v1, v2}, Lja/z;->g(Lja/x;Lja/a0;Z)Lja/z;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lja/c0;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lja/z;->u:Z

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lja/z;->u:Z

    .line 4
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_56

    .line 5
    invoke-direct {p0}, Lja/z;->b()V

    .line 6
    iget-object v0, p0, Lja/z;->q:Lokio/a;

    invoke-virtual {v0}, Lokio/a;->k()V

    .line 7
    iget-object v0, p0, Lja/z;->r:Lja/p;

    invoke-virtual {v0, p0}, Lja/p;->c(Lja/e;)V

    .line 8
    :try_start_16
    iget-object v0, p0, Lja/z;->o:Lja/x;

    invoke-virtual {v0}, Lja/x;->k()Lja/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lja/n;->b(Lja/z;)V

    .line 9
    invoke-virtual {p0}, Lja/z;->f()Lja/c0;

    move-result-object v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_39
    .catchall {:try_start_16 .. :try_end_23} :catchall_37

    if-eqz v0, :cond_2f

    .line 10
    iget-object v1, p0, Lja/z;->o:Lja/x;

    invoke-virtual {v1}, Lja/x;->k()Lja/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lja/n;->e(Lja/z;)V

    return-object v0

    .line 11
    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_39
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    goto :goto_44

    :catch_39
    move-exception v0

    .line 12
    :try_start_3a
    invoke-virtual {p0, v0}, Lja/z;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lja/z;->r:Lja/p;

    invoke-virtual {v1, p0, v0}, Lja/p;->b(Lja/e;Ljava/io/IOException;)V

    .line 14
    throw v0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_37

    .line 15
    :goto_44
    iget-object v1, p0, Lja/z;->o:Lja/x;

    invoke-virtual {v1}, Lja/x;->k()Lja/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lja/n;->e(Lja/z;)V

    throw v0

    .line 16
    :cond_4e
    :try_start_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_56
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_56

    throw v0
.end method

.method f()Lja/c0;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lja/z;->o:Lja/x;

    invoke-virtual {v0}, Lja/x;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lja/z;->p:Lna/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lna/a;

    iget-object v2, p0, Lja/z;->o:Lja/x;

    invoke-virtual {v2}, Lja/x;->j()Lja/m;

    move-result-object v2

    invoke-direct {v0, v2}, Lna/a;-><init>(Lja/m;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lla/a;

    iget-object v2, p0, Lja/z;->o:Lja/x;

    invoke-virtual {v2}, Lja/x;->r()Lla/d;

    move-result-object v2

    invoke-direct {v0, v2}, Lla/a;-><init>(Lla/d;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lma/a;

    iget-object v2, p0, Lja/z;->o:Lja/x;

    invoke-direct {v0, v2}, Lma/a;-><init>(Lja/x;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean v0, p0, Lja/z;->t:Z

    if-nez v0, :cond_46

    .line 8
    iget-object v0, p0, Lja/z;->o:Lja/x;

    invoke-virtual {v0}, Lja/x;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_46
    new-instance v0, Lna/b;

    iget-boolean v2, p0, Lja/z;->t:Z

    invoke-direct {v0, v2}, Lna/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v12, Lna/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lja/z;->s:Lja/a0;

    iget-object v8, p0, Lja/z;->r:Lja/p;

    iget-object v0, p0, Lja/z;->o:Lja/x;

    .line 11
    invoke-virtual {v0}, Lja/x;->g()I

    move-result v9

    iget-object v0, p0, Lja/z;->o:Lja/x;

    .line 12
    invoke-virtual {v0}, Lja/x;->A()I

    move-result v10

    iget-object v0, p0, Lja/z;->o:Lja/x;

    invoke-virtual {v0}, Lja/x;->E()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lna/g;-><init>(Ljava/util/List;Lma/g;Lna/c;Lma/c;ILja/a0;Lja/e;Lja/p;III)V

    .line 13
    iget-object v0, p0, Lja/z;->s:Lja/a0;

    invoke-interface {v12, v0}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lja/z;->p:Lna/j;

    invoke-virtual {v1}, Lna/j;->d()Z

    move-result v1

    if-nez v1, :cond_80

    return-object v0

    .line 15
    :cond_80
    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    .line 16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/z;->s:Lja/a0;

    invoke-virtual {v0}, Lja/a0;->h()Lja/t;

    move-result-object v0

    invoke-virtual {v0}, Lja/t;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method i(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lja/z;->q:Lokio/a;

    invoke-virtual {v0}, Lokio/a;->n()Z

    move-result v0

    if-nez v0, :cond_9

    return-object p1

    .line 2
    :cond_9
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_15
    return-object v0
.end method

.method j()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lja/z;->L()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "canceled "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v1, p0, Lja/z;->t:Z

    if-eqz v1, :cond_1a

    const-string v1, "web socket"

    goto :goto_1c

    :cond_1a
    const-string v1, "call"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lja/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ja.z.a (ja.z$a)
.class Lja/z$a;
.super Lokio/a;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/z;-><init>(Lja/x;Lja/a0;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lja/z;


# direct methods
.method constructor <init>(Lja/z;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lja/z$a;->k:Lja/z;

    invoke-direct {p0}, Lokio/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected t()V
    .registers 2

    .line 1
    iget-object v0, p0, Lja/z$a;->k:Lja/z;

    invoke-virtual {v0}, Lja/z;->cancel()V

    return-void
.end method

###### Class ja.z.b (ja.z$b)
.class final Lja/z$b;
.super Lka/b;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final p:Lja/f;

.field final synthetic q:Lja/z;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lja/z;

    return-void
.end method

.method constructor <init>(Lja/z;Lja/f;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lja/z$b;->q:Lja/z;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lja/z;->h()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lka/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lja/z$b;->p:Lja/f;

    return-void
.end method


# virtual methods
.method protected k()V
    .registers 6

    .line 1
    iget-object v0, p0, Lja/z$b;->q:Lja/z;

    iget-object v0, v0, Lja/z;->q:Lokio/a;

    invoke-virtual {v0}, Lokio/a;->k()V

    const/4 v0, 0x0

    .line 2
    :try_start_8
    iget-object v1, p0, Lja/z$b;->q:Lja/z;

    invoke-virtual {v1}, Lja/z;->f()Lja/c0;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_4e
    .catchall {:try_start_8 .. :try_end_e} :catchall_26

    const/4 v1, 0x1

    .line 3
    :try_start_f
    iget-object v2, p0, Lja/z$b;->p:Lja/f;

    iget-object v3, p0, Lja/z$b;->q:Lja/z;

    invoke-interface {v2, v3, v0}, Lja/f;->onResponse(Lja/e;Lja/c0;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_24
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    .line 4
    :goto_16
    iget-object v0, p0, Lja/z$b;->q:Lja/z;

    iget-object v0, v0, Lja/z;->o:Lja/x;

    invoke-virtual {v0}, Lja/x;->k()Lja/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lja/n;->d(Lja/z$b;)V

    goto :goto_8c

    :catchall_22
    move-exception v0

    goto :goto_29

    :catch_24
    move-exception v0

    goto :goto_51

    :catchall_26
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    .line 5
    :goto_29
    :try_start_29
    iget-object v2, p0, Lja/z$b;->q:Lja/z;

    invoke-virtual {v2}, Lja/z;->cancel()V

    if-nez v1, :cond_4d

    .line 6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lja/z$b;->p:Lja/f;

    iget-object v3, p0, Lja/z$b;->q:Lja/z;

    invoke-interface {v2, v3, v1}, Lja/f;->onFailure(Lja/e;Ljava/io/IOException;)V

    .line 8
    :cond_4d
    throw v0

    :catch_4e
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    .line 9
    :goto_51
    iget-object v2, p0, Lja/z$b;->q:Lja/z;

    invoke-virtual {v2, v0}, Lja/z;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v1, :cond_79

    .line 10
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lja/z$b;->q:Lja/z;

    invoke-virtual {v4}, Lja/z;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lqa/g;->s(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 11
    :cond_79
    iget-object v1, p0, Lja/z$b;->q:Lja/z;

    invoke-static {v1}, Lja/z;->a(Lja/z;)Lja/p;

    move-result-object v1

    iget-object v2, p0, Lja/z$b;->q:Lja/z;

    invoke-virtual {v1, v2, v0}, Lja/p;->b(Lja/e;Ljava/io/IOException;)V

    .line 12
    iget-object v1, p0, Lja/z$b;->p:Lja/f;

    iget-object v2, p0, Lja/z$b;->q:Lja/z;

    invoke-interface {v1, v2, v0}, Lja/f;->onFailure(Lja/e;Ljava/io/IOException;)V
    :try_end_8b
    .catchall {:try_start_29 .. :try_end_8b} :catchall_8d

    goto :goto_16

    :goto_8c
    return-void

    :catchall_8d
    move-exception v0

    .line 13
    iget-object v1, p0, Lja/z$b;->q:Lja/z;

    iget-object v1, v1, Lja/z;->o:Lja/x;

    invoke-virtual {v1}, Lja/x;->k()Lja/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lja/n;->d(Lja/z$b;)V

    goto :goto_9b

    :goto_9a
    throw v0

    :goto_9b
    goto :goto_9a
.end method

.method l(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_3} :catch_6
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_2e

    :catchall_4
    move-exception p1

    goto :goto_2f

    :catch_6
    move-exception p1

    .line 2
    :try_start_7
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    iget-object p1, p0, Lja/z$b;->q:Lja/z;

    invoke-static {p1}, Lja/z;->a(Lja/z;)Lja/p;

    move-result-object p1

    iget-object v1, p0, Lja/z$b;->q:Lja/z;

    invoke-virtual {p1, v1, v0}, Lja/p;->b(Lja/e;Ljava/io/IOException;)V

    .line 5
    iget-object p1, p0, Lja/z$b;->p:Lja/f;

    iget-object v1, p0, Lja/z$b;->q:Lja/z;

    invoke-interface {p1, v1, v0}, Lja/f;->onFailure(Lja/e;Ljava/io/IOException;)V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_4

    .line 6
    iget-object p1, p0, Lja/z$b;->q:Lja/z;

    iget-object p1, p1, Lja/z;->o:Lja/x;

    invoke-virtual {p1}, Lja/x;->k()Lja/n;

    move-result-object p1

    invoke-virtual {p1, p0}, Lja/n;->d(Lja/z$b;)V

    :goto_2e
    return-void

    :goto_2f
    iget-object v0, p0, Lja/z$b;->q:Lja/z;

    iget-object v0, v0, Lja/z;->o:Lja/x;

    invoke-virtual {v0}, Lja/x;->k()Lja/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lja/n;->d(Lja/z$b;)V

    throw p1
.end method

.method m()Lja/z;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/z$b;->q:Lja/z;

    return-object v0
.end method

.method n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/z$b;->q:Lja/z;

    iget-object v0, v0, Lja/z;->s:Lja/a0;

    invoke-virtual {v0}, Lja/a0;->h()Lja/t;

    move-result-object v0

    invoke-virtual {v0}, Lja/t;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
