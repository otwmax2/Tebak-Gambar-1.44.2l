###### Class q5.x (q5.x)
.class public Lq5/x;
.super Ljava/lang/Object;
.source "DataCollectionArbiter.java"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lb5/g;

.field private final c:Ljava/lang/Object;

.field d:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field private f:Z

.field private g:Ljava/lang/Boolean;

.field private final h:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb5/g;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lq5/x;->c:Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v1, p0, Lq5/x;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lq5/x;->e:Z

    .line 5
    iput-boolean v1, p0, Lq5/x;->f:Z

    .line 6
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v1, p0, Lq5/x;->h:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    invoke-virtual {p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v1

    .line 8
    iput-object p1, p0, Lq5/x;->b:Lb5/g;

    .line 9
    invoke-static {v1}, Lq5/i;->q(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lq5/x;->a:Landroid/content/SharedPreferences;

    .line 10
    invoke-direct {p0}, Lq5/x;->b()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_33

    .line 11
    invoke-direct {p0, v1}, Lq5/x;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    .line 12
    :cond_33
    iput-object p1, p0, Lq5/x;->g:Ljava/lang/Boolean;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_36
    invoke-virtual {p0}, Lq5/x;->d()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 15
    iget-object p1, p0, Lq5/x;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lq5/x;->e:Z

    .line 17
    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_47

    throw p1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 3

    .line 1
    invoke-static {p1}, Lq5/x;->g(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lq5/x;->f:Z

    const/4 p1, 0x0

    return-object p1

    :cond_b
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lq5/x;->f:Z

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private b()Ljava/lang/Boolean;
    .registers 4

    .line 1
    iget-object v0, p0, Lq5/x;->a:Landroid/content/SharedPreferences;

    const-string v1, "firebase_crashlytics_collection_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lq5/x;->f:Z

    .line 3
    iget-object v0, p0, Lq5/x;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Z
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lq5/x;->b:Lb5/g;

    invoke-virtual {v0}, Lb5/g;->v()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method private f(Z)V
    .registers 6

    if-eqz p1, :cond_5

    const-string p1, "ENABLED"

    goto :goto_7

    :cond_5
    const-string p1, "DISABLED"

    .line 1
    :goto_7
    iget-object v0, p0, Lq5/x;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    const-string v0, "global Firebase setting"

    goto :goto_17

    .line 2
    :cond_e
    iget-boolean v0, p0, Lq5/x;->f:Z

    if-eqz v0, :cond_15

    const-string v0, "firebase_crashlytics_collection_enabled manifest flag"

    goto :goto_17

    :cond_15
    const-string v0, "API"

    .line 3
    :goto_17
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "Crashlytics automatic data collection %s by %s."

    .line 4
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Ln5/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 4

    const-string v0, "firebase_crashlytics_collection_enabled"

    .line 1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    .line 3
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 4
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_33

    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 6
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception p0

    .line 7
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Could not read data collection permission from manifest"

    invoke-virtual {v0, v1, p0}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c(Z)V
    .registers 3

    if-eqz p1, :cond_9

    .line 1
    iget-object p1, p0, Lq5/x;->h:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "An invalid data collection token was used."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lq5/x;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_e

    .line 3
    :cond_a
    invoke-direct {p0}, Lq5/x;->e()Z

    move-result v0

    .line 4
    :goto_e
    invoke-direct {p0, v0}, Lq5/x;->f(Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 5
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/x;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lq5/x;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public i(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq5/x;->h:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lq5/x;->h()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 4
    invoke-static {p1, v0, v1}, Lq5/q0;->o(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
