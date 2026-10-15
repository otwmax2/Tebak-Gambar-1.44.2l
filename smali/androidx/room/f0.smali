###### Class androidx.room.f0 (androidx.room.f0)
.class final Landroidx/room/f0;
.super Ljava/lang/Object;
.source "QueryInterceptorStatement.java"

# interfaces
.implements Lb1/k;


# instance fields
.field private final o:Lb1/k;

.field private final p:Landroidx/room/h0$f;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lb1/k;Landroidx/room/h0$f;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/f0;->r:Ljava/util/List;

    .line 3
    iput-object p1, p0, Landroidx/room/f0;->o:Lb1/k;

    .line 4
    iput-object p2, p0, Landroidx/room/f0;->p:Landroidx/room/h0$f;

    .line 5
    iput-object p3, p0, Landroidx/room/f0;->q:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Landroidx/room/f0;->s:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic b(Landroidx/room/f0;)V
    .registers 1

    invoke-direct {p0}, Landroidx/room/f0;->d()V

    return-void
.end method

.method public static synthetic c(Landroidx/room/f0;)V
    .registers 1

    invoke-direct {p0}, Landroidx/room/f0;->e()V

    return-void
.end method

.method private synthetic d()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/f0;->p:Landroidx/room/h0$f;

    iget-object v1, p0, Landroidx/room/f0;->q:Ljava/lang/String;

    iget-object v2, p0, Landroidx/room/f0;->r:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic e()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/f0;->p:Landroidx/room/h0$f;

    iget-object v1, p0, Landroidx/room/f0;->q:Ljava/lang/String;

    iget-object v2, p0, Landroidx/room/f0;->r:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Landroidx/room/h0$f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private f(ILjava/lang/Object;)V
    .registers 6

    add-int/lit8 p1, p1, -0x1

    .line 1
    iget-object v0, p0, Landroidx/room/f0;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1b

    .line 2
    iget-object v0, p0, Landroidx/room/f0;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_10
    if-gt v0, p1, :cond_1b

    .line 3
    iget-object v1, p0, Landroidx/room/f0;->r:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 4
    :cond_1b
    iget-object v0, p0, Landroidx/room/f0;->r:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public D1(I[B)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/f0;->f(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/f0;->o:Lb1/k;

    invoke-interface {v0, p1, p2}, Lb1/i;->D1(I[B)V

    return-void
.end method

.method public I3()J
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f0;->s:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/d0;

    invoke-direct {v1, p0}, Landroidx/room/d0;-><init>(Landroidx/room/f0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/f0;->o:Lb1/k;

    invoke-interface {v0}, Lb1/k;->I3()J

    move-result-wide v0

    return-wide v0
.end method

.method public L0(ID)V
    .registers 5

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/room/f0;->f(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/f0;->o:Lb1/k;

    invoke-interface {v0, p1, p2, p3}, Lb1/i;->L0(ID)V

    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f0;->o:Lb1/k;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public k0(ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/f0;->f(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/f0;->o:Lb1/k;

    invoke-interface {v0, p1, p2}, Lb1/i;->k0(ILjava/lang/String;)V

    return-void
.end method

.method public s1(IJ)V
    .registers 5

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/room/f0;->f(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/f0;->o:Lb1/k;

    invoke-interface {v0, p1, p2, p3}, Lb1/i;->s1(IJ)V

    return-void
.end method

.method public u0()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f0;->s:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/e0;

    invoke-direct {v1, p0}, Landroidx/room/e0;-><init>(Landroidx/room/f0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/f0;->o:Lb1/k;

    invoke-interface {v0}, Lb1/k;->u0()I

    move-result v0

    return v0
.end method

.method public z2(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f0;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/room/f0;->f(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/f0;->o:Lb1/k;

    invoke-interface {v0, p1}, Lb1/i;->z2(I)V

    return-void
.end method

###### Class androidx.room.d0 (androidx.room.d0)
.class public final synthetic Landroidx/room/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/f0;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/f0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/d0;->o:Landroidx/room/f0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/room/d0;->o:Landroidx/room/f0;

    invoke-static {v0}, Landroidx/room/f0;->b(Landroidx/room/f0;)V

    return-void
.end method

###### Class androidx.room.e0 (androidx.room.e0)
.class public final synthetic Landroidx/room/e0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/f0;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/f0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/e0;->o:Landroidx/room/f0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/room/e0;->o:Landroidx/room/f0;

    invoke-static {v0}, Landroidx/room/f0;->c(Landroidx/room/f0;)V

    return-void
.end method
