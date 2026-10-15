###### Class q5.p (q5.p)
.class Lq5/p;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"


# static fields
.field static final t:Ljava/io/FilenameFilter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lq5/x;

.field private final c:Lq5/s;

.field private final d:Lr5/m;

.field private final e:Lq5/n;

.field private final f:Lq5/b0;

.field private final g:Lv5/f;

.field private final h:Lq5/a;

.field private final i:Lr5/e;

.field private final j:Ln5/a;

.field private final k:Lo5/a;

.field private final l:Lq5/m;

.field private final m:Lq5/j0;

.field private n:Lq5/v;

.field private o:Lx5/i;

.field final p:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final q:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final r:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lq5/o;->a:Lq5/o;

    sput-object v0, Lq5/p;->t:Ljava/io/FilenameFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lq5/n;Lq5/b0;Lq5/x;Lv5/f;Lq5/s;Lq5/a;Lr5/m;Lr5/e;Lq5/j0;Ln5/a;Lo5/a;Lq5/m;)V
    .registers 16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lq5/p;->o:Lx5/i;

    .line 3
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lq5/p;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lq5/p;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lq5/p;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lq5/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput-object p1, p0, Lq5/p;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lq5/p;->e:Lq5/n;

    .line 9
    iput-object p3, p0, Lq5/p;->f:Lq5/b0;

    .line 10
    iput-object p4, p0, Lq5/p;->b:Lq5/x;

    .line 11
    iput-object p5, p0, Lq5/p;->g:Lv5/f;

    .line 12
    iput-object p6, p0, Lq5/p;->c:Lq5/s;

    .line 13
    iput-object p7, p0, Lq5/p;->h:Lq5/a;

    .line 14
    iput-object p8, p0, Lq5/p;->d:Lr5/m;

    .line 15
    iput-object p9, p0, Lq5/p;->i:Lr5/e;

    .line 16
    iput-object p11, p0, Lq5/p;->j:Ln5/a;

    .line 17
    iput-object p12, p0, Lq5/p;->k:Lo5/a;

    .line 18
    iput-object p13, p0, Lq5/p;->l:Lq5/m;

    .line 19
    iput-object p10, p0, Lq5/p;->m:Lq5/j0;

    return-void
.end method

.method private static A()Z
    .registers 1

    :try_start_0
    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method private B()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lq5/p;->m:Lq5/j0;

    invoke-virtual {v0}, Lq5/j0;->p()Ljava/util/SortedSet;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method private static C()J
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lq5/p;->F(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static D(Ln5/h;Ljava/lang/String;Lv5/f;[B)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln5/h;",
            "Ljava/lang/String;",
            "Lv5/f;",
            "[B)",
            "Ljava/util/List<",
            "Lq5/e0;",
            ">;"
        }
    .end annotation

    const-string v0, "user-data"

    .line 1
    invoke-virtual {p2, p1, v0}, Lv5/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "keys"

    .line 2
    invoke-virtual {p2, p1, v1}, Lv5/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "rollouts-state"

    .line 3
    invoke-virtual {p2, p1, v3}, Lv5/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v3, Lq5/g;

    const-string v4, "logs_file"

    const-string v5, "logs"

    invoke-direct {v3, v4, v5, p3}, Lq5/g;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p3, Lq5/a0;

    .line 7
    invoke-interface {p0}, Ln5/h;->g()Ljava/io/File;

    move-result-object v3

    const-string v4, "crash_meta_file"

    const-string v5, "metadata"

    invoke-direct {p3, v4, v5, v3}, Lq5/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 8
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p3, Lq5/a0;

    .line 10
    invoke-interface {p0}, Ln5/h;->f()Ljava/io/File;

    move-result-object v3

    const-string v4, "session_meta_file"

    const-string v5, "session"

    invoke-direct {p3, v4, v5, v3}, Lq5/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 11
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p3, Lq5/a0;

    .line 13
    invoke-interface {p0}, Ln5/h;->a()Ljava/io/File;

    move-result-object v3

    const-string v4, "app_meta_file"

    const-string v5, "app"

    invoke-direct {p3, v4, v5, v3}, Lq5/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 14
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p3, Lq5/a0;

    .line 16
    invoke-interface {p0}, Ln5/h;->c()Ljava/io/File;

    move-result-object v3

    const-string v4, "device_meta_file"

    const-string v5, "device"

    invoke-direct {p3, v4, v5, v3}, Lq5/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 17
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance p3, Lq5/a0;

    .line 19
    invoke-interface {p0}, Ln5/h;->b()Ljava/io/File;

    move-result-object v3

    const-string v4, "os_meta_file"

    const-string v5, "os"

    invoke-direct {p3, v4, v5, v3}, Lq5/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 20
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {p0}, Lq5/p;->P(Ln5/h;)Lq5/e0;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance p0, Lq5/a0;

    const-string p3, "user_meta_file"

    const-string v3, "user"

    invoke-direct {p0, p3, v3, v0}, Lq5/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p0, Lq5/a0;

    const-string p3, "keys_file"

    invoke-direct {p0, p3, v1, v2}, Lq5/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance p0, Lq5/a0;

    const-string p3, "rollouts_file"

    const-string v0, "rollouts"

    invoke-direct {p0, p3, v0, p1}, Lq5/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private E(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 2
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "Couldn\'t get Class Loader"

    invoke-virtual {p1, v0}, Ln5/g;->k(Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_15
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_25

    .line 4
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "No version control information found"

    invoke-virtual {p1, v0}, Ln5/g;->g(Ljava/lang/String;)V

    return-object v1

    :cond_25
    return-object p1
.end method

.method private static F(J)J
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static synthetic K(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    const-string p0, ".ae"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private M(J)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/p;->A()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string p2, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-virtual {p1, p2}, Ln5/g;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :cond_15
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Logging app exception event to Firebase Analytics"

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 6
    new-instance v1, Lq5/p$h;

    invoke-direct {v1, p0, p1, p2}, Lq5/p$h;-><init>(Lq5/p;J)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private N()Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lq5/p;->L()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 4
    :try_start_19
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 5
    invoke-direct {p0, v3, v4}, Lq5/p;->M(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_2d} :catch_2e

    goto :goto_4a

    .line 6
    :catch_2e
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse app exception timestamp from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln5/g;->k(Ljava/lang/String;)V

    .line 8
    :goto_4a
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_d

    .line 9
    :cond_4e
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private static O(Ljava/lang/String;Ljava/io/File;Ls5/f0$a;)Z
    .registers 6

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2
    :cond_8
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No minidump data found for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->k(Ljava/lang/String;)V

    :cond_20
    if-nez p2, :cond_3a

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Tombstones data found for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln5/g;->g(Ljava/lang/String;)V

    :cond_3a
    if-eqz p1, :cond_42

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_46

    :cond_42
    if-nez p2, :cond_46

    const/4 p0, 0x1

    goto :goto_47

    :cond_46
    const/4 p0, 0x0

    :goto_47
    return p0
.end method

.method private static P(Ln5/h;)Lq5/e0;
    .registers 5

    .line 1
    invoke-interface {p0}, Ln5/h;->e()Ljava/io/File;

    move-result-object p0

    const-string v0, "minidump"

    const-string v1, "minidump_file"

    if-eqz p0, :cond_17

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_17

    .line 3
    :cond_11
    new-instance v2, Lq5/a0;

    invoke-direct {v2, v1, v0, p0}, Lq5/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_22

    .line 4
    :cond_17
    :goto_17
    new-instance v2, Lq5/g;

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/4 v3, 0x0

    aput-byte v3, p0, v3

    invoke-direct {v2, v1, v0, p0}, Lq5/g;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    :goto_22
    return-object v2
.end method

.method private static R(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 2
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 4
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private X()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/p;->b:Lq5/x;

    invoke-virtual {v0}, Lq5/x;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Automatic data collection is enabled. Allowing upload."

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lq5/p;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1f
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Automatic data collection is disabled."

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Notifying that unsent reports are available."

    invoke-virtual {v0, v1}, Ln5/g;->i(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lq5/p;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lq5/p;->b:Lq5/x;

    .line 9
    invoke-virtual {v0}, Lq5/x;->h()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lq5/p$c;

    invoke-direct {v1, p0}, Lq5/p$c;-><init>(Lq5/p;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->u(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 11
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    invoke-virtual {v1, v2}, Ln5/g;->b(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lq5/p;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-static {v0, v1}, Lq5/q0;->n(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private Y(Ljava/lang/String;)V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4a

    .line 2
    iget-object v0, p0, Lq5/p;->a:Landroid/content/Context;

    const-string v1, "activity"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2, v2}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_31

    .line 6
    new-instance v1, Lr5/e;

    iget-object v2, p0, Lq5/p;->g:Lv5/f;

    invoke-direct {v1, v2, p1}, Lr5/e;-><init>(Lv5/f;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lq5/p;->g:Lv5/f;

    iget-object v3, p0, Lq5/p;->e:Lq5/n;

    .line 8
    invoke-static {p1, v2, v3}, Lr5/m;->j(Ljava/lang/String;Lv5/f;Lq5/n;)Lr5/m;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lq5/p;->m:Lq5/j0;

    invoke-virtual {v3, p1, v0, v1, v2}, Lq5/j0;->v(Ljava/lang/String;Ljava/util/List;Lr5/e;Lr5/m;)V

    goto :goto_62

    .line 10
    :cond_31
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ApplicationExitInfo available. Session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln5/g;->i(Ljava/lang/String;)V

    goto :goto_62

    .line 11
    :cond_4a
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANR feature enabled, but device is API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ln5/g;->i(Ljava/lang/String;)V

    :goto_62
    return-void
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lq5/p;->K(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(J)J
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lq5/p;->F(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic c(Lq5/p;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lq5/p;->B()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Ljava/util/List;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lq5/p;->r(Ljava/util/List;)V

    return-void
.end method

.method static synthetic e(Lq5/p;)Lr5/e;
    .registers 1

    .line 1
    iget-object p0, p0, Lq5/p;->i:Lr5/e;

    return-object p0
.end method

.method static synthetic f(Lq5/p;)Lo5/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lq5/p;->k:Lo5/a;

    return-object p0
.end method

.method static synthetic g(Lq5/p;)Lq5/s;
    .registers 1

    .line 1
    iget-object p0, p0, Lq5/p;->c:Lq5/s;

    return-object p0
.end method

.method static synthetic h(Lq5/p;)Lq5/j0;
    .registers 1

    .line 1
    iget-object p0, p0, Lq5/p;->m:Lq5/j0;

    return-object p0
.end method

.method static synthetic i(Lq5/p;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lq5/p;->w(J)V

    return-void
.end method

.method static synthetic j(Lq5/p;)Lq5/b0;
    .registers 1

    .line 1
    iget-object p0, p0, Lq5/p;->f:Lq5/b0;

    return-object p0
.end method

.method static synthetic k(Lq5/p;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lq5/p;->v(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic l(Lq5/p;)Lq5/x;
    .registers 1

    .line 1
    iget-object p0, p0, Lq5/p;->b:Lq5/x;

    return-object p0
.end method

.method static synthetic m(Lq5/p;)Lq5/n;
    .registers 1

    .line 1
    iget-object p0, p0, Lq5/p;->e:Lq5/n;

    return-object p0
.end method

.method static synthetic n(Lq5/p;)Lcom/google/android/gms/tasks/Task;
    .registers 1

    .line 1
    invoke-direct {p0}, Lq5/p;->N()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static o(Lq5/b0;Lq5/a;)Ls5/g0$a;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lq5/b0;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lq5/a;->f:Ljava/lang/String;

    iget-object v2, p1, Lq5/a;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lq5/b0;->a()Lq5/c0$a;

    move-result-object p0

    invoke-virtual {p0}, Lq5/c0$a;->c()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p1, Lq5/a;->d:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lq5/y;->c(Ljava/lang/String;)Lq5/y;

    move-result-object p0

    invoke-virtual {p0}, Lq5/y;->e()I

    move-result v4

    iget-object v5, p1, Lq5/a;->h:Ln5/f;

    .line 4
    invoke-static/range {v0 .. v5}, Ls5/g0$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILn5/f;)Ls5/g0$a;

    move-result-object p0

    return-object p0
.end method

.method private static p(Landroid/content/Context;)Ls5/g0$b;
    .registers 17

    .line 1
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    mul-long v10, v1, v3

    .line 3
    invoke-static {}, Lq5/i;->k()I

    move-result v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 5
    invoke-static/range {p0 .. p0}, Lq5/i;->b(Landroid/content/Context;)J

    move-result-wide v8

    .line 6
    invoke-static {}, Lq5/i;->w()Z

    move-result v12

    .line 7
    invoke-static {}, Lq5/i;->l()I

    move-result v13

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 8
    invoke-static/range {v5 .. v15}, Ls5/g0$b;->c(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)Ls5/g0$b;

    move-result-object v0

    return-object v0
.end method

.method private static q()Ls5/g0$c;
    .registers 3

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 2
    invoke-static {}, Lq5/i;->x()Z

    move-result v2

    .line 3
    invoke-static {v0, v1, v2}, Ls5/g0$c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ls5/g0$c;

    move-result-object v0

    return-object v0
.end method

.method private static r(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    :cond_14
    return-void
.end method

.method private u(ZLx5/i;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lq5/p;->m:Lq5/j0;

    .line 2
    invoke-virtual {v1}, Lq5/j0;->p()Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_1b

    .line 4
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string p2, "No open sessions to be closed."

    invoke-virtual {p1, p2}, Ln5/g;->i(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1b
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-interface {p2}, Lx5/i;->b()Lx5/d;

    move-result-object p2

    iget-object p2, p2, Lx5/d;->b:Lx5/d$a;

    iget-boolean p2, p2, Lx5/d$a;->b:Z

    if-eqz p2, :cond_2f

    .line 7
    invoke-direct {p0, v1}, Lq5/p;->Y(Ljava/lang/String;)V

    goto :goto_38

    .line 8
    :cond_2f
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p2

    const-string v2, "ANR feature disabled."

    invoke-virtual {p2, v2}, Ln5/g;->i(Ljava/lang/String;)V

    .line 9
    :goto_38
    iget-object p2, p0, Lq5/p;->j:Ln5/a;

    invoke-interface {p2, v1}, Ln5/a;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 10
    invoke-direct {p0, v1}, Lq5/p;->y(Ljava/lang/String;)V

    :cond_43
    const/4 p2, 0x0

    if-eqz p1, :cond_4f

    const/4 p1, 0x0

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    goto :goto_54

    .line 12
    :cond_4f
    iget-object p1, p0, Lq5/p;->l:Lq5/m;

    invoke-virtual {p1, p2}, Lq5/m;->e(Ljava/lang/String;)V

    .line 13
    :goto_54
    iget-object p1, p0, Lq5/p;->m:Lq5/j0;

    invoke-static {}, Lq5/p;->C()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lq5/j0;->k(JLjava/lang/String;)V

    return-void
.end method

.method private v(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 11

    .line 1
    invoke-static {}, Lq5/p;->C()J

    move-result-wide v6

    .line 2
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening a new session with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {}, Lq5/r;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Crashlytics Android SDK/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v0, p0, Lq5/p;->f:Lq5/b0;

    iget-object v1, p0, Lq5/p;->h:Lq5/a;

    invoke-static {v0, v1}, Lq5/p;->o(Lq5/b0;Lq5/a;)Ls5/g0$a;

    move-result-object v0

    .line 6
    invoke-static {}, Lq5/p;->q()Ls5/g0$c;

    move-result-object v1

    .line 7
    iget-object v3, p0, Lq5/p;->a:Landroid/content/Context;

    invoke-static {v3}, Lq5/p;->p(Landroid/content/Context;)Ls5/g0$b;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lq5/p;->j:Ln5/a;

    .line 9
    invoke-static {v0, v1, v3}, Ls5/g0;->b(Ls5/g0$a;Ls5/g0$c;Ls5/g0$b;)Ls5/g0;

    move-result-object v5

    move-object v0, v4

    move-object v1, p1

    move-wide v3, v6

    .line 10
    invoke-interface/range {v0 .. v5}, Ln5/a;->d(Ljava/lang/String;Ljava/lang/String;JLs5/g0;)V

    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_59

    if-eqz p1, :cond_59

    .line 12
    iget-object p2, p0, Lq5/p;->d:Lr5/m;

    invoke-virtual {p2, p1}, Lr5/m;->o(Ljava/lang/String;)V

    .line 13
    :cond_59
    iget-object p2, p0, Lq5/p;->i:Lr5/e;

    invoke-virtual {p2, p1}, Lr5/e;->e(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lq5/p;->l:Lq5/m;

    invoke-virtual {p2, p1}, Lq5/m;->e(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lq5/p;->m:Lq5/j0;

    invoke-virtual {p2, p1, v6, v7}, Lq5/j0;->q(Ljava/lang/String;J)V

    return-void
.end method

.method private w(J)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lq5/p;->g:Lv5/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".ae"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv5/f;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_30

    .line 2
    :cond_1e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Create new file failed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception p1

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p2

    const-string v0, "Could not create app exception marker file."

    invoke-virtual {p2, v0, p1}, Ln5/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method private y(Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing native report for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->i(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lq5/p;->j:Ln5/a;

    .line 3
    invoke-interface {v0, p1}, Ln5/a;->a(Ljava/lang/String;)Ln5/h;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ln5/h;->e()Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Ln5/h;->d()Ls5/f0$a;

    move-result-object v2

    .line 6
    invoke-static {p1, v1, v2}, Lq5/p;->O(Ljava/lang/String;Ljava/io/File;Ls5/f0$a;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 7
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "No native core present"

    invoke-virtual {p1, v0}, Ln5/g;->k(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_36
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 9
    new-instance v1, Lr5/e;

    iget-object v5, p0, Lq5/p;->g:Lv5/f;

    invoke-direct {v1, v5, p1}, Lr5/e;-><init>(Lv5/f;Ljava/lang/String;)V

    .line 10
    iget-object v5, p0, Lq5/p;->g:Lv5/f;

    invoke-virtual {v5, p1}, Lv5/f;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_57

    .line 12
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "Couldn\'t create directory to store native session files, aborting."

    invoke-virtual {p1, v0}, Ln5/g;->k(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_57
    invoke-direct {p0, v3, v4}, Lq5/p;->w(J)V

    .line 14
    iget-object v3, p0, Lq5/p;->g:Lv5/f;

    .line 15
    invoke-virtual {v1}, Lr5/e;->b()[B

    move-result-object v4

    .line 16
    invoke-static {v0, p1, v3, v4}, Lq5/p;->D(Ln5/h;Ljava/lang/String;Lv5/f;[B)Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-static {v5, v0}, Lq5/f0;->b(Ljava/io/File;Ljava/util/List;)V

    .line 18
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v3

    const-string v4, "CrashlyticsController#finalizePreviousNativeSession"

    invoke-virtual {v3, v4}, Ln5/g;->b(Ljava/lang/String;)V

    .line 19
    iget-object v3, p0, Lq5/p;->m:Lq5/j0;

    invoke-virtual {v3, p1, v0, v2}, Lq5/j0;->j(Ljava/lang/String;Ljava/util/List;Ls5/f0$a;)V

    .line 20
    invoke-virtual {v1}, Lr5/e;->a()V

    return-void
.end method


# virtual methods
.method G()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "META-INF/version-control-info.textproto"

    .line 1
    invoke-direct {p0, v0}, Lq5/p;->E(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    const-string v2, "Read version control info"

    invoke-virtual {v1, v2}, Ln5/g;->b(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lq5/p;->R(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method H(Lx5/i;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lq5/p;->I(Lx5/i;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method declared-synchronized I(Lx5/i;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .registers 15

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling uncaught exception \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4
    iget-object v0, p0, Lq5/p;->e:Lq5/n;

    new-instance v1, Lq5/p$b;

    move-object v2, v1

    move-object v3, p0

    move-object v6, p3

    move-object v7, p2

    move-object v8, p1

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lq5/p$b;-><init>(Lq5/p;JLjava/lang/Throwable;Ljava/lang/Thread;Lx5/i;Z)V

    .line 5
    invoke-virtual {v0, v1}, Lq5/n;->i(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_54

    .line 6
    :try_start_3a
    invoke-static {p1}, Lq5/q0;->f(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3a .. :try_end_3d} :catch_49
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_54

    goto :goto_52

    :catch_3e
    move-exception p1

    .line 7
    :try_start_3f
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p2

    const-string p3, "Error handling uncaught exception"

    invoke-virtual {p2, p3, p1}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_52

    .line 8
    :catch_49
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string p2, "Cannot send reports. Timed out while fetching settings."

    invoke-virtual {p1, p2}, Ln5/g;->d(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_54

    .line 9
    :goto_52
    monitor-exit p0

    return-void

    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method J()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lq5/p;->n:Lq5/v;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lq5/v;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method L()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/p;->g:Lv5/f;

    sget-object v1, Lq5/p;->t:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Lv5/f;->f(Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method Q(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lq5/p;->e:Lq5/n;

    new-instance v1, Lq5/p$g;

    invoke-direct {v1, p0, p1}, Lq5/p$g;-><init>(Lq5/p;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lq5/n;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method S()V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lq5/p;->G()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "com.crashlytics.version-control-info"

    .line 2
    invoke-virtual {p0, v1, v0}, Lq5/p;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Saved version control info"

    invoke-virtual {v0, v1}, Ln5/g;->g(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception v0

    .line 4
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    const-string v2, "Unable to save version control info"

    invoke-virtual {v1, v2, v0}, Ln5/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method T(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lq5/p;->d:Lr5/m;

    invoke-virtual {v0, p1, p2}, Lr5/m;->m(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1c

    :catch_6
    move-exception p1

    .line 2
    iget-object p2, p0, Lq5/p;->a:Landroid/content/Context;

    if-eqz p2, :cond_13

    invoke-static {p2}, Lq5/i;->u(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_13

    .line 3
    :cond_12
    throw p1

    .line 4
    :cond_13
    :goto_13
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string p2, "Attempting to set custom attribute with null key, ignoring."

    invoke-virtual {p1, p2}, Ln5/g;->d(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method U(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lq5/p;->d:Lr5/m;

    invoke-virtual {v0, p1, p2}, Lr5/m;->n(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1c

    :catch_6
    move-exception p1

    .line 2
    iget-object p2, p0, Lq5/p;->a:Landroid/content/Context;

    if-eqz p2, :cond_13

    invoke-static {p2}, Lq5/i;->u(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_13

    .line 3
    :cond_12
    throw p1

    .line 4
    :cond_13
    :goto_13
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string p2, "Attempting to set custom attribute with null key, ignoring."

    invoke-virtual {p1, p2}, Ln5/g;->d(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method V(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq5/p;->d:Lr5/m;

    invoke-virtual {v0, p1}, Lr5/m;->p(Ljava/lang/String;)V

    return-void
.end method

.method W(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TaskMainThread"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lx5/d;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/p;->m:Lq5/j0;

    invoke-virtual {v0}, Lq5/j0;->n()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "No crash reports are available to be sent."

    invoke-virtual {p1, v0}, Ln5/g;->i(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lq5/p;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1e
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Crash reports are available to be sent."

    invoke-virtual {v0, v1}, Ln5/g;->i(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lq5/p;->X()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lq5/p$d;

    invoke-direct {v1, p0, p1}, Lq5/p$d;-><init>(Lq5/p;Lcom/google/android/gms/tasks/Task;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->u(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method Z(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2
    iget-object v6, p0, Lq5/p;->e:Lq5/n;

    new-instance v7, Lq5/p$f;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lq5/p$f;-><init>(Lq5/p;JLjava/lang/Throwable;Ljava/lang/Thread;)V

    invoke-virtual {v6, v7}, Lq5/n;->g(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method a0(JLjava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lq5/p;->e:Lq5/n;

    new-instance v1, Lq5/p$e;

    invoke-direct {v1, p0, p1, p2, p3}, Lq5/p$e;-><init>(Lq5/p;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lq5/n;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method s()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lq5/p;->c:Lq5/s;

    invoke-virtual {v0}, Lq5/s;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 2
    invoke-direct {p0}, Lq5/p;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3
    iget-object v2, p0, Lq5/p;->j:Ln5/a;

    invoke-interface {v2, v0}, Ln5/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1

    .line 4
    :cond_1a
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v2, "Found previous crash marker."

    invoke-virtual {v0, v2}, Ln5/g;->i(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lq5/p;->c:Lq5/s;

    invoke-virtual {v0}, Lq5/s;->d()Z

    return v1
.end method

.method t(Lx5/i;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lq5/p;->u(ZLx5/i;)V

    return-void
.end method

.method x(Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Lx5/i;)V
    .registers 6

    .line 1
    iput-object p3, p0, Lq5/p;->o:Lx5/i;

    .line 2
    invoke-virtual {p0, p1}, Lq5/p;->Q(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lq5/p$a;

    invoke-direct {p1, p0}, Lq5/p$a;-><init>(Lq5/p;)V

    .line 4
    new-instance v0, Lq5/v;

    iget-object v1, p0, Lq5/p;->j:Ln5/a;

    invoke-direct {v0, p1, p3, p2, v1}, Lq5/v;-><init>(Lq5/v$a;Lx5/i;Ljava/lang/Thread$UncaughtExceptionHandler;Ln5/a;)V

    iput-object v0, p0, Lq5/p;->n:Lq5/v;

    .line 5
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method z(Lx5/i;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lq5/p;->e:Lq5/n;

    invoke-virtual {v0}, Lq5/n;->b()V

    .line 2
    invoke-virtual {p0}, Lq5/p;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "Skipping session finalization because a crash has already occurred."

    invoke-virtual {p1, v0}, Ln5/g;->k(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_16
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v2, "Finalizing previously open sessions."

    invoke-virtual {v0, v2}, Ln5/g;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    :try_start_20
    invoke-direct {p0, v0, p1}, Lq5/p;->u(ZLx5/i;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_2d

    .line 6
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v1, "Closed all previously open sessions."

    invoke-virtual {p1, v1}, Ln5/g;->i(Ljava/lang/String;)V

    return v0

    :catch_2d
    move-exception p1

    .line 7
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v2, "Unable to finalize previously open sessions."

    invoke-virtual {v0, v2, p1}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

###### Class q5.p.a (q5.p$a)
.class Lq5/p$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lq5/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p;->x(Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Lx5/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq5/p;


# direct methods
.method constructor <init>(Lq5/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lq5/p$a;->a:Lq5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx5/i;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lq5/p$a;->a:Lq5/p;

    invoke-virtual {v0, p1, p2, p3}, Lq5/p;->H(Lx5/i;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class q5.p.b (q5.p$b)
.class Lq5/p$b;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p;->I(Lx5/i;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Ljava/lang/Thread;

.field final synthetic d:Lx5/i;

.field final synthetic e:Z

.field final synthetic f:Lq5/p;


# direct methods
.method constructor <init>(Lq5/p;JLjava/lang/Throwable;Ljava/lang/Thread;Lx5/i;Z)V
    .registers 8

    .line 1
    iput-object p1, p0, Lq5/p$b;->f:Lq5/p;

    iput-wide p2, p0, Lq5/p$b;->a:J

    iput-object p4, p0, Lq5/p$b;->b:Ljava/lang/Throwable;

    iput-object p5, p0, Lq5/p$b;->c:Ljava/lang/Thread;

    iput-object p6, p0, Lq5/p$b;->d:Lx5/i;

    iput-boolean p7, p0, Lq5/p$b;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lq5/p$b;->a:J

    invoke-static {v0, v1}, Lq5/p;->b(J)J

    move-result-wide v6

    .line 2
    iget-object v0, p0, Lq5/p$b;->f:Lq5/p;

    invoke-static {v0}, Lq5/p;->c(Lq5/p;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v2, "Tried to write a fatal exception while no session was open."

    .line 4
    invoke-virtual {v0, v2}, Ln5/g;->d(Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1d
    iget-object v2, p0, Lq5/p$b;->f:Lq5/p;

    invoke-static {v2}, Lq5/p;->g(Lq5/p;)Lq5/s;

    move-result-object v2

    invoke-virtual {v2}, Lq5/s;->a()Z

    .line 7
    iget-object v2, p0, Lq5/p$b;->f:Lq5/p;

    invoke-static {v2}, Lq5/p;->h(Lq5/p;)Lq5/j0;

    move-result-object v2

    iget-object v3, p0, Lq5/p$b;->b:Ljava/lang/Throwable;

    iget-object v4, p0, Lq5/p$b;->c:Ljava/lang/Thread;

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lq5/j0;->t(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    .line 8
    iget-object v2, p0, Lq5/p$b;->f:Lq5/p;

    iget-wide v3, p0, Lq5/p$b;->a:J

    invoke-static {v2, v3, v4}, Lq5/p;->i(Lq5/p;J)V

    .line 9
    iget-object v2, p0, Lq5/p$b;->f:Lq5/p;

    iget-object v3, p0, Lq5/p$b;->d:Lx5/i;

    invoke-virtual {v2, v3}, Lq5/p;->t(Lx5/i;)V

    .line 10
    iget-object v2, p0, Lq5/p$b;->f:Lq5/p;

    new-instance v3, Lq5/h;

    iget-object v4, p0, Lq5/p$b;->f:Lq5/p;

    invoke-static {v4}, Lq5/p;->j(Lq5/p;)Lq5/b0;

    move-result-object v4

    invoke-direct {v3, v4}, Lq5/h;-><init>(Lq5/b0;)V

    invoke-virtual {v3}, Lq5/h;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lq5/p$b;->e:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lq5/p;->k(Lq5/p;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    iget-object v2, p0, Lq5/p$b;->f:Lq5/p;

    invoke-static {v2}, Lq5/p;->l(Lq5/p;)Lq5/x;

    move-result-object v2

    invoke-virtual {v2}, Lq5/x;->d()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 13
    :cond_6d
    iget-object v1, p0, Lq5/p$b;->f:Lq5/p;

    invoke-static {v1}, Lq5/p;->m(Lq5/p;)Lq5/n;

    move-result-object v1

    invoke-virtual {v1}, Lq5/n;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lq5/p$b;->d:Lx5/i;

    .line 15
    invoke-interface {v2}, Lx5/i;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lq5/p$b$a;

    invoke-direct {v3, p0, v1, v0}, Lq5/p$b$a;-><init>(Lq5/p$b;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/tasks/Task;->v(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq5/p$b;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

###### Class q5.p.b.a (q5.p$b$a)
.class Lq5/p$b$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p$b;->a()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Lx5/d;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lq5/p$b;


# direct methods
.method constructor <init>(Lq5/p$b;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lq5/p$b$a;->c:Lq5/p$b;

    iput-object p2, p0, Lq5/p$b$a;->a:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lq5/p$b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lx5/d;

    invoke-virtual {p0, p1}, Lq5/p$b$a;->b(Lx5/d;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public b(Lx5/d;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx5/d;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v1, "Received null app settings, cannot send reports at crash time."

    .line 2
    invoke-virtual {p1, v1}, Ln5/g;->k(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/tasks/Task;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lq5/p$b$a;->c:Lq5/p$b;

    iget-object v2, v2, Lq5/p$b;->f:Lq5/p;

    .line 5
    invoke-static {v2}, Lq5/p;->n(Lq5/p;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lq5/p$b$a;->c:Lq5/p$b;

    iget-object v2, v2, Lq5/p$b;->f:Lq5/p;

    .line 6
    invoke-static {v2}, Lq5/p;->h(Lq5/p;)Lq5/j0;

    move-result-object v2

    iget-object v3, p0, Lq5/p$b$a;->a:Ljava/util/concurrent/Executor;

    .line 7
    iget-object v4, p0, Lq5/p$b$a;->c:Lq5/p$b;

    iget-boolean v4, v4, Lq5/p$b;->e:Z

    if-eqz v4, :cond_32

    iget-object v0, p0, Lq5/p$b$a;->b:Ljava/lang/String;

    .line 8
    :cond_32
    invoke-virtual {v2, v3, v0}, Lq5/j0;->y(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    aput-object v0, p1, v1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->g([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class q5.p.c (q5.p$c)
.class Lq5/p$c;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p;->X()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lq5/p;


# direct methods
.method constructor <init>(Lq5/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lq5/p$c;->a:Lq5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lq5/p$c;->b(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class q5.p.d (q5.p$d)
.class Lq5/p$d;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p;->W(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/Task;

.field final synthetic b:Lq5/p;


# direct methods
.method constructor <init>(Lq5/p;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq5/p$d;->b:Lq5/p;

    iput-object p2, p0, Lq5/p$d;->a:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lq5/p$d;->b(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/p$d;->b:Lq5/p;

    invoke-static {v0}, Lq5/p;->m(Lq5/p;)Lq5/n;

    move-result-object v0

    new-instance v1, Lq5/p$d$a;

    invoke-direct {v1, p0, p1}, Lq5/p$d$a;-><init>(Lq5/p$d;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lq5/n;->i(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class q5.p.d.a (q5.p$d$a)
.class Lq5/p$d$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p$d;->b(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lq5/p$d;


# direct methods
.method constructor <init>(Lq5/p$d;Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq5/p$d$a;->b:Lq5/p$d;

    iput-object p2, p0, Lq5/p$d$a;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/p$d$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_36

    .line 2
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Deleting cached crash reports..."

    invoke-virtual {v0, v1}, Ln5/g;->i(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lq5/p$d$a;->b:Lq5/p$d;

    iget-object v0, v0, Lq5/p$d;->b:Lq5/p;

    invoke-virtual {v0}, Lq5/p;->L()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lq5/p;->d(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lq5/p$d$a;->b:Lq5/p$d;

    iget-object v0, v0, Lq5/p$d;->b:Lq5/p;

    invoke-static {v0}, Lq5/p;->h(Lq5/p;)Lq5/j0;

    move-result-object v0

    invoke-virtual {v0}, Lq5/j0;->w()V

    .line 5
    iget-object v0, p0, Lq5/p$d$a;->b:Lq5/p$d;

    iget-object v0, v0, Lq5/p$d;->b:Lq5/p;

    iget-object v0, v0, Lq5/p;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 7
    :cond_36
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Sending cached crash reports..."

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lq5/p$d$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 9
    iget-object v1, p0, Lq5/p$d$a;->b:Lq5/p$d;

    iget-object v1, v1, Lq5/p$d;->b:Lq5/p;

    invoke-static {v1}, Lq5/p;->l(Lq5/p;)Lq5/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lq5/x;->c(Z)V

    .line 10
    iget-object v0, p0, Lq5/p$d$a;->b:Lq5/p$d;

    iget-object v0, v0, Lq5/p$d;->b:Lq5/p;

    invoke-static {v0}, Lq5/p;->m(Lq5/p;)Lq5/n;

    move-result-object v0

    invoke-virtual {v0}, Lq5/n;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lq5/p$d$a;->b:Lq5/p$d;

    iget-object v1, v1, Lq5/p$d;->a:Lcom/google/android/gms/tasks/Task;

    new-instance v2, Lq5/p$d$a$a;

    invoke-direct {v2, p0, v0}, Lq5/p$d$a$a;-><init>(Lq5/p$d$a;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->v(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq5/p$d$a;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

###### Class q5.p.d.a.C0221a (q5.p$d$a$a)
.class Lq5/p$d$a$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p$d$a;->a()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Lx5/d;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lq5/p$d$a;


# direct methods
.method constructor <init>(Lq5/p$d$a;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq5/p$d$a$a;->b:Lq5/p$d$a;

    iput-object p2, p0, Lq5/p$d$a$a;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lx5/d;

    invoke-virtual {p0, p1}, Lq5/p$d$a$a;->b(Lx5/d;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public b(Lx5/d;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx5/d;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v1, "Received null app settings at app startup. Cannot send cached reports"

    .line 2
    invoke-virtual {p1, v1}, Ln5/g;->k(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :cond_11
    iget-object p1, p0, Lq5/p$d$a$a;->b:Lq5/p$d$a;

    iget-object p1, p1, Lq5/p$d$a;->b:Lq5/p$d;

    iget-object p1, p1, Lq5/p$d;->b:Lq5/p;

    invoke-static {p1}, Lq5/p;->n(Lq5/p;)Lcom/google/android/gms/tasks/Task;

    .line 5
    iget-object p1, p0, Lq5/p$d$a$a;->b:Lq5/p$d$a;

    iget-object p1, p1, Lq5/p$d$a;->b:Lq5/p$d;

    iget-object p1, p1, Lq5/p$d;->b:Lq5/p;

    invoke-static {p1}, Lq5/p;->h(Lq5/p;)Lq5/j0;

    move-result-object p1

    iget-object v1, p0, Lq5/p$d$a$a;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Lq5/j0;->x(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 6
    iget-object p1, p0, Lq5/p$d$a$a;->b:Lq5/p$d$a;

    iget-object p1, p1, Lq5/p$d$a;->b:Lq5/p$d;

    iget-object p1, p1, Lq5/p$d;->b:Lq5/p;

    iget-object p1, p1, Lq5/p;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class q5.p.e (q5.p$e)
.class Lq5/p$e;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p;->a0(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lq5/p;


# direct methods
.method constructor <init>(Lq5/p;JLjava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lq5/p$e;->c:Lq5/p;

    iput-wide p2, p0, Lq5/p$e;->a:J

    iput-object p4, p0, Lq5/p$e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/p$e;->c:Lq5/p;

    invoke-virtual {v0}, Lq5/p;->J()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    iget-object v0, p0, Lq5/p$e;->c:Lq5/p;

    invoke-static {v0}, Lq5/p;->e(Lq5/p;)Lr5/e;

    move-result-object v0

    iget-wide v1, p0, Lq5/p$e;->a:J

    iget-object v3, p0, Lq5/p$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lr5/e;->g(JLjava/lang/String;)V

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq5/p$e;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class q5.p.f (q5.p$f)
.class Lq5/p$f;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p;->Z(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:J

.field final synthetic p:Ljava/lang/Throwable;

.field final synthetic q:Ljava/lang/Thread;

.field final synthetic r:Lq5/p;


# direct methods
.method constructor <init>(Lq5/p;JLjava/lang/Throwable;Ljava/lang/Thread;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lq5/p$f;->r:Lq5/p;

    iput-wide p2, p0, Lq5/p$f;->o:J

    iput-object p4, p0, Lq5/p$f;->p:Ljava/lang/Throwable;

    iput-object p5, p0, Lq5/p$f;->q:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lq5/p$f;->r:Lq5/p;

    invoke-virtual {v0}, Lq5/p;->J()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2
    iget-wide v0, p0, Lq5/p$f;->o:J

    invoke-static {v0, v1}, Lq5/p;->b(J)J

    move-result-wide v6

    .line 3
    iget-object v0, p0, Lq5/p$f;->r:Lq5/p;

    invoke-static {v0}, Lq5/p;->c(Lq5/p;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_20

    .line 4
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Tried to write a non-fatal exception while no session was open."

    .line 5
    invoke-virtual {v0, v1}, Ln5/g;->k(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_20
    iget-object v0, p0, Lq5/p$f;->r:Lq5/p;

    invoke-static {v0}, Lq5/p;->h(Lq5/p;)Lq5/j0;

    move-result-object v2

    iget-object v3, p0, Lq5/p$f;->p:Ljava/lang/Throwable;

    iget-object v4, p0, Lq5/p$f;->q:Ljava/lang/Thread;

    invoke-virtual/range {v2 .. v7}, Lq5/j0;->u(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    :cond_2d
    return-void
.end method

###### Class q5.p.g (q5.p$g)
.class Lq5/p$g;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p;->Q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lq5/p;


# direct methods
.method constructor <init>(Lq5/p;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq5/p$g;->b:Lq5/p;

    iput-object p2, p0, Lq5/p$g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/p$g;->b:Lq5/p;

    iget-object v1, p0, Lq5/p$g;->a:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lq5/p;->k(Lq5/p;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq5/p$g;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class q5.p.h (q5.p$h)
.class Lq5/p$h;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/p;->M(J)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lq5/p;


# direct methods
.method constructor <init>(Lq5/p;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lq5/p$h;->b:Lq5/p;

    iput-wide p2, p0, Lq5/p$h;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fatal"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-wide v1, p0, Lq5/p$h;->a:J

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Lq5/p$h;->b:Lq5/p;

    invoke-static {v1}, Lq5/p;->f(Lq5/p;)Lo5/a;

    move-result-object v1

    const-string v2, "_ae"

    invoke-interface {v1, v2, v0}, Lo5/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq5/p$h;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class q5.o (q5.o)
.class public final synthetic Lq5/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lq5/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lq5/o;

    invoke-direct {v0}, Lq5/o;-><init>()V

    sput-object v0, Lq5/o;->a:Lq5/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1, p2}, Lq5/p;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
