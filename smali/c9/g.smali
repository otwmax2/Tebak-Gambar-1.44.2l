###### Class c9.g (c9.g)
.class public Lc9/g;
.super Ljava/lang/Object;
.source "SessionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc9/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/m;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lc9/g$b;

.field private final b:Lc9/i;

.field private final c:Lcom/twitter/sdk/android/core/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Lc9/h;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/n;Lc9/i;Ljava/util/concurrent/ExecutorService;Lc9/g$b;Lc9/h;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/n<",
            "TT;>;",
            "Lc9/i;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lc9/g$b;",
            "Lc9/h;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lc9/g;->b:Lc9/i;

    .line 4
    iput-object p1, p0, Lc9/g;->c:Lcom/twitter/sdk/android/core/n;

    .line 5
    iput-object p3, p0, Lc9/g;->d:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p4, p0, Lc9/g;->a:Lc9/g$b;

    .line 7
    iput-object p5, p0, Lc9/g;->e:Lc9/h;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/n;Ljava/util/concurrent/ExecutorService;Lc9/h;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/n<",
            "TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lc9/h<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v2, Lc9/i;

    invoke-direct {v2}, Lc9/i;-><init>()V

    new-instance v4, Lc9/g$b;

    invoke-direct {v4}, Lc9/g$b;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc9/g;-><init>(Lcom/twitter/sdk/android/core/n;Lc9/i;Ljava/util/concurrent/ExecutorService;Lc9/g$b;Lc9/h;)V

    return-void
.end method


# virtual methods
.method public a(Lc9/a;)V
    .registers 3

    .line 1
    new-instance v0, Lc9/g$a;

    invoke-direct {v0, p0}, Lc9/g$a;-><init>(Lc9/g;)V

    invoke-virtual {p1, v0}, Lc9/a;->a(Lc9/a$b;)Z

    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lc9/g;->c:Lcom/twitter/sdk/android/core/n;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/m;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc9/g;->b:Lc9/i;

    invoke-virtual {v1}, Lc9/i;->a()J

    move-result-wide v1

    if-eqz v0, :cond_18

    .line 3
    iget-object v0, p0, Lc9/g;->a:Lc9/g$b;

    .line 4
    invoke-virtual {v0, v1, v2}, Lc9/g$b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_25

    .line 5
    iget-object v0, p0, Lc9/g;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lc9/f;

    invoke-direct {v1, p0}, Lc9/f;-><init>(Lc9/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_25
    return-void
.end method

.method protected c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lc9/g;->c:Lcom/twitter/sdk/android/core/n;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/n;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/m;

    .line 2
    iget-object v2, p0, Lc9/g;->e:Lc9/h;

    invoke-interface {v2, v1}, Lc9/h;->a(Lcom/twitter/sdk/android/core/m;)V

    goto :goto_e

    .line 3
    :cond_20
    iget-object v0, p0, Lc9/g;->a:Lc9/g$b;

    iget-object v1, p0, Lc9/g;->b:Lc9/i;

    invoke-virtual {v1}, Lc9/i;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc9/g$b;->b(J)V

    return-void
.end method

###### Class c9.g.a (c9.g$a)
.class Lc9/g$a;
.super Lc9/a$b;
.source "SessionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc9/g;->a(Lc9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc9/g;


# direct methods
.method constructor <init>(Lc9/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc9/g$a;->a:Lc9/g;

    invoke-direct {p0}, Lc9/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lc9/g$a;->a:Lc9/g;

    invoke-virtual {p1}, Lc9/g;->b()V

    return-void
.end method

###### Class c9.g.b (c9.g$b)
.class public Lc9/g$b;
.super Ljava/lang/Object;
.source "SessionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field private final c:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTC"

    .line 2
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lc9/g$b;->c:Ljava/util/Calendar;

    return-void
.end method

.method private c(JJ)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lc9/g$b;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    iget-object p1, p0, Lc9/g$b;->c:Ljava/util/Calendar;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lc9/g$b;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4
    iget-object v2, p0, Lc9/g$b;->c:Ljava/util/Calendar;

    invoke-virtual {v2, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5
    iget-object p3, p0, Lc9/g$b;->c:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 6
    iget-object p3, p0, Lc9/g$b;->c:Ljava/util/Calendar;

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p1, p2, :cond_29

    if-ne v0, p3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    return v1
.end method


# virtual methods
.method public declared-synchronized a(J)Z
    .registers 12

    monitor-enter p0

    .line 1
    :try_start_1
    iget-wide v0, p0, Lc9/g$b;->b:J

    sub-long v2, p1, v0

    const-wide/32 v4, 0x1499700

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 2
    :goto_11
    invoke-direct {p0, p1, p2, v0, v1}, Lc9/g$b;->c(JJ)Z

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 3
    :goto_1a
    iget-boolean p2, p0, Lc9/g$b;->a:Z

    if-nez p2, :cond_26

    if-nez v2, :cond_22

    if-eqz p1, :cond_26

    .line 4
    :cond_22
    iput-boolean v6, p0, Lc9/g$b;->a:Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_28

    monitor-exit p0

    return v6

    .line 5
    :cond_26
    monitor-exit p0

    return v7

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(J)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lc9/g$b;->a:Z

    .line 2
    iput-wide p1, p0, Lc9/g$b;->b:J
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 3
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class c9.f (c9.f)
.class public final synthetic Lc9/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lc9/g;


# direct methods
.method public synthetic constructor <init>(Lc9/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc9/f;->o:Lc9/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lc9/f;->o:Lc9/g;

    invoke-virtual {v0}, Lc9/g;->c()V

    return-void
.end method
