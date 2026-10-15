###### Class wa.h (wa.h)
.class final Lwa/h;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lwa/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa/h$b;,
        Lwa/h$c;
    }
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
.field private final o:Lwa/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwa/n<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private final p:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile q:Z

.field private r:Lja/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private s:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private t:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lwa/n;[Ljava/lang/Object;)V
    .registers 3
    .param p2    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/n<",
            "TT;*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/h;->o:Lwa/n;

    .line 3
    iput-object p2, p0, Lwa/h;->p:[Ljava/lang/Object;

    return-void
.end method

.method private b()Lja/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/h;->o:Lwa/n;

    iget-object v1, p0, Lwa/h;->p:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lwa/n;->d([Ljava/lang/Object;)Lja/e;

    move-result-object v0

    const-string v1, "Call.Factory returned null."

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public L()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lwa/h;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 2
    :cond_6
    monitor-enter p0

    .line 3
    :try_start_7
    iget-object v0, p0, Lwa/h;->r:Lja/e;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lja/e;->L()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit p0

    return v1

    :catchall_15
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public a()Lwa/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwa/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lwa/h;

    iget-object v1, p0, Lwa/h;->o:Lwa/n;

    iget-object v2, p0, Lwa/h;->p:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lwa/h;-><init>(Lwa/n;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic c2()Lwa/b;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lwa/h;->a()Lwa/h;

    move-result-object v0

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
    invoke-virtual {p0}, Lwa/h;->a()Lwa/h;

    move-result-object v0

    return-object v0
.end method

.method d(Lja/c0;)Lwa/l;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/c0;",
            ")",
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
    invoke-virtual {p1}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lja/c0;->k()Lja/c0$a;

    move-result-object p1

    new-instance v1, Lwa/h$c;

    .line 3
    invoke-virtual {v0}, Lja/d0;->contentType()Lja/v;

    move-result-object v2

    invoke-virtual {v0}, Lja/d0;->contentLength()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lwa/h$c;-><init>(Lja/v;J)V

    invoke-virtual {p1, v1}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lja/c0;->d()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_51

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_2a

    goto :goto_51

    :cond_2a
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_48

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_33

    goto :goto_48

    .line 6
    :cond_33
    new-instance v1, Lwa/h$b;

    invoke-direct {v1, v0}, Lwa/h$b;-><init>(Lja/d0;)V

    .line 7
    :try_start_38
    iget-object v0, p0, Lwa/h;->o:Lwa/n;

    invoke-virtual {v0, v1}, Lwa/n;->e(Lja/d0;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-static {v0, p1}, Lwa/l;->h(Ljava/lang/Object;Lja/c0;)Lwa/l;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_42} :catch_43

    return-object p1

    :catch_43
    move-exception p1

    .line 9
    invoke-virtual {v1}, Lwa/h$b;->c()V

    .line 10
    throw p1

    .line 11
    :cond_48
    :goto_48
    invoke-virtual {v0}, Lja/d0;->close()V

    const/4 v0, 0x0

    .line 12
    invoke-static {v0, p1}, Lwa/l;->h(Ljava/lang/Object;Lja/c0;)Lwa/l;

    move-result-object p1

    return-object p1

    .line 13
    :cond_51
    :goto_51
    :try_start_51
    invoke-static {v0}, Lwa/o;->a(Lja/d0;)Lja/d0;

    move-result-object v1

    .line 14
    invoke-static {v1, p1}, Lwa/l;->c(Lja/d0;Lja/c0;)Lwa/l;

    move-result-object p1
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_5d

    .line 15
    invoke-virtual {v0}, Lja/d0;->close()V

    return-object p1

    :catchall_5d
    move-exception p1

    invoke-virtual {v0}, Lja/d0;->close()V

    throw p1
.end method

.method public execute()Lwa/l;
    .registers 3
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
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lwa/h;->t:Z

    if-nez v0, :cond_44

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lwa/h;->t:Z

    .line 4
    iget-object v0, p0, Lwa/h;->s:Ljava/lang/Throwable;

    if-eqz v0, :cond_1d

    .line 5
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1a

    .line 6
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_17

    .line 7
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 8
    :cond_17
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 9
    :cond_1a
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 10
    :cond_1d
    iget-object v0, p0, Lwa/h;->r:Lja/e;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_4c

    if-nez v0, :cond_33

    .line 11
    :try_start_21
    invoke-direct {p0}, Lwa/h;->b()Lja/e;

    move-result-object v0

    iput-object v0, p0, Lwa/h;->r:Lja/e;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_27} :catch_2a
    .catch Ljava/lang/Error; {:try_start_21 .. :try_end_27} :catch_28
    .catchall {:try_start_21 .. :try_end_27} :catchall_4c

    goto :goto_33

    :catch_28
    move-exception v0

    goto :goto_2d

    :catch_2a
    move-exception v0

    goto :goto_2d

    :catch_2c
    move-exception v0

    .line 12
    :goto_2d
    :try_start_2d
    invoke-static {v0}, Lwa/o;->p(Ljava/lang/Throwable;)V

    .line 13
    iput-object v0, p0, Lwa/h;->s:Ljava/lang/Throwable;

    .line 14
    throw v0

    .line 15
    :cond_33
    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_4c

    .line 16
    iget-boolean v1, p0, Lwa/h;->q:Z

    if-eqz v1, :cond_3b

    .line 17
    invoke-interface {v0}, Lja/e;->cancel()V

    .line 18
    :cond_3b
    invoke-interface {v0}, Lja/e;->execute()Lja/c0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwa/h;->d(Lja/c0;)Lwa/l;

    move-result-object v0

    return-object v0

    .line 19
    :cond_44
    :try_start_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4c
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public v3(Lwa/d;)V
    .registers 5
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
    monitor-enter p0

    .line 3
    :try_start_6
    iget-boolean v0, p0, Lwa/h;->t:Z

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lwa/h;->t:Z

    .line 5
    iget-object v0, p0, Lwa/h;->r:Lja/e;

    .line 6
    iget-object v1, p0, Lwa/h;->s:Ljava/lang/Throwable;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_42

    if-nez v0, :cond_23

    if-nez v1, :cond_23

    .line 7
    :try_start_15
    invoke-direct {p0}, Lwa/h;->b()Lja/e;

    move-result-object v2

    iput-object v2, p0, Lwa/h;->r:Lja/e;
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1d

    move-object v0, v2

    goto :goto_23

    :catchall_1d
    move-exception v1

    .line 8
    :try_start_1e
    invoke-static {v1}, Lwa/o;->p(Ljava/lang/Throwable;)V

    .line 9
    iput-object v1, p0, Lwa/h;->s:Ljava/lang/Throwable;

    .line 10
    :cond_23
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_42

    if-eqz v1, :cond_2a

    .line 11
    invoke-interface {p1, p0, v1}, Lwa/d;->b(Lwa/b;Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_2a
    iget-boolean v1, p0, Lwa/h;->q:Z

    if-eqz v1, :cond_31

    .line 13
    invoke-interface {v0}, Lja/e;->cancel()V

    .line 14
    :cond_31
    new-instance v1, Lwa/h$a;

    invoke-direct {v1, p0, p1}, Lwa/h$a;-><init>(Lwa/h;Lwa/d;)V

    invoke-interface {v0, v1}, Lja/e;->M1(Lja/f;)V

    return-void

    .line 15
    :cond_3a
    :try_start_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_42
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw p1
.end method

###### Class wa.h.a (wa.h$a)
.class Lwa/h$a;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lja/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/h;->v3(Lwa/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwa/d;

.field final synthetic b:Lwa/h;


# direct methods
.method constructor <init>(Lwa/h;Lwa/d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lwa/h$a;->b:Lwa/h;

    iput-object p2, p0, Lwa/h$a;->a:Lwa/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lwa/h$a;->a:Lwa/d;

    iget-object v1, p0, Lwa/h$a;->b:Lwa/h;

    invoke-interface {v0, v1, p1}, Lwa/d;->b(Lwa/b;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    return-void
.end method


# virtual methods
.method public onFailure(Lja/e;Ljava/io/IOException;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lwa/h$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lja/e;Lja/c0;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lwa/h$a;->b:Lwa/h;

    invoke-virtual {p1, p2}, Lwa/h;->d(Lja/c0;)Lwa/l;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_13

    .line 2
    :try_start_6
    iget-object p2, p0, Lwa/h$a;->a:Lwa/d;

    iget-object v0, p0, Lwa/h$a;->b:Lwa/h;

    invoke-interface {p2, v0, p1}, Lwa/d;->a(Lwa/b;Lwa/l;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_12
    return-void

    :catchall_13
    move-exception p1

    .line 4
    invoke-direct {p0, p1}, Lwa/h$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class wa.h.b (wa.h$b)
.class final Lwa/h$b;
.super Lja/d0;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final p:Lja/d0;

.field q:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lja/d0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lja/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/h$b;->p:Lja/d0;

    return-void
.end method


# virtual methods
.method c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/h$b;->q:Ljava/io/IOException;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    throw v0
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/h$b;->p:Lja/d0;

    invoke-virtual {v0}, Lja/d0;->close()V

    return-void
.end method

.method public contentLength()J
    .registers 3

    .line 1
    iget-object v0, p0, Lwa/h$b;->p:Lja/d0;

    invoke-virtual {v0}, Lja/d0;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/h$b;->p:Lja/d0;

    invoke-virtual {v0}, Lja/d0;->contentType()Lja/v;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/e;
    .registers 3

    .line 1
    new-instance v0, Lwa/h$b$a;

    iget-object v1, p0, Lwa/h$b;->p:Lja/d0;

    invoke-virtual {v1}, Lja/d0;->source()Lokio/e;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lwa/h$b$a;-><init>(Lwa/h$b;Lokio/u;)V

    invoke-static {v0}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object v0

    return-object v0
.end method

###### Class wa.h.b.a (wa.h$b$a)
.class Lwa/h$b$a;
.super Lokio/i;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/h$b;->source()Lokio/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lwa/h$b;


# direct methods
.method constructor <init>(Lwa/h$b;Lokio/u;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lwa/h$b$a;->p:Lwa/h$b;

    invoke-direct {p0, p2}, Lokio/i;-><init>(Lokio/u;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/c;J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/i;->read(Lokio/c;J)J

    move-result-wide p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p1

    :catch_5
    move-exception p1

    .line 2
    iget-object p2, p0, Lwa/h$b$a;->p:Lwa/h$b;

    iput-object p1, p2, Lwa/h$b;->q:Ljava/io/IOException;

    .line 3
    throw p1
.end method

###### Class wa.h.c (wa.h$c)
.class final Lwa/h$c;
.super Lja/d0;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final p:Lja/v;

.field private final q:J


# direct methods
.method constructor <init>(Lja/v;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lja/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/h$c;->p:Lja/v;

    .line 3
    iput-wide p2, p0, Lwa/h$c;->q:J

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lwa/h$c;->q:J

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/h$c;->p:Lja/v;

    return-object v0
.end method

.method public source()Lokio/e;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
