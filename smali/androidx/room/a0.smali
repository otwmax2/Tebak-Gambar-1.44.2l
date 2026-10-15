###### Class androidx.room.a0 (androidx.room.a0)
.class final Landroidx/room/a0;
.super Ljava/lang/Object;
.source "QueryInterceptorOpenHelper.java"

# interfaces
.implements Lb1/h;
.implements Landroidx/room/j;


# instance fields
.field private final o:Lb1/h;

.field private final p:Landroidx/room/h0$f;

.field private final q:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lb1/h;Landroidx/room/h0$f;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/a0;->o:Lb1/h;

    .line 3
    iput-object p2, p0, Landroidx/room/a0;->p:Landroidx/room/h0$f;

    .line 4
    iput-object p3, p0, Landroidx/room/a0;->q:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public K1()Lb1/g;
    .registers 5

    .line 1
    new-instance v0, Landroidx/room/z;

    iget-object v1, p0, Landroidx/room/a0;->o:Lb1/h;

    invoke-interface {v1}, Lb1/h;->K1()Lb1/g;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/a0;->p:Landroidx/room/h0$f;

    iget-object v3, p0, Landroidx/room/a0;->q:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroidx/room/z;-><init>(Lb1/g;Landroidx/room/h0$f;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public b()Lb1/h;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/a0;->o:Lb1/h;

    return-object v0
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/a0;->o:Lb1/h;

    invoke-interface {v0}, Lb1/h;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/a0;->o:Lb1/h;

    invoke-interface {v0}, Lb1/h;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/a0;->o:Lb1/h;

    invoke-interface {v0, p1}, Lb1/h;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
