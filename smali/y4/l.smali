###### Class y4.l (y4.l)
.class final Ly4/l;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Ly4/e;

.field final synthetic p:Ly4/m;


# direct methods
.method constructor <init>(Ly4/m;Ly4/e;)V
    .registers 3

    iput-object p1, p0, Ly4/l;->p:Ly4/m;

    iput-object p2, p0, Ly4/l;->o:Ly4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Ly4/l;->p:Ly4/m;

    invoke-static {v0}, Ly4/m;->c(Ly4/m;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Ly4/l;->p:Ly4/m;

    invoke-static {v1}, Ly4/m;->b(Ly4/m;)Ly4/c;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Ly4/l;->p:Ly4/m;

    invoke-static {v1}, Ly4/m;->b(Ly4/m;)Ly4/c;

    move-result-object v1

    iget-object v2, p0, Ly4/l;->o:Ly4/e;

    invoke-virtual {v2}, Ly4/e;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ly4/c;->onSuccess(Ljava/lang/Object;)V

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
