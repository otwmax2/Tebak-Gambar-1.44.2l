###### Class r3.c (r3.c)
.class public Lr3/c;
.super Ljava/lang/Object;
.source "DefaultScheduler.java"

# interfaces
.implements Lr3/e;


# static fields
.field private static final f:Ljava/util/logging/Logger;


# instance fields
.field private final a:Ls3/y;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lm3/e;

.field private final d:Lt3/d;

.field private final e:Lu3/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ll3/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lr3/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lm3/e;Ls3/y;Lt3/d;Lu3/b;)V
    .registers 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr3/c;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lr3/c;->c:Lm3/e;

    .line 4
    iput-object p3, p0, Lr3/c;->a:Ls3/y;

    .line 5
    iput-object p4, p0, Lr3/c;->d:Lt3/d;

    .line 6
    iput-object p5, p0, Lr3/c;->e:Lu3/b;

    return-void
.end method

.method public static synthetic b(Lr3/c;Ll3/p;Lj3/h;Ll3/i;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lr3/c;->e(Ll3/p;Lj3/h;Ll3/i;)V

    return-void
.end method

.method public static synthetic c(Lr3/c;Ll3/p;Ll3/i;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lr3/c;->d(Ll3/p;Ll3/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Ll3/p;Ll3/i;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lr3/c;->d:Lt3/d;

    invoke-interface {v0, p1, p2}, Lt3/d;->A3(Ll3/p;Ll3/i;)Lt3/k;

    .line 2
    iget-object p2, p0, Lr3/c;->a:Ls3/y;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Ls3/y;->b(Ll3/p;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic e(Ll3/p;Lj3/h;Ll3/i;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lr3/c;->c:Lm3/e;

    .line 2
    invoke-virtual {p1}, Ll3/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lm3/e;->a(Ljava/lang/String;)Lm3/m;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string p3, "Transport backend \'%s\' is not registered"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Ll3/p;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 4
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object p3, Lr3/c;->f:Ljava/util/logging/Logger;

    invoke-virtual {p3, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 6
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lj3/h;->a(Ljava/lang/Exception;)V

    return-void

    .line 7
    :cond_2a
    invoke-interface {v0, p3}, Lm3/m;->a(Ll3/i;)Ll3/i;

    move-result-object p3

    .line 8
    iget-object v0, p0, Lr3/c;->e:Lu3/b;

    new-instance v1, Lr3/b;

    invoke-direct {v1, p0, p1, p3}, Lr3/b;-><init>(Lr3/c;Ll3/p;Ll3/i;)V

    invoke-interface {v0, v1}, Lu3/b;->b(Lu3/b$a;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    invoke-interface {p2, p1}, Lj3/h;->a(Ljava/lang/Exception;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_5b

    :catch_3d
    move-exception p1

    .line 10
    sget-object p3, Lr3/c;->f:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error scheduling event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 11
    invoke-interface {p2, p1}, Lj3/h;->a(Ljava/lang/Exception;)V

    :goto_5b
    return-void
.end method


# virtual methods
.method public a(Ll3/p;Ll3/i;Lj3/h;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lr3/c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lr3/a;

    invoke-direct {v1, p0, p1, p3, p2}, Lr3/a;-><init>(Lr3/c;Ll3/p;Lj3/h;Ll3/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class r3.a (r3.a)
.class public final synthetic Lr3/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lr3/c;

.field public final synthetic p:Ll3/p;

.field public final synthetic q:Lj3/h;

.field public final synthetic r:Ll3/i;


# direct methods
.method public synthetic constructor <init>(Lr3/c;Ll3/p;Lj3/h;Ll3/i;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/a;->o:Lr3/c;

    iput-object p2, p0, Lr3/a;->p:Ll3/p;

    iput-object p3, p0, Lr3/a;->q:Lj3/h;

    iput-object p4, p0, Lr3/a;->r:Ll3/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lr3/a;->o:Lr3/c;

    iget-object v1, p0, Lr3/a;->p:Ll3/p;

    iget-object v2, p0, Lr3/a;->q:Lj3/h;

    iget-object v3, p0, Lr3/a;->r:Ll3/i;

    invoke-static {v0, v1, v2, v3}, Lr3/c;->b(Lr3/c;Ll3/p;Lj3/h;Ll3/i;)V

    return-void
.end method

###### Class r3.b (r3.b)
.class public final synthetic Lr3/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lu3/b$a;


# instance fields
.field public final synthetic a:Lr3/c;

.field public final synthetic b:Ll3/p;

.field public final synthetic c:Ll3/i;


# direct methods
.method public synthetic constructor <init>(Lr3/c;Ll3/p;Ll3/i;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/b;->a:Lr3/c;

    iput-object p2, p0, Lr3/b;->b:Ll3/p;

    iput-object p3, p0, Lr3/b;->c:Ll3/i;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lr3/b;->a:Lr3/c;

    iget-object v1, p0, Lr3/b;->b:Ll3/p;

    iget-object v2, p0, Lr3/b;->c:Ll3/i;

    invoke-static {v0, v1, v2}, Lr3/c;->c(Lr3/c;Ll3/p;Ll3/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
