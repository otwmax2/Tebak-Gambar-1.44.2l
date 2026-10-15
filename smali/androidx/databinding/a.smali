###### Class androidx.databinding.a (androidx.databinding.a)
.class public Landroidx/databinding/a;
.super Ljava/lang/Object;
.source "BaseObservable.java"

# interfaces
.implements Landroidx/databinding/j;


# instance fields
.field private transient o:Landroidx/databinding/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Landroidx/databinding/j$a;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/databinding/a;->o:Landroidx/databinding/s;

    if-nez v0, :cond_c

    .line 3
    new-instance v0, Landroidx/databinding/s;

    invoke-direct {v0}, Landroidx/databinding/s;-><init>()V

    iput-object v0, p0, Landroidx/databinding/a;->o:Landroidx/databinding/s;

    .line 4
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 5
    iget-object v0, p0, Landroidx/databinding/a;->o:Landroidx/databinding/s;

    invoke-virtual {v0, p1}, Landroidx/databinding/c;->a(Ljava/lang/Object;)V

    return-void

    :catchall_13
    move-exception p1

    .line 6
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public v(Landroidx/databinding/j$a;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/databinding/a;->o:Landroidx/databinding/s;

    if-nez v0, :cond_7

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    .line 5
    invoke-virtual {v0, p1}, Landroidx/databinding/c;->k(Ljava/lang/Object;)V

    return-void

    :catchall_c
    move-exception p1

    .line 6
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public w()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/databinding/a;->o:Landroidx/databinding/s;

    if-nez v0, :cond_7

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Landroidx/databinding/c;->f(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :catchall_e
    move-exception v0

    .line 6
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public x(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/databinding/a;->o:Landroidx/databinding/s;

    if-nez v0, :cond_7

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p0, p1, v1}, Landroidx/databinding/c;->f(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :catchall_d
    move-exception p1

    .line 6
    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method
