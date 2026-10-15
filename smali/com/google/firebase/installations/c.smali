###### Class com.google.firebase.installations.c (com.google.firebase.installations.c)
.class public Lcom/google/firebase/installations/c;
.super Ljava/lang/Object;
.source "FirebaseInstallations.java"

# interfaces
.implements Ll6/e;


# static fields
.field private static final m:Ljava/lang/Object;

.field private static final n:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:Lb5/g;

.field private final b:Lo6/c;

.field private final c:Ln6/c;

.field private final d:Lcom/google/firebase/installations/i;

.field private final e:Lk5/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/x<",
            "Ln6/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ll6/g;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Ljava/util/concurrent/Executor;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lm6/a;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/installations/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/c;->m:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/firebase/installations/c$a;

    invoke-direct {v0}, Lcom/google/firebase/installations/c$a;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/c;->n:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Lb5/g;Lk6/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lk6/b<",
            "Li6/i;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v4, Lo6/c;

    .line 2
    invoke-virtual {p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p2}, Lo6/c;-><init>(Landroid/content/Context;Lk6/b;)V

    new-instance v5, Ln6/c;

    invoke-direct {v5, p1}, Ln6/c;-><init>(Lb5/g;)V

    .line 3
    invoke-static {}, Lcom/google/firebase/installations/i;->c()Lcom/google/firebase/installations/i;

    move-result-object v6

    new-instance v7, Lk5/x;

    new-instance p2, Ll6/d;

    invoke-direct {p2, p1}, Ll6/d;-><init>(Lb5/g;)V

    invoke-direct {v7, p2}, Lk5/x;-><init>(Lk6/b;)V

    new-instance v8, Ll6/g;

    invoke-direct {v8}, Ll6/g;-><init>()V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/installations/c;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lb5/g;Lo6/c;Ln6/c;Lcom/google/firebase/installations/i;Lk5/x;Ll6/g;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lb5/g;Lo6/c;Ln6/c;Lcom/google/firebase/installations/i;Lk5/x;Ll6/g;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Executor;",
            "Lb5/g;",
            "Lo6/c;",
            "Ln6/c;",
            "Lcom/google/firebase/installations/i;",
            "Lk5/x<",
            "Ln6/b;",
            ">;",
            "Ll6/g;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/c;->k:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/c;->l:Ljava/util/List;

    .line 9
    iput-object p3, p0, Lcom/google/firebase/installations/c;->a:Lb5/g;

    .line 10
    iput-object p4, p0, Lcom/google/firebase/installations/c;->b:Lo6/c;

    .line 11
    iput-object p5, p0, Lcom/google/firebase/installations/c;->c:Ln6/c;

    .line 12
    iput-object p6, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/i;

    .line 13
    iput-object p7, p0, Lcom/google/firebase/installations/c;->e:Lk5/x;

    .line 14
    iput-object p8, p0, Lcom/google/firebase/installations/c;->f:Ll6/g;

    .line 15
    iput-object p1, p0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    .line 16
    iput-object p2, p0, Lcom/google/firebase/installations/c;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private A()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->u()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/i;->h(Ljava/lang/String;)Z

    move-result v0

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/i;->g(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private B(Ln6/d;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lb5/g;

    invoke-virtual {v0}, Lb5/g;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lb5/g;

    invoke-virtual {v0}, Lb5/g;->w()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    :cond_16
    invoke-virtual {p1}, Ln6/d;->m()Z

    move-result p1

    if-nez p1, :cond_23

    .line 3
    :cond_1c
    iget-object p1, p0, Lcom/google/firebase/installations/c;->f:Ll6/g;

    invoke-virtual {p1}, Ll6/g;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_23
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->p()Ln6/b;

    move-result-object p1

    invoke-virtual {p1}, Ln6/b;->f()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 6
    iget-object p1, p0, Lcom/google/firebase/installations/c;->f:Ll6/g;

    invoke-virtual {p1}, Ll6/g;->a()Ljava/lang/String;

    move-result-object p1

    :cond_37
    return-object p1
.end method

.method private C(Ln6/d;)Ln6/d;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/d;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {p1}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1b

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->p()Ln6/b;

    move-result-object v0

    invoke-virtual {v0}, Ln6/b;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    move-object v6, v0

    .line 4
    iget-object v1, p0, Lcom/google/firebase/installations/c;->b:Lo6/c;

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->m()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->u()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->n()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual/range {v1 .. v6}, Lo6/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo6/d;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/google/firebase/installations/c$b;->a:[I

    invoke-virtual {v0}, Lo6/d;->e()Lo6/d$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_56

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4c

    const-string v0, "BAD CONFIG"

    .line 11
    invoke-virtual {p1, v0}, Ln6/d;->q(Ljava/lang/String;)Ln6/d;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4c
    new-instance p1, Lcom/google/firebase/installations/d;

    sget-object v0, Lcom/google/firebase/installations/d$a;->p:Lcom/google/firebase/installations/d$a;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/installations/d;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/d$a;)V

    throw p1

    .line 13
    :cond_56
    invoke-virtual {v0}, Lo6/d;->c()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v0}, Lo6/d;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/i;

    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/installations/i;->b()J

    move-result-wide v5

    .line 16
    invoke-virtual {v0}, Lo6/d;->b()Lo6/f;

    move-result-object v1

    invoke-virtual {v1}, Lo6/f;->c()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {v0}, Lo6/d;->b()Lo6/f;

    move-result-object v0

    invoke-virtual {v0}, Lo6/f;->d()J

    move-result-wide v8

    move-object v2, p1

    .line 18
    invoke-virtual/range {v2 .. v9}, Ln6/d;->s(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Ln6/d;

    move-result-object p1

    return-object p1
.end method

.method private D(Ljava/lang/Exception;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/h;

    .line 5
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/h;->a(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 7
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method private E(Ln6/d;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/h;

    .line 5
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/h;->b(Ln6/d;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 7
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method private declared-synchronized F(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Lcom/google/firebase/installations/c;->j:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized G(Ln6/d;Ln6/d;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_31

    .line 2
    invoke-virtual {p1}, Ln6/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 4
    iget-object p1, p0, Lcom/google/firebase/installations/c;->k:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm6/a;

    .line 5
    invoke-virtual {p2}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lm6/a;->a(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_33

    goto :goto_1d

    .line 6
    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    goto :goto_37

    :goto_36
    throw p1

    :goto_37
    goto :goto_36
.end method

.method public static synthetic c(Lb5/g;)Ln6/b;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/installations/c;->z(Lb5/g;)Ln6/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/firebase/installations/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/installations/c;->x()V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/installations/c;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->w(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/installations/c;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->y(Z)V

    return-void
.end method

.method private g()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/installations/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 2
    new-instance v1, Lcom/google/firebase/installations/e;

    iget-object v2, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/i;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/installations/e;-><init>(Lcom/google/firebase/installations/i;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/c;->i(Lcom/google/firebase/installations/h;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 2
    new-instance v1, Lcom/google/firebase/installations/f;

    invoke-direct {v1, v0}, Lcom/google/firebase/installations/f;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/c;->i(Lcom/google/firebase/installations/h;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private i(Lcom/google/firebase/installations/h;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/c;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private j(Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->s()Ln6/d;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {v0}, Ln6/d;->i()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Ln6/d;->l()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_22

    :cond_11
    if-nez p1, :cond_1d

    .line 3
    iget-object p1, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/i;

    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/i;->f(Ln6/d;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    return-void

    .line 4
    :cond_1d
    :goto_1d
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->l(Ln6/d;)Ln6/d;

    move-result-object p1

    goto :goto_26

    .line 5
    :cond_22
    :goto_22
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->C(Ln6/d;)Ln6/d;

    move-result-object p1
    :try_end_26
    .catch Lcom/google/firebase/installations/d; {:try_start_4 .. :try_end_26} :catch_5f

    .line 6
    :goto_26
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->v(Ln6/d;)V

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/installations/c;->G(Ln6/d;Ln6/d;)V

    .line 8
    invoke-virtual {p1}, Ln6/d;->k()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 9
    invoke-virtual {p1}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->F(Ljava/lang/String;)V

    .line 10
    :cond_39
    invoke-virtual {p1}, Ln6/d;->i()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 11
    new-instance p1, Lcom/google/firebase/installations/d;

    sget-object v0, Lcom/google/firebase/installations/d$a;->o:Lcom/google/firebase/installations/d$a;

    invoke-direct {p1, v0}, Lcom/google/firebase/installations/d;-><init>(Lcom/google/firebase/installations/d$a;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->D(Ljava/lang/Exception;)V

    goto :goto_5e

    .line 12
    :cond_4a
    invoke-virtual {p1}, Ln6/d;->j()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 13
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->D(Ljava/lang/Exception;)V

    goto :goto_5e

    .line 14
    :cond_5b
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->E(Ln6/d;)V

    :goto_5e
    return-void

    :catch_5f
    move-exception p1

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->D(Ljava/lang/Exception;)V

    return-void
.end method

.method private final k(Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->t()Ln6/d;

    move-result-object v0

    if-eqz p1, :cond_a

    .line 2
    invoke-virtual {v0}, Ln6/d;->p()Ln6/d;

    move-result-object v0

    .line 3
    :cond_a
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->E(Ln6/d;)V

    .line 4
    iget-object v0, p0, Lcom/google/firebase/installations/c;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Ll6/b;

    invoke-direct {v1, p0, p1}, Ll6/b;-><init>(Lcom/google/firebase/installations/c;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private l(Ln6/d;)Ln6/d;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->b:Lo6/c;

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->m()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->u()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Ln6/d;->f()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Lo6/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo6/f;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/firebase/installations/c$b;->b:[I

    invoke-virtual {v0}, Lo6/f;->b()Lo6/f$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3e

    const/4 v0, 0x3

    if-ne v1, v0, :cond_34

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->F(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ln6/d;->r()Ln6/d;

    move-result-object p1

    return-object p1

    .line 10
    :cond_34
    new-instance p1, Lcom/google/firebase/installations/d;

    sget-object v0, Lcom/google/firebase/installations/d$a;->p:Lcom/google/firebase/installations/d$a;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/installations/d;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/d$a;)V

    throw p1

    :cond_3e
    const-string v0, "BAD CONFIG"

    .line 11
    invoke-virtual {p1, v0}, Ln6/d;->q(Ljava/lang/String;)Ln6/d;

    move-result-object p1

    return-object p1

    .line 12
    :cond_45
    invoke-virtual {v0}, Lo6/f;->c()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lo6/f;->d()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/i;

    .line 14
    invoke-virtual {v0}, Lcom/google/firebase/installations/i;->b()J

    move-result-wide v4

    move-object v0, p1

    .line 15
    invoke-virtual/range {v0 .. v5}, Ln6/d;->o(Ljava/lang/String;JJ)Ln6/d;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized o()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->j:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private p()Ln6/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->e:Lk5/x;

    invoke-virtual {v0}, Lk5/x;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6/b;

    return-object v0
.end method

.method public static q()Lcom/google/firebase/installations/c;
    .registers 1

    .line 1
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/installations/c;->r(Lb5/g;)Lcom/google/firebase/installations/c;

    move-result-object v0

    return-object v0
.end method

.method public static r(Lb5/g;)Lcom/google/firebase/installations/c;
    .registers 3

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Null is not a valid value of FirebaseApp."

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 2
    const-class v0, Ll6/e;

    invoke-virtual {p0, v0}, Lb5/g;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/installations/c;

    return-object p0
.end method

.method private s()Ln6/d;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/firebase/installations/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/c;->a:Lb5/g;

    .line 3
    invoke-virtual {v1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_23

    .line 4
    :try_start_f
    iget-object v2, p0, Lcom/google/firebase/installations/c;->c:Ln6/c;

    .line 5
    invoke-virtual {v2}, Ln6/c;->d()Ln6/d;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1c

    if-eqz v1, :cond_1a

    .line 6
    :try_start_17
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    :cond_1a
    monitor-exit v0

    return-object v2

    :catchall_1c
    move-exception v2

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 7
    :cond_22
    throw v2

    :catchall_23
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private t()Ln6/d;
    .registers 6

    .line 1
    sget-object v0, Lcom/google/firebase/installations/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/c;->a:Lb5/g;

    .line 3
    invoke-virtual {v1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_37

    .line 4
    :try_start_f
    iget-object v2, p0, Lcom/google/firebase/installations/c;->c:Ln6/c;

    .line 5
    invoke-virtual {v2}, Ln6/c;->d()Ln6/d;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ln6/d;->j()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 7
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/c;->B(Ln6/d;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/google/firebase/installations/c;->c:Ln6/c;

    .line 9
    invoke-virtual {v2, v3}, Ln6/d;->t(Ljava/lang/String;)Ln6/d;

    move-result-object v2

    .line 10
    invoke-virtual {v4, v2}, Ln6/c;->b(Ln6/d;)Ln6/d;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_30

    :cond_29
    if-eqz v1, :cond_2e

    .line 11
    :try_start_2b
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    :cond_2e
    monitor-exit v0

    return-object v2

    :catchall_30
    move-exception v2

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 12
    :cond_36
    throw v2

    :catchall_37
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_37

    throw v1
.end method

.method private v(Ln6/d;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/firebase/installations/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/c;->a:Lb5/g;

    .line 3
    invoke-virtual {v1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_22

    .line 4
    :try_start_f
    iget-object v2, p0, Lcom/google/firebase/installations/c;->c:Ln6/c;

    invoke-virtual {v2, p1}, Ln6/c;->b(Ln6/d;)Ln6/d;
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1b

    if-eqz v1, :cond_19

    .line 5
    :try_start_16
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 6
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    if-eqz v1, :cond_21

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 8
    :cond_21
    throw p1

    :catchall_22
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private synthetic w(Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->j(Z)V

    return-void
.end method

.method private synthetic x()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->k(Z)V

    return-void
.end method

.method private synthetic y(Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->k(Z)V

    return-void
.end method

.method private static synthetic z(Lb5/g;)Ln6/b;
    .registers 2

    .line 1
    new-instance v0, Ln6/b;

    invoke-direct {v0, p0}, Ln6/b;-><init>(Lb5/g;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->A()V

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 4
    :cond_e
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->h()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ll6/a;

    invoke-direct {v2, p0}, Ll6/a;-><init>(Lcom/google/firebase/installations/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public b(Z)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/installations/g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->A()V

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->g()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ll6/c;

    invoke-direct {v2, p0, p1}, Ll6/c;-><init>(Lcom/google/firebase/installations/c;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method m()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lb5/g;

    invoke-virtual {v0}, Lb5/g;->p()Lb5/q;

    move-result-object v0

    invoke-virtual {v0}, Lb5/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lb5/g;

    invoke-virtual {v0}, Lb5/g;->p()Lb5/q;

    move-result-object v0

    invoke-virtual {v0}, Lb5/q;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lb5/g;

    invoke-virtual {v0}, Lb5/g;->p()Lb5/q;

    move-result-object v0

    invoke-virtual {v0}, Lb5/q;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.firebase.installations.c.a (com.google.firebase.installations.c$a)
.class Lcom/google/firebase/installations/c$a;
.super Ljava/lang/Object;
.source "FirebaseInstallations.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/installations/c$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/installations/c$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "firebase-installations-executor-%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.google.firebase.installations.c.b (com.google.firebase.installations.c$b)
.class synthetic Lcom/google/firebase/installations/c$b;
.super Ljava/lang/Object;
.source "FirebaseInstallations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    invoke-static {}, Lo6/f$b;->values()[Lo6/f$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/installations/c$b;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lo6/f$b;->o:Lo6/f$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/google/firebase/installations/c$b;->b:[I

    sget-object v3, Lo6/f$b;->p:Lo6/f$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v2, Lcom/google/firebase/installations/c$b;->b:[I

    sget-object v3, Lo6/f$b;->q:Lo6/f$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    .line 2
    :catch_28
    invoke-static {}, Lo6/d$b;->values()[Lo6/d$b;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/firebase/installations/c$b;->a:[I

    :try_start_31
    sget-object v3, Lo6/d$b;->o:Lo6/d$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Lcom/google/firebase/installations/c$b;->a:[I

    sget-object v2, Lo6/d$b;->p:Lo6/d$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    return-void
.end method

###### Class l6.a (l6.a)
.class public final synthetic Ll6/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/firebase/installations/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/installations/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/a;->o:Lcom/google/firebase/installations/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Ll6/a;->o:Lcom/google/firebase/installations/c;

    invoke-static {v0}, Lcom/google/firebase/installations/c;->d(Lcom/google/firebase/installations/c;)V

    return-void
.end method

###### Class l6.b (l6.b)
.class public final synthetic Ll6/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/firebase/installations/c;

.field public final synthetic p:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/installations/c;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/b;->o:Lcom/google/firebase/installations/c;

    iput-boolean p2, p0, Ll6/b;->p:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Ll6/b;->o:Lcom/google/firebase/installations/c;

    iget-boolean v1, p0, Ll6/b;->p:Z

    invoke-static {v0, v1}, Lcom/google/firebase/installations/c;->e(Lcom/google/firebase/installations/c;Z)V

    return-void
.end method

###### Class l6.c (l6.c)
.class public final synthetic Ll6/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/firebase/installations/c;

.field public final synthetic p:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/installations/c;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/c;->o:Lcom/google/firebase/installations/c;

    iput-boolean p2, p0, Ll6/c;->p:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Ll6/c;->o:Lcom/google/firebase/installations/c;

    iget-boolean v1, p0, Ll6/c;->p:Z

    invoke-static {v0, v1}, Lcom/google/firebase/installations/c;->f(Lcom/google/firebase/installations/c;Z)V

    return-void
.end method

###### Class l6.d (l6.d)
.class public final synthetic Ll6/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# instance fields
.field public final synthetic a:Lb5/g;


# direct methods
.method public synthetic constructor <init>(Lb5/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/d;->a:Lb5/g;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ll6/d;->a:Lb5/g;

    invoke-static {v0}, Lcom/google/firebase/installations/c;->c(Lb5/g;)Ln6/b;

    move-result-object v0

    return-object v0
.end method
