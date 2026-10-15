###### Class r1.m (r1.m)
.class public Lr1/m;
.super Ljava/lang/Object;
.source "WorkProgressUpdater.java"

# interfaces
.implements Li1/o;


# static fields
.field static final c:Ljava/lang/String;


# instance fields
.field final a:Landroidx/work/impl/WorkDatabase;

.field final b:Ls1/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WorkProgressUpdater"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr1/m;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Ls1/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr1/m;->a:Landroidx/work/impl/WorkDatabase;

    .line 3
    iput-object p2, p0, Lr1/m;->b:Ls1/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/b;)La5/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Landroidx/work/b;",
            ")",
            "La5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/work/impl/utils/futures/c;->u()Landroidx/work/impl/utils/futures/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lr1/m;->b:Ls1/a;

    new-instance v1, Lr1/m$a;

    invoke-direct {v1, p0, p2, p3, p1}, Lr1/m$a;-><init>(Lr1/m;Ljava/util/UUID;Landroidx/work/b;Landroidx/work/impl/utils/futures/c;)V

    invoke-interface {v0, v1}, Ls1/a;->b(Ljava/lang/Runnable;)V

    return-object p1
.end method

###### Class r1.m.a (r1.m$a)
.class Lr1/m$a;
.super Ljava/lang/Object;
.source "WorkProgressUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/m;->a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/b;)La5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/util/UUID;

.field final synthetic p:Landroidx/work/b;

.field final synthetic q:Landroidx/work/impl/utils/futures/c;

.field final synthetic r:Lr1/m;


# direct methods
.method constructor <init>(Lr1/m;Ljava/util/UUID;Landroidx/work/b;Landroidx/work/impl/utils/futures/c;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lr1/m$a;->r:Lr1/m;

    iput-object p2, p0, Lr1/m$a;->o:Ljava/util/UUID;

    iput-object p3, p0, Lr1/m$a;->p:Landroidx/work/b;

    iput-object p4, p0, Lr1/m$a;->q:Landroidx/work/impl/utils/futures/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lr1/m$a;->o:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v2, Lr1/m;->c:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lr1/m$a;->o:Ljava/util/UUID;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lr1/m$a;->p:Landroidx/work/b;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "Updating progress for %s (%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Lr1/m$a;->r:Lr1/m;

    iget-object v1, v1, Lr1/m;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->e()V

    .line 4
    :try_start_2b
    iget-object v1, p0, Lr1/m$a;->r:Lr1/m;

    iget-object v1, v1, Lr1/m;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v1

    .line 5
    invoke-interface {v1, v0}, Lq1/q;->n(Ljava/lang/String;)Lq1/p;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 6
    iget-object v1, v1, Lq1/p;->b:Li1/s$a;

    .line 7
    sget-object v3, Li1/s$a;->p:Li1/s$a;

    if-ne v1, v3, :cond_52

    .line 8
    new-instance v1, Lq1/m;

    iget-object v2, p0, Lr1/m$a;->p:Landroidx/work/b;

    invoke-direct {v1, v0, v2}, Lq1/m;-><init>(Ljava/lang/String;Landroidx/work/b;)V

    .line 9
    iget-object v0, p0, Lr1/m$a;->r:Lr1/m;

    iget-object v0, v0, Lr1/m;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->K()Lq1/n;

    move-result-object v0

    invoke-interface {v0, v1}, Lq1/n;->b(Lq1/m;)V

    goto :goto_65

    .line 10
    :cond_52
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    const-string v3, "Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 11
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 12
    invoke-virtual {v1, v2, v0, v3}, Li1/j;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 13
    :goto_65
    iget-object v0, p0, Lr1/m$a;->q:Landroidx/work/impl/utils/futures/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/c;->q(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lr1/m$a;->r:Lr1/m;

    iget-object v0, v0, Lr1/m;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->A()V

    goto :goto_90

    :cond_73
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7b
    .catchall {:try_start_2b .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v0

    .line 16
    :try_start_7c
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v2, Lr1/m;->c:Ljava/lang/String;

    const-string v3, "Error updating Worker progress"

    new-array v4, v6, [Ljava/lang/Throwable;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 17
    iget-object v1, p0, Lr1/m$a;->q:Landroidx/work/impl/utils/futures/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/c;->r(Ljava/lang/Throwable;)Z
    :try_end_90
    .catchall {:try_start_7c .. :try_end_90} :catchall_98

    .line 18
    :goto_90
    iget-object v0, p0, Lr1/m$a;->r:Lr1/m;

    iget-object v0, v0, Lr1/m;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    return-void

    :catchall_98
    move-exception v0

    iget-object v1, p0, Lr1/m$a;->r:Lr1/m;

    iget-object v1, v1, Lr1/m;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 19
    throw v0
.end method
