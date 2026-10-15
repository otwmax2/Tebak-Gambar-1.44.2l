###### Class s3.w (s3.w)
.class public Ls3/w;
.super Ljava/lang/Object;
.source "WorkInitializer.java"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lt3/d;

.field private final c:Ls3/y;

.field private final d:Lu3/b;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lt3/d;Ls3/y;Lu3/b;)V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/w;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Ls3/w;->b:Lt3/d;

    .line 4
    iput-object p3, p0, Ls3/w;->c:Ls3/y;

    .line 5
    iput-object p4, p0, Ls3/w;->d:Lu3/b;

    return-void
.end method

.method public static synthetic a(Ls3/w;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Ls3/w;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ls3/w;)V
    .registers 1

    invoke-direct {p0}, Ls3/w;->e()V

    return-void
.end method

.method private synthetic d()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Ls3/w;->b:Lt3/d;

    invoke-interface {v0}, Lt3/d;->Y0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/p;

    .line 2
    iget-object v2, p0, Ls3/w;->c:Ls3/y;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Ls3/y;->b(Ll3/p;I)V

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic e()V
    .registers 3

    .line 1
    iget-object v0, p0, Ls3/w;->d:Lu3/b;

    new-instance v1, Ls3/v;

    invoke-direct {v1, p0}, Ls3/v;-><init>(Ls3/w;)V

    invoke-interface {v0, v1}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Ls3/w;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ls3/u;

    invoke-direct {v1, p0}, Ls3/u;-><init>(Ls3/w;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class s3.u (s3.u)
.class public final synthetic Ls3/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Ls3/w;


# direct methods
.method public synthetic constructor <init>(Ls3/w;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/u;->o:Ls3/w;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Ls3/u;->o:Ls3/w;

    invoke-static {v0}, Ls3/w;->b(Ls3/w;)V

    return-void
.end method

###### Class s3.v (s3.v)
.class public final synthetic Ls3/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Ls3/w;


# direct methods
.method public synthetic constructor <init>(Ls3/w;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/v;->a:Ls3/w;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ls3/v;->a:Ls3/w;

    invoke-static {v0}, Ls3/w;->a(Ls3/w;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
