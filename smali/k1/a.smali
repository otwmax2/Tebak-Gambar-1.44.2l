###### Class k1.a (k1.a)
.class public Lk1/a;
.super Ljava/lang/Object;
.source "DelayedWorkTracker.java"


# static fields
.field static final d:Ljava/lang/String;


# instance fields
.field final a:Lk1/b;

.field private final b:Li1/q;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DelayedWorkTracker"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk1/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lk1/b;Li1/q;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk1/a;->a:Lk1/b;

    .line 3
    iput-object p2, p0, Lk1/a;->b:Li1/q;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lk1/a;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lq1/p;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lk1/a;->c:Ljava/util/Map;

    iget-object v1, p1, Lq1/p;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 2
    iget-object v1, p0, Lk1/a;->b:Li1/q;

    invoke-interface {v1, v0}, Li1/q;->b(Ljava/lang/Runnable;)V

    .line 3
    :cond_11
    new-instance v0, Lk1/a$a;

    invoke-direct {v0, p0, p1}, Lk1/a$a;-><init>(Lk1/a;Lq1/p;)V

    .line 4
    iget-object v1, p0, Lk1/a;->c:Ljava/util/Map;

    iget-object v2, p1, Lq1/p;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    invoke-virtual {p1}, Lq1/p;->a()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 7
    iget-object p1, p0, Lk1/a;->b:Li1/q;

    invoke-interface {p1, v3, v4, v0}, Li1/q;->a(JLjava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk1/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_f

    .line 2
    iget-object v0, p0, Lk1/a;->b:Li1/q;

    invoke-interface {v0, p1}, Li1/q;->b(Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

###### Class k1.a.RunnableC0185a (k1.a$a)
.class Lk1/a$a;
.super Ljava/lang/Object;
.source "DelayedWorkTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk1/a;->a(Lq1/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lq1/p;

.field final synthetic p:Lk1/a;


# direct methods
.method constructor <init>(Lk1/a;Lq1/p;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lk1/a$a;->p:Lk1/a;

    iput-object p2, p0, Lk1/a$a;->o:Lq1/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Lk1/a;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lk1/a$a;->o:Lq1/p;

    iget-object v4, v4, Lq1/p;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Scheduling work %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lk1/a$a;->p:Lk1/a;

    iget-object v0, v0, Lk1/a;->a:Lk1/b;

    new-array v1, v2, [Lq1/p;

    iget-object v2, p0, Lk1/a$a;->o:Lq1/p;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lk1/b;->d([Lq1/p;)V

    return-void
.end method
