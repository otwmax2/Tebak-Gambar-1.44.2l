###### Class i5.h1 (i5.h1)
.class final Li5/h1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic o:Li5/g1;

.field private final synthetic p:Li5/b1;


# direct methods
.method constructor <init>(Li5/b1;Li5/g1;)V
    .registers 3

    .line 1
    iput-object p1, p0, Li5/h1;->p:Li5/b1;

    iput-object p2, p0, Li5/h1;->o:Li5/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Li5/h1;->p:Li5/b1;

    iget-object v0, v0, Li5/b1;->o:Li5/z0;

    iget-object v0, v0, Li5/z0;->h:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_7
    iget-object v1, p0, Li5/h1;->p:Li5/b1;

    iget-object v1, v1, Li5/b1;->o:Li5/z0;

    iget-object v1, v1, Li5/z0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 3
    iget-object v1, p0, Li5/h1;->o:Li5/g1;

    iget-object v2, p0, Li5/h1;->p:Li5/b1;

    iget-object v2, v2, Li5/b1;->o:Li5/z0;

    iget-object v2, v2, Li5/z0;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/f0;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Li5/g1;->a(Lg5/f0;[Ljava/lang/Object;)V

    .line 4
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method
