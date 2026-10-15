###### Class x5.f (x5.f)
.class public Lx5/f;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Lx5/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lx5/j;

.field private final c:Lx5/g;

.field private final d:Lq5/w;

.field private final e:Lx5/a;

.field private final f:Lx5/k;

.field private final g:Lq5/x;

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lx5/d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lx5/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lx5/j;Lq5/w;Lx5/g;Lx5/a;Lx5/k;Lq5/x;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lx5/f;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lx5/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-object p1, p0, Lx5/f;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lx5/f;->b:Lx5/j;

    .line 6
    iput-object p3, p0, Lx5/f;->d:Lq5/w;

    .line 7
    iput-object p4, p0, Lx5/f;->c:Lx5/g;

    .line 8
    iput-object p5, p0, Lx5/f;->e:Lx5/a;

    .line 9
    iput-object p6, p0, Lx5/f;->f:Lx5/k;

    .line 10
    iput-object p7, p0, Lx5/f;->g:Lq5/x;

    .line 11
    invoke-static {p3}, Lx5/b;->b(Lq5/w;)Lx5/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lx5/f;)Lx5/j;
    .registers 1

    .line 1
    iget-object p0, p0, Lx5/f;->b:Lx5/j;

    return-object p0
.end method

.method static synthetic d(Lx5/f;)Lx5/k;
    .registers 1

    .line 1
    iget-object p0, p0, Lx5/f;->f:Lx5/k;

    return-object p0
.end method

.method static synthetic e(Lx5/f;)Lx5/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lx5/f;->c:Lx5/g;

    return-object p0
.end method

.method static synthetic f(Lx5/f;)Lx5/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lx5/f;->e:Lx5/a;

    return-object p0
.end method

.method static synthetic g(Lx5/f;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lx5/f;->q(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lx5/f;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lx5/f;->r(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lx5/f;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lx5/f;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic j(Lx5/f;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lx5/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Lq5/b0;Lu5/b;Ljava/lang/String;Ljava/lang/String;Lv5/f;Lq5/x;)Lx5/f;
    .registers 23

    .line 1
    invoke-virtual/range {p2 .. p2}, Lq5/b0;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v10, Lq5/k0;

    invoke-direct {v10}, Lq5/k0;-><init>()V

    .line 3
    new-instance v11, Lx5/g;

    invoke-direct {v11, v10}, Lx5/g;-><init>(Lq5/w;)V

    .line 4
    new-instance v12, Lx5/a;

    move-object/from16 v1, p6

    invoke-direct {v12, v1}, Lx5/a;-><init>(Lv5/f;)V

    .line 5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v13, Lx5/c;

    move-object/from16 v3, p3

    invoke-direct {v13, v1, v3}, Lx5/c;-><init>(Ljava/lang/String;Lu5/b;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lq5/b0;->h()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual/range {p2 .. p2}, Lq5/b0;->i()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual/range {p2 .. p2}, Lq5/b0;->j()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 10
    invoke-static {p0}, Lq5/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 11
    invoke-static {v1}, Lq5/i;->h([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {v0}, Lq5/y;->c(Ljava/lang/String;)Lq5/y;

    move-result-object v0

    invoke-virtual {v0}, Lq5/y;->e()I

    move-result v9

    .line 13
    new-instance v14, Lx5/j;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object/from16 v5, p2

    move-object v6, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lx5/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lq5/c0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    new-instance v0, Lx5/f;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v14

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lx5/f;-><init>(Landroid/content/Context;Lx5/j;Lq5/w;Lx5/g;Lx5/a;Lx5/k;Lq5/x;)V

    return-object v0
.end method

.method private m(Lx5/e;)Lx5/d;
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lx5/e;->p:Lx5/e;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 2
    iget-object v1, p0, Lx5/f;->e:Lx5/a;

    invoke-virtual {v1}, Lx5/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 3
    iget-object v2, p0, Lx5/f;->c:Lx5/g;

    invoke-virtual {v2, v1}, Lx5/g;->b(Lorg/json/JSONObject;)Lx5/d;

    move-result-object v2

    if-eqz v2, :cond_4b

    const-string v3, "Loaded cached settings: "

    .line 4
    invoke-direct {p0, v1, v3}, Lx5/f;->q(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lx5/f;->d:Lq5/w;

    invoke-interface {v1}, Lq5/w;->a()J

    move-result-wide v3

    .line 6
    sget-object v1, Lx5/e;->q:Lx5/e;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 7
    invoke-virtual {v2, v3, v4}, Lx5/d;->a(J)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_3d

    .line 8
    :cond_33
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v1, "Cached settings have expired."

    invoke-virtual {p1, v1}, Ln5/g;->i(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_5f

    goto :goto_69

    .line 9
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "Returning cached settings."

    invoke-virtual {p1, v0}, Ln5/g;->i(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_48

    move-object v0, v2

    goto :goto_69

    :catch_48
    move-exception p1

    move-object v0, v2

    goto :goto_60

    .line 10
    :cond_4b
    :try_start_4b
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v1, "Failed to parse cached settings data."

    invoke-virtual {p1, v1, v0}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69

    .line 11
    :cond_55
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v1, "No cached settings data found."

    invoke-virtual {p1, v1}, Ln5/g;->b(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5e} :catch_5f

    goto :goto_69

    :catch_5f
    move-exception p1

    .line 12
    :goto_60
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    const-string v2, "Failed to get cached settings"

    invoke-virtual {v1, v2, p1}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lx5/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lq5/i;->q(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln5/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private r(Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx5/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lq5/i;->q(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    .line 3
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lx5/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx5/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public b()Lx5/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lx5/f;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx5/d;

    return-object v0
.end method

.method k()Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lx5/f;->n()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lx5/f;->b:Lx5/j;

    iget-object v1, v1, Lx5/j;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public o(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .registers 3
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
    sget-object v0, Lx5/e;->o:Lx5/e;

    invoke-virtual {p0, v0, p1}, Lx5/f;->p(Lx5/e;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public p(Lx5/e;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx5/e;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx5/f;->k()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2
    invoke-direct {p0, p1}, Lx5/f;->m(Lx5/e;)Lx5/d;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 3
    iget-object p2, p0, Lx5/f;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lx5/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 6
    :cond_22
    sget-object p1, Lx5/e;->q:Lx5/e;

    .line 7
    invoke-direct {p0, p1}, Lx5/f;->m(Lx5/e;)Lx5/d;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 8
    iget-object v0, p0, Lx5/f;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lx5/f;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    .line 10
    :cond_3a
    iget-object p1, p0, Lx5/f;->g:Lq5/x;

    .line 11
    invoke-virtual {p1, p2}, Lq5/x;->i(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lx5/f$a;

    invoke-direct {v0, p0}, Lx5/f$a;-><init>(Lx5/f;)V

    .line 12
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->v(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class x5.f.a (x5.f$a)
.class Lx5/f$a;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/f;->p(Lx5/e;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lx5/f;


# direct methods
.method constructor <init>(Lx5/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lx5/f$a;->a:Lx5/f;

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

    invoke-virtual {p0, p1}, Lx5/f$a;->b(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
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
    iget-object p1, p0, Lx5/f$a;->a:Lx5/f;

    .line 2
    invoke-static {p1}, Lx5/f;->d(Lx5/f;)Lx5/k;

    move-result-object p1

    iget-object v0, p0, Lx5/f$a;->a:Lx5/f;

    invoke-static {v0}, Lx5/f;->c(Lx5/f;)Lx5/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lx5/k;->a(Lx5/j;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 3
    iget-object v0, p0, Lx5/f$a;->a:Lx5/f;

    .line 4
    invoke-static {v0}, Lx5/f;->e(Lx5/f;)Lx5/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx5/g;->b(Lorg/json/JSONObject;)Lx5/d;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lx5/f$a;->a:Lx5/f;

    invoke-static {v1}, Lx5/f;->f(Lx5/f;)Lx5/a;

    move-result-object v1

    iget-wide v2, v0, Lx5/d;->c:J

    invoke-virtual {v1, v2, v3, p1}, Lx5/a;->c(JLorg/json/JSONObject;)V

    .line 6
    iget-object v1, p0, Lx5/f$a;->a:Lx5/f;

    const-string v2, "Loaded settings: "

    invoke-static {v1, p1, v2}, Lx5/f;->g(Lx5/f;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lx5/f$a;->a:Lx5/f;

    invoke-static {p1}, Lx5/f;->c(Lx5/f;)Lx5/j;

    move-result-object v1

    iget-object v1, v1, Lx5/j;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lx5/f;->h(Lx5/f;Ljava/lang/String;)Z

    .line 8
    iget-object p1, p0, Lx5/f$a;->a:Lx5/f;

    invoke-static {p1}, Lx5/f;->i(Lx5/f;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lx5/f$a;->a:Lx5/f;

    invoke-static {p1}, Lx5/f;->j(Lx5/f;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    :cond_52
    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
