###### Class r1.l (r1.l)
.class public Lr1/l;
.super Ljava/lang/Object;
.source "WorkForegroundUpdater.java"

# interfaces
.implements Li1/f;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Ls1/a;

.field final b:Lp1/a;

.field final c:Lq1/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WMFgUpdater"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr1/l;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lp1/a;Ls1/a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr1/l;->b:Lp1/a;

    .line 3
    iput-object p3, p0, Lr1/l;->a:Ls1/a;

    .line 4
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object p1

    iput-object p1, p0, Lr1/l;->c:Lq1/q;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Li1/e;)La5/a;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Li1/e;",
            ")",
            "La5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/work/impl/utils/futures/c;->u()Landroidx/work/impl/utils/futures/c;

    move-result-object v6

    .line 2
    iget-object v7, p0, Lr1/l;->a:Ls1/a;

    new-instance v8, Lr1/l$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lr1/l$a;-><init>(Lr1/l;Landroidx/work/impl/utils/futures/c;Ljava/util/UUID;Li1/e;Landroid/content/Context;)V

    invoke-interface {v7, v8}, Ls1/a;->b(Ljava/lang/Runnable;)V

    return-object v6
.end method

###### Class r1.l.a (r1.l$a)
.class Lr1/l$a;
.super Ljava/lang/Object;
.source "WorkForegroundUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/l;->a(Landroid/content/Context;Ljava/util/UUID;Li1/e;)La5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/work/impl/utils/futures/c;

.field final synthetic p:Ljava/util/UUID;

.field final synthetic q:Li1/e;

.field final synthetic r:Landroid/content/Context;

.field final synthetic s:Lr1/l;


# direct methods
.method constructor <init>(Lr1/l;Landroidx/work/impl/utils/futures/c;Ljava/util/UUID;Li1/e;Landroid/content/Context;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lr1/l$a;->s:Lr1/l;

    iput-object p2, p0, Lr1/l$a;->o:Landroidx/work/impl/utils/futures/c;

    iput-object p3, p0, Lr1/l$a;->p:Ljava/util/UUID;

    iput-object p4, p0, Lr1/l$a;->q:Li1/e;

    iput-object p5, p0, Lr1/l$a;->r:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lr1/l$a;->o:Landroidx/work/impl/utils/futures/c;

    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2
    iget-object v0, p0, Lr1/l$a;->p:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lr1/l$a;->s:Lr1/l;

    iget-object v1, v1, Lr1/l;->c:Lq1/q;

    invoke-interface {v1, v0}, Lq1/q;->m(Ljava/lang/String;)Li1/s$a;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 4
    invoke-virtual {v1}, Li1/s$a;->c()Z

    move-result v1

    if-nez v1, :cond_35

    .line 5
    iget-object v1, p0, Lr1/l$a;->s:Lr1/l;

    iget-object v1, v1, Lr1/l;->b:Lp1/a;

    iget-object v2, p0, Lr1/l$a;->q:Li1/e;

    invoke-interface {v1, v0, v2}, Lp1/a;->b(Ljava/lang/String;Li1/e;)V

    .line 6
    iget-object v1, p0, Lr1/l$a;->r:Landroid/content/Context;

    iget-object v2, p0, Lr1/l$a;->q:Li1/e;

    invoke-static {v1, v0, v2}, Landroidx/work/impl/foreground/a;->a(Landroid/content/Context;Ljava/lang/String;Li1/e;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lr1/l$a;->r:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3d

    :cond_35
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lr1/l$a;->o:Landroidx/work/impl/utils/futures/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/c;->q(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_44

    goto :goto_4a

    :catchall_44
    move-exception v0

    .line 10
    iget-object v1, p0, Lr1/l$a;->o:Landroidx/work/impl/utils/futures/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/c;->r(Ljava/lang/Throwable;)Z

    :goto_4a
    return-void
.end method
