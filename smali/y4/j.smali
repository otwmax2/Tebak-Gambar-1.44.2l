###### Class y4.j (y4.j)
.class final Ly4/j;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Ly4/e;

.field final synthetic p:Ly4/k;


# direct methods
.method constructor <init>(Ly4/k;Ly4/e;)V
    .registers 3

    iput-object p1, p0, Ly4/j;->p:Ly4/k;

    iput-object p2, p0, Ly4/j;->o:Ly4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Ly4/j;->p:Ly4/k;

    invoke-static {v0}, Ly4/k;->c(Ly4/k;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Ly4/j;->p:Ly4/k;

    invoke-static {v1}, Ly4/k;->b(Ly4/k;)Ly4/b;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Ly4/j;->p:Ly4/k;

    invoke-static {v1}, Ly4/k;->b(Ly4/k;)Ly4/b;

    move-result-object v1

    iget-object v2, p0, Ly4/j;->o:Ly4/e;

    invoke-virtual {v2}, Ly4/e;->d()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Ly4/b;->b(Ljava/lang/Exception;)V

    .line 2
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method
