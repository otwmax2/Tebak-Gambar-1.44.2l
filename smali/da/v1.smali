###### Class da.v1 (da.v1)
.class final Lda/v1;
.super Lda/z1;
.source "JobSupport.kt"


# static fields
.field private static final synthetic t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _invoked:I

.field private final s:Ls9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/l<",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lda/v1;

    const-string v1, "_invoked"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lda/v1;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ls9/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lda/z1;-><init>()V

    .line 2
    iput-object p1, p0, Lda/v1;->s:Ls9/l;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lda/v1;->_invoked:I

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    sget-object v0, Lda/v1;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lda/v1;->s:Ls9/l;

    invoke-interface {v0, p1}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lda/v1;->C(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method
