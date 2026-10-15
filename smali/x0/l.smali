###### Class x0.l (x0.l)
.class public abstract Lx0/l;
.super Ljava/lang/Object;
.source "SharedSQLiteStatement.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Landroidx/room/h0;

.field private volatile c:Lb1/k;


# direct methods
.method public constructor <init>(Landroidx/room/h0;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lx0/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lx0/l;->b:Landroidx/room/h0;

    return-void
.end method

.method private c()Lb1/k;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lx0/l;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lx0/l;->b:Landroidx/room/h0;

    invoke-virtual {v1, v0}, Landroidx/room/h0;->f(Ljava/lang/String;)Lb1/k;

    move-result-object v0

    return-object v0
.end method

.method private e(Z)Lb1/k;
    .registers 2

    if-eqz p1, :cond_f

    .line 1
    iget-object p1, p0, Lx0/l;->c:Lb1/k;

    if-nez p1, :cond_c

    .line 2
    invoke-direct {p0}, Lx0/l;->c()Lb1/k;

    move-result-object p1

    iput-object p1, p0, Lx0/l;->c:Lb1/k;

    .line 3
    :cond_c
    iget-object p1, p0, Lx0/l;->c:Lb1/k;

    goto :goto_13

    .line 4
    :cond_f
    invoke-direct {p0}, Lx0/l;->c()Lb1/k;

    move-result-object p1

    :goto_13
    return-object p1
.end method


# virtual methods
.method public a()Lb1/k;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lx0/l;->b()V

    .line 2
    iget-object v0, p0, Lx0/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-direct {p0, v0}, Lx0/l;->e(Z)Lb1/k;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lx0/l;->b:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->c()V

    return-void
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public f(Lb1/k;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lx0/l;->c:Lb1/k;

    if-ne p1, v0, :cond_a

    .line 2
    iget-object p1, p0, Lx0/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_a
    return-void
.end method
