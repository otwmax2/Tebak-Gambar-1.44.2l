###### Class ea.b (ea.b)
.class public final Lea/b;
.super Lk9/a;
.source "AndroidExceptionPreHandler.kt"

# interfaces
.implements Lda/j0;


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lda/j0;->l:Lda/j0$a;

    invoke-direct {p0, v0}, Lk9/a;-><init>(Lk9/g$c;)V

    .line 2
    iput-object p0, p0, Lea/b;->_preHandler:Ljava/lang/Object;

    return-void
.end method

.method private final m()Ljava/lang/reflect/Method;
    .registers 6

    .line 1
    iget-object v0, p0, Lea/b;->_preHandler:Ljava/lang/Object;

    if-eq v0, p0, :cond_7

    .line 2
    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    .line 3
    :try_start_8
    const-class v1, Ljava/lang/Thread;

    const-string v2, "getUncaughtExceptionPreHandler"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2b

    if-eqz v2, :cond_28

    const/4 v3, 0x1

    :cond_28
    if-eqz v3, :cond_2b

    move-object v0, v1

    .line 6
    :catchall_2b
    :cond_2b
    iput-object v0, p0, Lea/b;->_preHandler:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public l(Lk9/g;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x1a

    if-gt v1, p1, :cond_d

    const/16 v1, 0x1c

    if-ge p1, v1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_2f

    .line 2
    invoke-direct {p0}, Lea/b;->m()Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1f

    :cond_1e
    move-object p1, v1

    :goto_1f
    instance-of v0, p1, Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_26

    move-object v1, p1

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    :cond_26
    if-eqz v1, :cond_2f

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2f
    return-void
.end method
