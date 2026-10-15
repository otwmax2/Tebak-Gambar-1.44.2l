###### Class y4.i (y4.i)
.class final Ly4/i;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ly4/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly4/n<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private final c:Ly4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/a<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ly4/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ly4/a<",
            "TResultT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ly4/i;->b:Ljava/lang/Object;

    iput-object p1, p0, Ly4/i;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ly4/i;->c:Ly4/a;

    return-void
.end method

.method static bridge synthetic b(Ly4/i;)Ly4/a;
    .registers 1

    iget-object p0, p0, Ly4/i;->c:Ly4/a;

    return-object p0
.end method

.method static bridge synthetic c(Ly4/i;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ly4/i;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Ly4/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/e<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly4/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ly4/i;->c:Ly4/a;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 2
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    iget-object v0, p0, Ly4/i;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ly4/h;

    .line 3
    invoke-direct {v1, p0, p1}, Ly4/h;-><init>(Ly4/i;Ly4/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_15
    move-exception p1

    .line 4
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method
