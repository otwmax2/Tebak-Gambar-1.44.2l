###### Class kotlinx.coroutines.internal.r (kotlinx.coroutines.internal.r)
.class public Lkotlinx/coroutines/internal/r;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/r$a;,
        Lkotlinx/coroutines/internal/r$b;
    }
.end annotation


# static fields
.field static final synthetic o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final synthetic p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _next:Ljava/lang/Object;

.field volatile synthetic _prev:Ljava/lang/Object;

.field private volatile synthetic _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/internal/r;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/internal/r;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/internal/r;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_removedRef"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/r;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lkotlinx/coroutines/internal/r;->_next:Ljava/lang/Object;

    .line 3
    iput-object p0, p0, Lkotlinx/coroutines/internal/r;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lkotlinx/coroutines/internal/r;->_removedRef:Ljava/lang/Object;

    return-void
.end method

.method private final A()Lkotlinx/coroutines/internal/a0;
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->_removedRef:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/a0;

    if-nez v0, :cond_10

    new-instance v0, Lkotlinx/coroutines/internal/a0;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/a0;-><init>(Lkotlinx/coroutines/internal/r;)V

    sget-object v1, Lkotlinx/coroutines/internal/r;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method public static final synthetic k(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/r;->q(Lkotlinx/coroutines/internal/r;)V

    return-void
.end method

.method private final o(Lkotlinx/coroutines/internal/z;)Lkotlinx/coroutines/internal/r;
    .registers 9

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/r;

    const/4 v1, 0x0

    move-object v2, v0

    :goto_6
    move-object v3, v1

    .line 2
    :goto_7
    iget-object v4, v2, Lkotlinx/coroutines/internal/r;->_next:Ljava/lang/Object;

    if-ne v4, p0, :cond_18

    if-ne v0, v2, :cond_e

    return-object v2

    .line 3
    :cond_e
    sget-object v1, Lkotlinx/coroutines/internal/r;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    return-object v2

    .line 4
    :cond_18
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->w()Z

    move-result v5

    if-eqz v5, :cond_1f

    return-object v1

    :cond_1f
    if-ne v4, p1, :cond_22

    return-object v2

    .line 5
    :cond_22
    instance-of v5, v4, Lkotlinx/coroutines/internal/z;

    if-eqz v5, :cond_38

    if-eqz p1, :cond_32

    .line 6
    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/internal/z;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/z;->b(Lkotlinx/coroutines/internal/z;)Z

    move-result v0

    if-eqz v0, :cond_32

    return-object v1

    .line 7
    :cond_32
    check-cast v4, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/internal/z;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_38
    instance-of v5, v4, Lkotlinx/coroutines/internal/a0;

    if-eqz v5, :cond_52

    if-eqz v3, :cond_4d

    .line 9
    sget-object v5, Lkotlinx/coroutines/internal/r;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lkotlinx/coroutines/internal/a0;

    iget-object v4, v4, Lkotlinx/coroutines/internal/a0;->a:Lkotlinx/coroutines/internal/r;

    invoke-static {v5, v3, v2, v4}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_0

    :cond_4b
    move-object v2, v3

    goto :goto_6

    .line 10
    :cond_4d
    iget-object v2, v2, Lkotlinx/coroutines/internal/r;->_prev:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/internal/r;

    goto :goto_7

    .line 11
    :cond_52
    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/internal/r;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_7
.end method

.method private final p(Lkotlinx/coroutines/internal/r;)Lkotlinx/coroutines/internal/r;
    .registers 3

    .line 1
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->w()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 2
    :cond_7
    iget-object p1, p1, Lkotlinx/coroutines/internal/r;->_prev:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/r;

    goto :goto_0
.end method

.method private final q(Lkotlinx/coroutines/internal/r;)V
    .registers 4

    .line 1
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/internal/r;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/r;

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_b

    return-void

    .line 3
    :cond_b
    sget-object v1, Lkotlinx/coroutines/internal/r;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p1, v0, p0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->w()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lkotlinx/coroutines/internal/r;->o(Lkotlinx/coroutines/internal/z;)Lkotlinx/coroutines/internal/r;

    :cond_1d
    return-void
.end method


# virtual methods
.method public final B(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r$a;)I
    .registers 5

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/r;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/r;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object p2, p3, Lkotlinx/coroutines/internal/r$a;->c:Lkotlinx/coroutines/internal/r;

    .line 4
    invoke-static {v0, p0, p2, p3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_14
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x2

    :goto_1d
    return p1
.end method

.method public final l(Lkotlinx/coroutines/internal/r;)V
    .registers 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lkotlinx/coroutines/internal/r;->m(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final m(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;)Z
    .registers 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/r;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/r;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {v0, p0, p2, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_12
    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/r;->q(Lkotlinx/coroutines/internal/r;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final n(Lkotlinx/coroutines/internal/r;)Z
    .registers 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/r;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/r;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :cond_a
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_12

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_12
    sget-object v0, Lkotlinx/coroutines/internal/r;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, p0, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5
    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/r;->q(Lkotlinx/coroutines/internal/r;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final r()Ljava/lang/Object;
    .registers 3

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->_next:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/z;

    if-nez v1, :cond_7

    return-object v0

    .line 3
    :cond_7
    check-cast v0, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/z;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final s()Lkotlinx/coroutines/internal/r;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/q;->b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/r;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lkotlinx/coroutines/internal/r;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/r;->o(Lkotlinx/coroutines/internal/z;)Lkotlinx/coroutines/internal/r;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/r;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/r;->p(Lkotlinx/coroutines/internal/r;)Lkotlinx/coroutines/internal/r;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lkotlinx/coroutines/internal/r$c;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/r$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lda/t0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/a0;

    iget-object v0, v0, Lkotlinx/coroutines/internal/a0;->a:Lkotlinx/coroutines/internal/r;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->v()V

    return-void
.end method

.method public final v()V
    .registers 4

    move-object v0, p0

    .line 1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v1

    .line 2
    instance-of v2, v1, Lkotlinx/coroutines/internal/a0;

    if-eqz v2, :cond_e

    .line 3
    check-cast v1, Lkotlinx/coroutines/internal/a0;

    iget-object v0, v1, Lkotlinx/coroutines/internal/a0;->a:Lkotlinx/coroutines/internal/r;

    goto :goto_1

    :cond_e
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;->o(Lkotlinx/coroutines/internal/z;)Lkotlinx/coroutines/internal/r;

    return-void
.end method

.method public w()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/internal/a0;

    return v0
.end method

.method public x()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->z()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final y()Lkotlinx/coroutines/internal/r;
    .registers 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/r;

    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->x()Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    .line 3
    :cond_11
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->u()V

    goto :goto_0
.end method

.method public final z()Lkotlinx/coroutines/internal/r;
    .registers 5

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/a0;

    if-eqz v1, :cond_d

    check-cast v0, Lkotlinx/coroutines/internal/a0;

    iget-object v0, v0, Lkotlinx/coroutines/internal/a0;->a:Lkotlinx/coroutines/internal/r;

    return-object v0

    :cond_d
    if-ne v0, p0, :cond_12

    .line 3
    check-cast v0, Lkotlinx/coroutines/internal/r;

    return-object v0

    .line 4
    :cond_12
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/r;

    invoke-direct {v1}, Lkotlinx/coroutines/internal/r;->A()Lkotlinx/coroutines/internal/a0;

    move-result-object v2

    .line 5
    sget-object v3, Lkotlinx/coroutines/internal/r;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-direct {v1, v0}, Lkotlinx/coroutines/internal/r;->o(Lkotlinx/coroutines/internal/z;)Lkotlinx/coroutines/internal/r;

    return-object v0
.end method

###### Class kotlinx.coroutines.internal.r.a (kotlinx.coroutines.internal.r$a)
.class public abstract Lkotlinx/coroutines/internal/r$a;
.super Lkotlinx/coroutines/internal/c;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/c<",
        "Lkotlinx/coroutines/internal/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lkotlinx/coroutines/internal/r;

.field public c:Lkotlinx/coroutines/internal/r;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/r;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/c;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/r$a;->b:Lkotlinx/coroutines/internal/r;

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/r;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/r$a;->h(Lkotlinx/coroutines/internal/r;Ljava/lang/Object;)V

    return-void
.end method

.method public h(Lkotlinx/coroutines/internal/r;Ljava/lang/Object;)V
    .registers 5

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_a

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r$a;->b:Lkotlinx/coroutines/internal/r;

    goto :goto_c

    :cond_a
    iget-object v0, p0, Lkotlinx/coroutines/internal/r$a;->c:Lkotlinx/coroutines/internal/r;

    :goto_c
    if-eqz v0, :cond_22

    .line 2
    sget-object v1, Lkotlinx/coroutines/internal/r;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p1, p0, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/internal/r$a;->b:Lkotlinx/coroutines/internal/r;

    iget-object p2, p0, Lkotlinx/coroutines/internal/r$a;->c:Lkotlinx/coroutines/internal/r;

    invoke-static {p2}, Lt9/m;->b(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/r;->k(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;)V

    :cond_22
    return-void
.end method

###### Class kotlinx.coroutines.internal.r.b (kotlinx.coroutines.internal.r$b)
.class public final Lkotlinx/coroutines/internal/r$b;
.super Lkotlinx/coroutines/internal/z;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

###### Class kotlinx.coroutines.internal.r.c (kotlinx.coroutines.internal.r$c)
.class final synthetic Lkotlinx/coroutines/internal/r$c;
.super Lt9/q;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/r;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 8

    const-class v2, Lda/t0;

    const-string v3, "classSimpleName"

    const-string v4, "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lt9/q;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lt9/c;->p:Ljava/lang/Object;

    invoke-static {v0}, Lda/t0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
