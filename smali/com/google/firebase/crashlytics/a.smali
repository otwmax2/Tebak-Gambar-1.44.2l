###### Class com.google.firebase.crashlytics.a (com.google.firebase.crashlytics.a)
.class public Lcom/google/firebase/crashlytics/a;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"


# instance fields
.field final a:Lq5/r;


# direct methods
.method private constructor <init>(Lq5/r;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/a;->a:Lq5/r;

    return-void
.end method

.method public static a()Lcom/google/firebase/crashlytics/a;
    .registers 2

    .line 1
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/firebase/crashlytics/a;

    invoke-virtual {v0, v1}, Lb5/g;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/a;

    const-string v1, "FirebaseCrashlytics component is not present."

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method static b(Lb5/g;Ll6/e;Lk6/a;Lk6/a;Lk6/a;)Lcom/google/firebase/crashlytics/a;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Ll6/e;",
            "Lk6/a<",
            "Ln5/a;",
            ">;",
            "Lk6/a<",
            "Le5/a;",
            ">;",
            "Lk6/a<",
            "Lv6/a;",
            ">;)",
            "Lcom/google/firebase/crashlytics/a;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing Firebase Crashlytics "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lq5/r;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v3}, Ln5/g;->g(Ljava/lang/String;)V

    .line 6
    new-instance v15, Lv5/f;

    invoke-direct {v15, v0}, Lv5/f;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v3, Lq5/x;

    move-object/from16 v2, p0

    invoke-direct {v3, v2}, Lq5/x;-><init>(Lb5/g;)V

    .line 8
    new-instance v14, Lq5/b0;

    move-object/from16 v4, p1

    invoke-direct {v14, v0, v1, v4, v3}, Lq5/b0;-><init>(Landroid/content/Context;Ljava/lang/String;Ll6/e;Lq5/x;)V

    .line 9
    new-instance v7, Ln5/d;

    move-object/from16 v1, p2

    invoke-direct {v7, v1}, Ln5/d;-><init>(Lk6/a;)V

    .line 10
    new-instance v1, Lm5/d;

    move-object/from16 v4, p3

    invoke-direct {v1, v4}, Lm5/d;-><init>(Lk6/a;)V

    const-string v4, "Crashlytics Exception Handler"

    .line 11
    invoke-static {v4}, Lq5/z;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    .line 12
    new-instance v13, Lq5/m;

    invoke-direct {v13, v3, v15}, Lq5/m;-><init>(Lq5/x;Lv5/f;)V

    .line 13
    invoke-static {v13}, Ly6/a;->e(Ly6/b;)V

    .line 14
    new-instance v11, Ln5/k;

    move-object/from16 v4, p4

    invoke-direct {v11, v4}, Ln5/k;-><init>(Lk6/a;)V

    .line 15
    new-instance v10, Lq5/r;

    .line 16
    invoke-virtual {v1}, Lm5/d;->e()Lp5/b;

    move-result-object v9

    .line 17
    invoke-virtual {v1}, Lm5/d;->d()Lo5/a;

    move-result-object v1

    move-object v4, v10

    move-object/from16 v5, p0

    move-object v6, v14

    move-object v8, v3

    move-object/from16 v16, v10

    move-object v10, v1

    move-object v1, v11

    move-object v11, v15

    move-object/from16 v17, v14

    move-object v14, v1

    invoke-direct/range {v4 .. v14}, Lq5/r;-><init>(Lb5/g;Lq5/b0;Ln5/a;Lq5/x;Lp5/b;Lo5/a;Lv5/f;Ljava/util/concurrent/ExecutorService;Lq5/m;Ln5/k;)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lb5/g;->p()Lb5/q;

    move-result-object v1

    invoke-virtual {v1}, Lb5/q;->c()Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-static {v0}, Lq5/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-static {v0}, Lq5/i;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 21
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mapping file ID is: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln5/g;->b(Ljava/lang/String;)V

    .line 22
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_da

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq5/f;

    .line 23
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v6

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 24
    invoke-virtual {v2}, Lq5/f;->c()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lq5/f;->a()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v2}, Lq5/f;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    const-string v2, "Build id for %s on %s: %s"

    .line 25
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v6, v2}, Ln5/g;->b(Ljava/lang/String;)V

    goto :goto_a8

    .line 27
    :cond_da
    new-instance v6, Ln5/f;

    invoke-direct {v6, v0}, Ln5/f;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    move-object/from16 v2, v17

    move-object v8, v3

    move-object v3, v7

    .line 28
    :try_start_e4
    invoke-static/range {v1 .. v6}, Lq5/a;->a(Landroid/content/Context;Lq5/b0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ln5/f;)Lq5/a;

    move-result-object v9
    :try_end_e8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e4 .. :try_end_e8} :catch_13a

    .line 29
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installer package name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lq5/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln5/g;->i(Ljava/lang/String;)V

    const-string v1, "com.google.firebase.crashlytics.startup"

    .line 30
    invoke-static {v1}, Lq5/z;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 31
    new-instance v4, Lu5/b;

    invoke-direct {v4}, Lu5/b;-><init>()V

    iget-object v5, v9, Lq5/a;->f:Ljava/lang/String;

    iget-object v6, v9, Lq5/a;->g:Ljava/lang/String;

    move-object v1, v0

    move-object v2, v7

    move-object/from16 v3, v17

    move-object v7, v15

    .line 32
    invoke-static/range {v1 .. v8}, Lx5/f;->l(Landroid/content/Context;Ljava/lang/String;Lq5/b0;Lu5/b;Ljava/lang/String;Ljava/lang/String;Lv5/f;Lq5/x;)Lx5/f;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v10}, Lx5/f;->o(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/crashlytics/a$a;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/a$a;-><init>()V

    .line 34
    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/tasks/Task;->l(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-object/from16 v1, v16

    .line 35
    invoke-virtual {v1, v9, v0}, Lq5/r;->o(Lq5/a;Lx5/i;)Z

    move-result v2

    .line 36
    new-instance v3, Lcom/google/firebase/crashlytics/a$b;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/firebase/crashlytics/a$b;-><init>(ZLq5/r;Lx5/f;)V

    invoke-static {v10, v3}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 37
    new-instance v0, Lcom/google/firebase/crashlytics/a;

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/a;-><init>(Lq5/r;)V

    return-object v0

    :catch_13a
    move-exception v0

    move-object v1, v0

    .line 38
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v2, "Error retrieving app package info."

    invoke-virtual {v0, v2, v1}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq5/r;

    invoke-virtual {v0, p1}, Lq5/r;->k(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .registers 3

    if-nez p1, :cond_c

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    const-string v0, "A null value was passed to recordException. Ignoring."

    invoke-virtual {p1, v0}, Ln5/g;->k(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_c
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq5/r;

    invoke-virtual {v0, p1}, Lq5/r;->l(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq5/r;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lq5/r;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq5/r;

    invoke-virtual {v0, p1, p2}, Lq5/r;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq5/r;

    invoke-virtual {v0, p1}, Lq5/r;->q(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.firebase.crashlytics.a.C0124a (com.google.firebase.crashlytics.a$a)
.class Lcom/google/firebase/crashlytics/a$a;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/a;->b(Lb5/g;Ll6/e;Lk6/a;Lk6/a;Lk6/a;)Lcom/google/firebase/crashlytics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "Error fetching settings."

    invoke-virtual {v0, v1, p1}, Ln5/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.google.firebase.crashlytics.a.b (com.google.firebase.crashlytics.a$b)
.class Lcom/google/firebase/crashlytics/a$b;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/a;->b(Lb5/g;Ll6/e;Lk6/a;Lk6/a;Lk6/a;)Lcom/google/firebase/crashlytics/a;
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
.field final synthetic a:Z

.field final synthetic b:Lq5/r;

.field final synthetic c:Lx5/f;


# direct methods
.method constructor <init>(ZLq5/r;Lx5/f;)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/a$b;->a:Z

    iput-object p2, p0, Lcom/google/firebase/crashlytics/a$b;->b:Lq5/r;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/a$b;->c:Lx5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/a$b;->a:Z

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a$b;->b:Lq5/r;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/a$b;->c:Lx5/f;

    invoke-virtual {v0, v1}, Lq5/r;->g(Lx5/i;)Lcom/google/android/gms/tasks/Task;

    :cond_b
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
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/a$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
