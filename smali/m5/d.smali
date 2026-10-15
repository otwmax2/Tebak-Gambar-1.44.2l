###### Class m5.d (m5.d)
.class public Lm5/d;
.super Ljava/lang/Object;
.source "AnalyticsDeferredProxy.java"


# instance fields
.field private final a:Lk6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a<",
            "Le5/a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lo5/a;

.field private volatile c:Lp5/b;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk6/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/a<",
            "Le5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lp5/c;

    invoke-direct {v0}, Lp5/c;-><init>()V

    new-instance v1, Lo5/f;

    invoke-direct {v1}, Lo5/f;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lm5/d;-><init>(Lk6/a;Lp5/b;Lo5/a;)V

    return-void
.end method

.method public constructor <init>(Lk6/a;Lp5/b;Lo5/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/a<",
            "Le5/a;",
            ">;",
            "Lp5/b;",
            "Lo5/a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lm5/d;->a:Lk6/a;

    .line 4
    iput-object p2, p0, Lm5/d;->c:Lp5/b;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm5/d;->d:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lm5/d;->b:Lo5/a;

    .line 7
    invoke-direct {p0}, Lm5/d;->f()V

    return-void
.end method

.method public static synthetic a(Lm5/d;Lk6/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lm5/d;->i(Lk6/b;)V

    return-void
.end method

.method public static synthetic b(Lm5/d;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lm5/d;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lm5/d;Lp5/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lm5/d;->h(Lp5/a;)V

    return-void
.end method

.method private f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lm5/d;->a:Lk6/a;

    new-instance v1, Lm5/a;

    invoke-direct {v1, p0}, Lm5/a;-><init>(Lm5/d;)V

    invoke-interface {v0, v1}, Lk6/a;->a(Lk6/a$a;)V

    return-void
.end method

.method private synthetic g(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm5/d;->b:Lo5/a;

    invoke-interface {v0, p1, p2}, Lo5/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic h(Lp5/a;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lm5/d;->c:Lp5/b;

    instance-of v0, v0, Lp5/c;

    if-eqz v0, :cond_c

    .line 3
    iget-object v0, p0, Lm5/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_c
    iget-object v0, p0, Lm5/d;->c:Lp5/b;

    invoke-interface {v0, p1}, Lp5/b;->a(Lp5/a;)V

    .line 5
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private synthetic i(Lk6/b;)V
    .registers 7

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "AnalyticsConnector now available."

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le5/a;

    .line 3
    new-instance v0, Lo5/e;

    invoke-direct {v0, p1}, Lo5/e;-><init>(Le5/a;)V

    .line 4
    new-instance v1, Lm5/e;

    invoke-direct {v1}, Lm5/e;-><init>()V

    .line 5
    invoke-static {p1, v1}, Lm5/d;->j(Le5/a;Lm5/e;)Le5/a$a;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 6
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v2, "Registered Firebase Analytics listener."

    invoke-virtual {p1, v2}, Ln5/g;->b(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lo5/d;

    invoke-direct {p1}, Lo5/d;-><init>()V

    .line 8
    new-instance v2, Lo5/c;

    const/16 v3, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v0, v3, v4}, Lo5/c;-><init>(Lo5/e;ILjava/util/concurrent/TimeUnit;)V

    .line 9
    monitor-enter p0

    .line 10
    :try_start_37
    iget-object v0, p0, Lm5/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp5/a;

    .line 11
    invoke-virtual {p1, v3}, Lo5/d;->a(Lp5/a;)V

    goto :goto_3d

    .line 12
    :cond_4d
    invoke-virtual {v1, p1}, Lm5/e;->d(Lo5/b;)V

    .line 13
    invoke-virtual {v1, v2}, Lm5/e;->e(Lo5/b;)V

    .line 14
    iput-object p1, p0, Lm5/d;->c:Lp5/b;

    .line 15
    iput-object v2, p0, Lm5/d;->b:Lo5/a;

    .line 16
    monitor-exit p0

    goto :goto_65

    :catchall_59
    move-exception p1

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_59

    throw p1

    .line 17
    :cond_5c
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "Could not register Firebase Analytics listener; a listener is already registered."

    .line 18
    invoke-virtual {p1, v0}, Ln5/g;->k(Ljava/lang/String;)V

    :goto_65
    return-void
.end method

.method private static j(Le5/a;Lm5/e;)Le5/a$a;
    .registers 4

    const-string v0, "clx"

    .line 1
    invoke-interface {p0, v0, p1}, Le5/a;->f(Ljava/lang/String;Le5/a$b;)Le5/a$a;

    move-result-object v0

    if-nez v0, :cond_22

    .line 2
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    .line 3
    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    const-string v0, "crash"

    .line 4
    invoke-interface {p0, v0, p1}, Le5/a;->f(Ljava/lang/String;Le5/a$b;)Le5/a$a;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 5
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p0

    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 6
    invoke-virtual {p0, p1}, Ln5/g;->k(Ljava/lang/String;)V

    :cond_22
    return-object v0
.end method


# virtual methods
.method public d()Lo5/a;
    .registers 2

    .line 1
    new-instance v0, Lm5/b;

    invoke-direct {v0, p0}, Lm5/b;-><init>(Lm5/d;)V

    return-object v0
.end method

.method public e()Lp5/b;
    .registers 2

    .line 1
    new-instance v0, Lm5/c;

    invoke-direct {v0, p0}, Lm5/c;-><init>(Lm5/d;)V

    return-object v0
.end method

###### Class m5.a (m5.a)
.class public final synthetic Lm5/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/a$a;


# instance fields
.field public final synthetic a:Lm5/d;


# direct methods
.method public synthetic constructor <init>(Lm5/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/a;->a:Lm5/d;

    return-void
.end method


# virtual methods
.method public final a(Lk6/b;)V
    .registers 3

    iget-object v0, p0, Lm5/a;->a:Lm5/d;

    invoke-static {v0, p1}, Lm5/d;->a(Lm5/d;Lk6/b;)V

    return-void
.end method

###### Class m5.b (m5.b)
.class public final synthetic Lm5/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lo5/a;


# instance fields
.field public final synthetic a:Lm5/d;


# direct methods
.method public synthetic constructor <init>(Lm5/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/b;->a:Lm5/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lm5/b;->a:Lm5/d;

    invoke-static {v0, p1, p2}, Lm5/d;->b(Lm5/d;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

###### Class m5.c (m5.c)
.class public final synthetic Lm5/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lp5/b;


# instance fields
.field public final synthetic a:Lm5/d;


# direct methods
.method public synthetic constructor <init>(Lm5/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/c;->a:Lm5/d;

    return-void
.end method


# virtual methods
.method public final a(Lp5/a;)V
    .registers 3

    iget-object v0, p0, Lm5/c;->a:Lm5/d;

    invoke-static {v0, p1}, Lm5/d;->c(Lm5/d;Lp5/a;)V

    return-void
.end method
