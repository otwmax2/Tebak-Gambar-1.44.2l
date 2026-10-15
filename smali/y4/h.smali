###### Class y4.h (y4.h)
.class final Ly4/h;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Ly4/e;

.field final synthetic p:Ly4/i;


# direct methods
.method constructor <init>(Ly4/i;Ly4/e;)V
    .registers 3

    iput-object p1, p0, Ly4/h;->p:Ly4/i;

    iput-object p2, p0, Ly4/h;->o:Ly4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Ly4/h;->p:Ly4/i;

    invoke-static {v0}, Ly4/i;->c(Ly4/i;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Ly4/h;->p:Ly4/i;

    invoke-static {v1}, Ly4/i;->b(Ly4/i;)Ly4/a;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Ly4/h;->p:Ly4/i;

    invoke-static {v1}, Ly4/i;->b(Ly4/i;)Ly4/a;

    move-result-object v1

    iget-object v2, p0, Ly4/h;->o:Ly4/e;

    invoke-interface {v1, v2}, Ly4/a;->a(Ly4/e;)V

    .line 2
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method
