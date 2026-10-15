###### Class t1.b (t1.b)
.class final Lt1/b;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/b$b;
    }
.end annotation


# static fields
.field private static final d:Lt1/b;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lt1/b;

    invoke-direct {v0}, Lt1/b;-><init>()V

    sput-object v0, Lt1/b;->d:Lt1/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lt1/b;->c()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_12

    :cond_e
    invoke-static {}, Lt1/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_12
    iput-object v0, p0, Lt1/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lt1/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v0, Lt1/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt1/b$b;-><init>(Lt1/b$a;)V

    iput-object v0, p0, Lt1/b;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    sget-object v0, Lt1/b;->d:Lt1/b;

    iget-object v0, v0, Lt1/b;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static b()Ljava/util/concurrent/Executor;
    .registers 1

    .line 1
    sget-object v0, Lt1/b;->d:Lt1/b;

    iget-object v0, v0, Lt1/b;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static c()Z
    .registers 2

    const-string v0, "java.runtime.name"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_a
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static d()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 1
    sget-object v0, Lt1/b;->d:Lt1/b;

    iget-object v0, v0, Lt1/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

###### Class t1.b.a (t1.b$a)
.class synthetic Lt1/b$a;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class t1.b.ExecutorC0254b (t1.b$b)
.class Lt1/b$b;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private o:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lt1/b$b;->o:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lt1/b$a;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lt1/b$b;-><init>()V

    return-void
.end method

.method private a()I
    .registers 4

    .line 1
    iget-object v0, p0, Lt1/b$b;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1d

    .line 4
    iget-object v1, p0, Lt1/b$b;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_26

    .line 5
    :cond_1d
    iget-object v1, p0, Lt1/b$b;->o:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_26
    return v0
.end method

.method private b()I
    .registers 4

    .line 1
    iget-object v0, p0, Lt1/b$b;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v1, p0, Lt1/b$b;->o:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lt1/b$b;->b()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_c

    .line 2
    :try_start_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_13

    .line 3
    :cond_c
    invoke-static {}, Lt1/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 4
    :goto_13
    invoke-direct {p0}, Lt1/b$b;->a()I

    return-void

    :catchall_17
    move-exception p1

    invoke-direct {p0}, Lt1/b$b;->a()I

    throw p1
.end method
