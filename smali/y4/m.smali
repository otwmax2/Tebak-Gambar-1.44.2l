###### Class y4.m (y4.m)
.class final Ly4/m;
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

.field private final c:Ly4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/c<",
            "-TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ly4/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ly4/c<",
            "-TResultT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ly4/m;->b:Ljava/lang/Object;

    iput-object p1, p0, Ly4/m;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ly4/m;->c:Ly4/c;

    return-void
.end method

.method static bridge synthetic b(Ly4/m;)Ly4/c;
    .registers 1

    iget-object p0, p0, Ly4/m;->c:Ly4/c;

    return-object p0
.end method

.method static bridge synthetic c(Ly4/m;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ly4/m;->b:Ljava/lang/Object;

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
    invoke-virtual {p1}, Ly4/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ly4/m;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Ly4/m;->c:Ly4/c;

    if-nez v1, :cond_f

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    iget-object v0, p0, Ly4/m;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ly4/l;

    .line 4
    invoke-direct {v1, p0, p1}, Ly4/l;-><init>(Ly4/m;Ly4/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1b
    move-exception p1

    .line 5
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    return-void
.end method
