###### Class q5.r (q5.r)
.class public Lq5/r;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lb5/g;

.field private final c:Lq5/x;

.field private final d:Lq5/g0;

.field private final e:J

.field private f:Lq5/s;

.field private g:Lq5/s;

.field private h:Z

.field private i:Lq5/p;

.field private final j:Lq5/b0;

.field private final k:Lv5/f;

.field public final l:Lp5/b;

.field private final m:Lo5/a;

.field private final n:Ljava/util/concurrent/ExecutorService;

.field private final o:Lq5/n;

.field private final p:Lq5/m;

.field private final q:Ln5/a;

.field private final r:Ln5/k;


# direct methods
.method public constructor <init>(Lb5/g;Lq5/b0;Ln5/a;Lq5/x;Lp5/b;Lo5/a;Lv5/f;Ljava/util/concurrent/ExecutorService;Lq5/m;Ln5/k;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq5/r;->b:Lb5/g;

    .line 3
    iput-object p4, p0, Lq5/r;->c:Lq5/x;

    .line 4
    invoke-virtual {p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lq5/r;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lq5/r;->j:Lq5/b0;

    .line 6
    iput-object p3, p0, Lq5/r;->q:Ln5/a;

    .line 7
    iput-object p5, p0, Lq5/r;->l:Lp5/b;

    .line 8
    iput-object p6, p0, Lq5/r;->m:Lo5/a;

    .line 9
    iput-object p8, p0, Lq5/r;->n:Ljava/util/concurrent/ExecutorService;

    .line 10
    iput-object p7, p0, Lq5/r;->k:Lv5/f;

    .line 11
    new-instance p1, Lq5/n;

    invoke-direct {p1, p8}, Lq5/n;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lq5/r;->o:Lq5/n;

    .line 12
    iput-object p9, p0, Lq5/r;->p:Lq5/m;

    .line 13
    iput-object p10, p0, Lq5/r;->r:Ln5/k;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lq5/r;->e:J

    .line 15
    new-instance p1, Lq5/g0;

    invoke-direct {p1}, Lq5/g0;-><init>()V

    iput-object p1, p0, Lq5/r;->d:Lq5/g0;

    return-void
.end method

.method static synthetic a(Lq5/r;Lx5/i;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lq5/r;->f(Lx5/i;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lq5/r;)Lq5/s;
    .registers 1

    .line 1
    iget-object p0, p0, Lq5/r;->f:Lq5/s;

    return-object p0
.end method

.method static synthetic c(Lq5/r;)Lq5/p;
    .registers 1

    .line 1
    iget-object p0, p0, Lq5/r;->i:Lq5/p;

    return-object p0
.end method

.method private d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq5/r;->o:Lq5/n;

    new-instance v1, Lq5/r$d;

    invoke-direct {v1, p0}, Lq5/r$d;-><init>(Lq5/r;)V

    .line 2
    invoke-virtual {v0, v1}, Lq5/n;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 3
    :try_start_b
    invoke-static {v0}, Lq5/q0;->f(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_1a

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lq5/r;->h:Z

    return-void

    :catch_1a
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lq5/r;->h:Z

    return-void
.end method

.method private f(Lx5/i;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx5/i;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    .line 1
    invoke-virtual {p0}, Lq5/r;->n()V

    .line 2
    :try_start_5
    iget-object v1, p0, Lq5/r;->l:Lp5/b;

    new-instance v2, Lq5/q;

    invoke-direct {v2, p0}, Lq5/q;-><init>(Lq5/r;)V

    invoke-interface {v1, v2}, Lp5/b;->a(Lp5/a;)V

    .line 3
    iget-object v1, p0, Lq5/r;->i:Lq5/p;

    invoke-virtual {v1}, Lq5/p;->S()V

    .line 4
    invoke-interface {p1}, Lx5/i;->b()Lx5/d;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lx5/d;->b:Lx5/d$a;

    iget-boolean v1, v1, Lx5/d$a;->a:Z

    if-nez v1, :cond_32

    .line 6
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Ln5/g;->b(Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_53
    .catchall {:try_start_5 .. :try_end_2e} :catchall_51

    .line 8
    invoke-virtual {p0}, Lq5/r;->m()V

    return-object p1

    .line 9
    :cond_32
    :try_start_32
    iget-object v0, p0, Lq5/r;->i:Lq5/p;

    invoke-virtual {v0, p1}, Lq5/p;->z(Lx5/i;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 10
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Previous sessions could not be finalized."

    invoke-virtual {v0, v1}, Ln5/g;->k(Ljava/lang/String;)V

    .line 11
    :cond_43
    iget-object v0, p0, Lq5/r;->i:Lq5/p;

    invoke-interface {p1}, Lx5/i;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Lq5/p;->W(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4d} :catch_53
    .catchall {:try_start_32 .. :try_end_4d} :catchall_51

    .line 12
    invoke-virtual {p0}, Lq5/r;->m()V

    return-object p1

    :catchall_51
    move-exception p1

    goto :goto_65

    :catch_53
    move-exception p1

    .line 13
    :try_start_54
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    .line 14
    invoke-virtual {v0, v1, p1}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_51

    .line 16
    invoke-virtual {p0}, Lq5/r;->m()V

    return-object p1

    :goto_65
    invoke-virtual {p0}, Lq5/r;->m()V

    .line 17
    throw p1
.end method

.method private h(Lx5/i;)V
    .registers 5

    .line 1
    new-instance v0, Lq5/r$b;

    invoke-direct {v0, p0, p1}, Lq5/r$b;-><init>(Lq5/r;Lx5/i;)V

    .line 2
    iget-object p1, p0, Lq5/r;->n:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 4
    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    const-wide/16 v0, 0x3

    .line 5
    :try_start_16
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1b} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_3c

    :catch_1c
    move-exception p1

    .line 6
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Crashlytics timed out during initialization."

    invoke-virtual {v0, v1, p1}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    :catch_27
    move-exception p1

    .line 7
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during initialization."

    invoke-virtual {v0, v1, p1}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    :catch_32
    move-exception p1

    .line 8
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Crashlytics was interrupted during initialization."

    invoke-virtual {v0, v1, p1}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3c
    return-void
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    const-string v0, "18.6.0"

    return-object v0
.end method

.method static j(Ljava/lang/String;Z)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p1, :cond_d

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p0

    const-string p1, "Configured not to require a build ID."

    invoke-virtual {p0, p1}, Ln5/g;->i(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_14

    return v0

    :cond_14
    const-string p0, "FirebaseCrashlytics"

    const-string p1, "."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  | "

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  |"

    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".   \\ |  | /"

    .line 7
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".    \\    /"

    .line 8
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".     \\  /"

    .line 9
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".      \\/"

    .line 10
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    .line 12
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".      /\\"

    .line 14
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".     /  \\"

    .line 15
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".    /    \\"

    .line 16
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".   / |  | \\"

    .line 17
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lq5/r;->f:Lq5/s;

    invoke-virtual {v0}, Lq5/s;->c()Z

    move-result v0

    return v0
.end method

.method public g(Lx5/i;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx5/i;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/r;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lq5/r$a;

    invoke-direct {v1, p0, p1}, Lq5/r$a;-><init>(Lq5/r;Lx5/i;)V

    invoke-static {v0, v1}, Lq5/q0;->h(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lq5/r;->e:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lq5/r;->i:Lq5/p;

    invoke-virtual {v2, v0, v1, p1}, Lq5/p;->a0(JLjava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lq5/r;->i:Lq5/p;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lq5/p;->Z(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method m()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq5/r;->o:Lq5/n;

    new-instance v1, Lq5/r$c;

    invoke-direct {v1, p0}, Lq5/r$c;-><init>(Lq5/r;)V

    invoke-virtual {v0, v1}, Lq5/n;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method n()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq5/r;->o:Lq5/n;

    invoke-virtual {v0}, Lq5/n;->b()V

    .line 2
    iget-object v0, p0, Lq5/r;->f:Lq5/s;

    invoke-virtual {v0}, Lq5/s;->a()Z

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Initialization marker file was created."

    invoke-virtual {v0, v1}, Ln5/g;->i(Ljava/lang/String;)V

    return-void
.end method

.method public o(Lq5/a;Lx5/i;)Z
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    iget-object v2, v1, Lq5/r;->a:Landroid/content/Context;

    const-string v3, "com.crashlytics.RequireBuildId"

    const/4 v12, 0x1

    .line 2
    invoke-static {v2, v3, v12}, Lq5/i;->i(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v15, p1

    .line 3
    iget-object v3, v15, Lq5/a;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lq5/r;->j(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 4
    new-instance v2, Lq5/h;

    iget-object v3, v1, Lq5/r;->j:Lq5/b0;

    invoke-direct {v2, v3}, Lq5/h;-><init>(Lq5/b0;)V

    invoke-virtual {v2}, Lq5/h;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v27, 0x0

    .line 5
    :try_start_24
    new-instance v2, Lq5/s;

    const-string v3, "crash_marker"

    iget-object v4, v1, Lq5/r;->k:Lv5/f;

    invoke-direct {v2, v3, v4}, Lq5/s;-><init>(Ljava/lang/String;Lv5/f;)V

    iput-object v2, v1, Lq5/r;->g:Lq5/s;

    .line 6
    new-instance v2, Lq5/s;

    const-string v3, "initialization_marker"

    iget-object v4, v1, Lq5/r;->k:Lv5/f;

    invoke-direct {v2, v3, v4}, Lq5/s;-><init>(Ljava/lang/String;Lv5/f;)V

    iput-object v2, v1, Lq5/r;->f:Lq5/s;

    .line 7
    new-instance v13, Lr5/m;

    iget-object v2, v1, Lq5/r;->k:Lv5/f;

    iget-object v3, v1, Lq5/r;->o:Lq5/n;

    invoke-direct {v13, v14, v2, v3}, Lr5/m;-><init>(Ljava/lang/String;Lv5/f;Lq5/n;)V

    .line 8
    new-instance v11, Lr5/e;

    iget-object v2, v1, Lq5/r;->k:Lv5/f;

    invoke-direct {v11, v2}, Lr5/e;-><init>(Lv5/f;)V

    .line 9
    new-instance v8, Ly5/a;

    const/16 v2, 0x400

    new-array v3, v12, [Ly5/d;

    new-instance v4, Ly5/c;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ly5/c;-><init>(I)V

    aput-object v4, v3, v27

    invoke-direct {v8, v2, v3}, Ly5/a;-><init>(I[Ly5/d;)V

    .line 10
    iget-object v2, v1, Lq5/r;->r:Ln5/k;

    invoke-virtual {v2, v13}, Ln5/k;->c(Lr5/m;)V

    .line 11
    iget-object v2, v1, Lq5/r;->a:Landroid/content/Context;

    iget-object v3, v1, Lq5/r;->j:Lq5/b0;

    iget-object v4, v1, Lq5/r;->k:Lv5/f;

    iget-object v10, v1, Lq5/r;->d:Lq5/g0;

    iget-object v9, v1, Lq5/r;->p:Lq5/m;

    move-object/from16 v5, p1

    move-object v6, v11

    move-object v7, v13

    move-object/from16 v16, v9

    move-object/from16 v9, p2

    move-object/from16 v22, v11

    move-object/from16 v11, v16

    .line 12
    invoke-static/range {v2 .. v11}, Lq5/j0;->h(Landroid/content/Context;Lq5/b0;Lv5/f;Lq5/a;Lr5/e;Lr5/m;Ly5/d;Lx5/i;Lq5/g0;Lq5/m;)Lq5/j0;

    move-result-object v23

    .line 13
    new-instance v2, Lq5/p;

    iget-object v3, v1, Lq5/r;->a:Landroid/content/Context;

    iget-object v4, v1, Lq5/r;->o:Lq5/n;

    iget-object v5, v1, Lq5/r;->j:Lq5/b0;

    iget-object v6, v1, Lq5/r;->c:Lq5/x;

    iget-object v7, v1, Lq5/r;->k:Lv5/f;

    iget-object v8, v1, Lq5/r;->g:Lq5/s;

    iget-object v9, v1, Lq5/r;->q:Ln5/a;

    iget-object v10, v1, Lq5/r;->m:Lo5/a;

    iget-object v11, v1, Lq5/r;->p:Lq5/m;

    move-object/from16 v21, v13

    move-object v13, v2

    move-object v12, v14

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, p1

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    invoke-direct/range {v13 .. v26}, Lq5/p;-><init>(Landroid/content/Context;Lq5/n;Lq5/b0;Lq5/x;Lv5/f;Lq5/s;Lq5/a;Lr5/m;Lr5/e;Lq5/j0;Ln5/a;Lo5/a;Lq5/m;)V

    iput-object v2, v1, Lq5/r;->i:Lq5/p;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lq5/r;->e()Z

    move-result v2

    .line 15
    invoke-direct/range {p0 .. p0}, Lq5/r;->d()V

    .line 16
    iget-object v3, v1, Lq5/r;->i:Lq5/p;

    .line 17
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v12, v4, v0}, Lq5/p;->x(Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Lx5/i;)V

    if-eqz v2, :cond_d1

    .line 19
    iget-object v2, v1, Lq5/r;->a:Landroid/content/Context;

    invoke-static {v2}, Lq5/i;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 20
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v2

    const-string v3, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 21
    invoke-virtual {v2, v3}, Ln5/g;->b(Ljava/lang/String;)V

    .line 22
    invoke-direct {v1, v0}, Lq5/r;->h(Lx5/i;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_d0} :catch_dc

    return v27

    .line 23
    :cond_d1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v2, "Successfully configured exception handler."

    invoke-virtual {v0, v2}, Ln5/g;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catch_dc
    move-exception v0

    .line 24
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v2

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    .line 25
    invoke-virtual {v2, v3, v0}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 26
    iput-object v0, v1, Lq5/r;->i:Lq5/p;

    return v27

    .line 27
    :cond_ea
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lq5/r;->i:Lq5/p;

    invoke-virtual {v0, p1, p2}, Lq5/p;->T(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq5/r;->i:Lq5/p;

    invoke-virtual {v0, p1}, Lq5/p;->V(Ljava/lang/String;)V

    return-void
.end method

###### Class q5.r.a (q5.r$a)
.class Lq5/r$a;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/r;->g(Lx5/i;)Lcom/google/android/gms/tasks/Task;
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
.field final synthetic a:Lx5/i;

.field final synthetic b:Lq5/r;


# direct methods
.method constructor <init>(Lq5/r;Lx5/i;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq5/r$a;->b:Lq5/r;

    iput-object p2, p0, Lq5/r$a;->a:Lx5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .registers 3
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
    iget-object v0, p0, Lq5/r$a;->b:Lq5/r;

    iget-object v1, p0, Lq5/r$a;->a:Lx5/i;

    invoke-static {v0, v1}, Lq5/r;->a(Lq5/r;Lx5/i;)Lcom/google/android/gms/tasks/Task;

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
    invoke-virtual {p0}, Lq5/r$a;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

###### Class q5.r.b (q5.r$b)
.class Lq5/r$b;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/r;->h(Lx5/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lx5/i;

.field final synthetic p:Lq5/r;


# direct methods
.method constructor <init>(Lq5/r;Lx5/i;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq5/r$b;->p:Lq5/r;

    iput-object p2, p0, Lq5/r$b;->o:Lx5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq5/r$b;->p:Lq5/r;

    iget-object v1, p0, Lq5/r$b;->o:Lx5/i;

    invoke-static {v0, v1}, Lq5/r;->a(Lq5/r;Lx5/i;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

###### Class q5.r.c (q5.r$c)
.class Lq5/r$c;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/r;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lq5/r;


# direct methods
.method constructor <init>(Lq5/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lq5/r$c;->a:Lq5/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lq5/r$c;->a:Lq5/r;

    invoke-static {v0}, Lq5/r;->b(Lq5/r;)Lq5/s;

    move-result-object v0

    invoke-virtual {v0}, Lq5/s;->d()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    const-string v2, "Initialization marker file was not properly removed."

    invoke-virtual {v1, v2}, Ln5/g;->k(Ljava/lang/String;)V

    .line 3
    :cond_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    .line 4
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    const-string v2, "Problem encountered deleting Crashlytics initialization marker."

    .line 5
    invoke-virtual {v1, v2, v0}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lq5/r$c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class q5.r.d (q5.r$d)
.class Lq5/r$d;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq5/r;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lq5/r;


# direct methods
.method constructor <init>(Lq5/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lq5/r$d;->a:Lq5/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/r$d;->a:Lq5/r;

    invoke-static {v0}, Lq5/r;->c(Lq5/r;)Lq5/p;

    move-result-object v0

    invoke-virtual {v0}, Lq5/p;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lq5/r$d;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class q5.q (q5.q)
.class public final synthetic Lq5/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lp5/a;


# instance fields
.field public final synthetic a:Lq5/r;


# direct methods
.method public synthetic constructor <init>(Lq5/r;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5/q;->a:Lq5/r;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lq5/q;->a:Lq5/r;

    invoke-virtual {v0, p1}, Lq5/r;->k(Ljava/lang/String;)V

    return-void
.end method
