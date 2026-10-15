###### Class androidx.room.z (androidx.room.z)
.class final Landroidx/room/z;
.super Ljava/lang/Object;
.source "QueryInterceptorDatabase.java"

# interfaces
.implements Lb1/g;


# instance fields
.field private final o:Lb1/g;

.field private final p:Landroidx/room/h0$f;

.field private final q:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lb1/g;Landroidx/room/h0$f;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/z;->o:Lb1/g;

    .line 3
    iput-object p2, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    .line 4
    iput-object p3, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic b(Landroidx/room/z;)V
    .registers 1

    invoke-direct {p0}, Landroidx/room/z;->m()V

    return-void
.end method

.method public static synthetic c(Landroidx/room/z;)V
    .registers 1

    invoke-direct {p0}, Landroidx/room/z;->l()V

    return-void
.end method

.method public static synthetic d(Landroidx/room/z;)V
    .registers 1

    invoke-direct {p0}, Landroidx/room/z;->s()V

    return-void
.end method

.method public static synthetic e(Landroidx/room/z;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/room/z;->o(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Landroidx/room/z;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/room/z;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Landroidx/room/z;Lb1/j;Landroidx/room/c0;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/room/z;->q(Lb1/j;Landroidx/room/c0;)V

    return-void
.end method

.method public static synthetic h(Landroidx/room/z;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/room/z;->p(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Landroidx/room/z;Lb1/j;Landroidx/room/c0;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/room/z;->r(Lb1/j;Landroidx/room/c0;)V

    return-void
.end method

.method public static synthetic j(Landroidx/room/z;)V
    .registers 1

    invoke-direct {p0}, Landroidx/room/z;->k()V

    return-void
.end method

.method private synthetic k()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    .line 3
    invoke-interface {v0, v2, v1}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic l()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "BEGIN DEFERRED TRANSACTION"

    .line 3
    invoke-interface {v0, v2, v1}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic m()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "END TRANSACTION"

    .line 3
    invoke-interface {v0, v2, v1}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic n(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1, v1}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic o(Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    invoke-interface {v0, p1, p2}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic p(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v0, p1, v1}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic q(Lb1/j;Landroidx/room/c0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    invoke-interface {p1}, Lb1/j;->b()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroidx/room/c0;->b()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic r(Lb1/j;Landroidx/room/c0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    invoke-interface {p1}, Lb1/j;->b()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroidx/room/c0;->b()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic s()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "TRANSACTION SUCCESSFUL"

    .line 3
    invoke-interface {v0, v2, v1}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public L2()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Lb1/g;->L2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O2()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Lb1/g;->O2()Z

    move-result v0

    return v0
.end method

.method public P1(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/x;

    invoke-direct {v1, p0, p1}, Landroidx/room/x;-><init>(Landroidx/room/z;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0, p1}, Lb1/g;->P1(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public V()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/t;

    invoke-direct {v1, p0}, Landroidx/room/t;-><init>(Landroidx/room/z;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Lb1/g;->V()V

    return-void
.end method

.method public X1()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/q;

    invoke-direct {v1, p0}, Landroidx/room/q;-><init>(Landroidx/room/z;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Lb1/g;->X1()V

    return-void
.end method

.method public c1(Lb1/j;)Landroid/database/Cursor;
    .registers 5

    .line 1
    new-instance v0, Landroidx/room/c0;

    invoke-direct {v0}, Landroidx/room/c0;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lb1/j;->c(Lb1/i;)V

    .line 3
    iget-object v1, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/room/u;

    invoke-direct {v2, p0, p1, v0}, Landroidx/room/u;-><init>(Landroidx/room/z;Lb1/j;Landroidx/room/c0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0, p1}, Lb1/g;->c1(Lb1/j;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public d0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Lb1/g;->d0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/w;

    invoke-direct {v1, p0, p1}, Landroidx/room/w;-><init>(Landroidx/room/z;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0, p1}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public h3()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Lb1/g;->h3()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Lb1/g;->isOpen()Z

    move-result v0

    return v0
.end method

.method public s0(Lb1/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 5

    .line 1
    new-instance p2, Landroidx/room/c0;

    invoke-direct {p2}, Landroidx/room/c0;-><init>()V

    .line 2
    invoke-interface {p1, p2}, Lb1/j;->c(Lb1/i;)V

    .line 3
    iget-object v0, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/v;

    invoke-direct {v1, p0, p1, p2}, Landroidx/room/v;-><init>(Landroidx/room/z;Lb1/j;Landroidx/room/c0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object p2, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {p2, p1}, Lb1/g;->c1(Lb1/j;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public u1()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/s;

    invoke-direct {v1, p0}, Landroidx/room/s;-><init>(Landroidx/room/z;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Lb1/g;->u1()V

    return-void
.end method

.method public w0(Ljava/lang/String;)Lb1/k;
    .registers 6

    .line 1
    new-instance v0, Landroidx/room/f0;

    iget-object v1, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v1, p1}, Lb1/g;->w0(Ljava/lang/String;)Lb1/k;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/z;->p:Landroidx/room/h0$f;

    iget-object v3, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p1, v3}, Landroidx/room/f0;-><init>(Lb1/k;Landroidx/room/h0$f;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public x1(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p2, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/y;

    invoke-direct {v1, p0, p1, v0}, Landroidx/room/y;-><init>(Landroidx/room/z;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object p2, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lb1/g;->x1(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public z1()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/z;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/r;

    invoke-direct {v1, p0}, Landroidx/room/r;-><init>(Landroidx/room/z;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/z;->o:Lb1/g;

    invoke-interface {v0}, Lb1/g;->z1()V

    return-void
.end method

###### Class androidx.room.q (androidx.room.q)
.class public final synthetic Landroidx/room/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/z;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/q;->o:Landroidx/room/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/room/q;->o:Landroidx/room/z;

    invoke-static {v0}, Landroidx/room/z;->b(Landroidx/room/z;)V

    return-void
.end method

###### Class androidx.room.r (androidx.room.r)
.class public final synthetic Landroidx/room/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/z;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/r;->o:Landroidx/room/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/room/r;->o:Landroidx/room/z;

    invoke-static {v0}, Landroidx/room/z;->c(Landroidx/room/z;)V

    return-void
.end method

###### Class androidx.room.s (androidx.room.s)
.class public final synthetic Landroidx/room/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/z;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/s;->o:Landroidx/room/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/room/s;->o:Landroidx/room/z;

    invoke-static {v0}, Landroidx/room/z;->d(Landroidx/room/z;)V

    return-void
.end method

###### Class androidx.room.t (androidx.room.t)
.class public final synthetic Landroidx/room/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/z;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/t;->o:Landroidx/room/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/room/t;->o:Landroidx/room/z;

    invoke-static {v0}, Landroidx/room/z;->j(Landroidx/room/z;)V

    return-void
.end method

###### Class androidx.room.u (androidx.room.u)
.class public final synthetic Landroidx/room/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/z;

.field public final synthetic p:Lb1/j;

.field public final synthetic q:Landroidx/room/c0;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/z;Lb1/j;Landroidx/room/c0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/u;->o:Landroidx/room/z;

    iput-object p2, p0, Landroidx/room/u;->p:Lb1/j;

    iput-object p3, p0, Landroidx/room/u;->q:Landroidx/room/c0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroidx/room/u;->o:Landroidx/room/z;

    iget-object v1, p0, Landroidx/room/u;->p:Lb1/j;

    iget-object v2, p0, Landroidx/room/u;->q:Landroidx/room/c0;

    invoke-static {v0, v1, v2}, Landroidx/room/z;->g(Landroidx/room/z;Lb1/j;Landroidx/room/c0;)V

    return-void
.end method

###### Class androidx.room.v (androidx.room.v)
.class public final synthetic Landroidx/room/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/z;

.field public final synthetic p:Lb1/j;

.field public final synthetic q:Landroidx/room/c0;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/z;Lb1/j;Landroidx/room/c0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/v;->o:Landroidx/room/z;

    iput-object p2, p0, Landroidx/room/v;->p:Lb1/j;

    iput-object p3, p0, Landroidx/room/v;->q:Landroidx/room/c0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroidx/room/v;->o:Landroidx/room/z;

    iget-object v1, p0, Landroidx/room/v;->p:Lb1/j;

    iget-object v2, p0, Landroidx/room/v;->q:Landroidx/room/c0;

    invoke-static {v0, v1, v2}, Landroidx/room/z;->i(Landroidx/room/z;Lb1/j;Landroidx/room/c0;)V

    return-void
.end method

###### Class androidx.room.w (androidx.room.w)
.class public final synthetic Landroidx/room/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/z;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/z;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/w;->o:Landroidx/room/z;

    iput-object p2, p0, Landroidx/room/w;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/room/w;->o:Landroidx/room/z;

    iget-object v1, p0, Landroidx/room/w;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/room/z;->f(Landroidx/room/z;Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.room.x (androidx.room.x)
.class public final synthetic Landroidx/room/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/z;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/z;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/x;->o:Landroidx/room/z;

    iput-object p2, p0, Landroidx/room/x;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/room/x;->o:Landroidx/room/z;

    iget-object v1, p0, Landroidx/room/x;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/room/z;->h(Landroidx/room/z;Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.room.y (androidx.room.y)
.class public final synthetic Landroidx/room/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/z;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/z;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/y;->o:Landroidx/room/z;

    iput-object p2, p0, Landroidx/room/y;->p:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/y;->q:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroidx/room/y;->o:Landroidx/room/z;

    iget-object v1, p0, Landroidx/room/y;->p:Ljava/lang/String;

    iget-object v2, p0, Landroidx/room/y;->q:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroidx/room/z;->e(Landroidx/room/z;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
