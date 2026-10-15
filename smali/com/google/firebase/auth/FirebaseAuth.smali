###### Class com.google.firebase.auth.FirebaseAuth (com.google.firebase.auth.FirebaseAuth)
.class public Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lj5/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$c;,
        Lcom/google/firebase/auth/FirebaseAuth$d;,
        Lcom/google/firebase/auth/FirebaseAuth$a;,
        Lcom/google/firebase/auth/FirebaseAuth$b;
    }
.end annotation


# instance fields
.field private a:Lb5/g;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj5/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Li5/i;

.field private f:Lg5/s;

.field private g:Lj5/f0;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/Object;

.field private j:Ljava/lang/String;

.field private final k:Lj5/q;

.field private final l:Lj5/j;

.field private m:Lj5/s;

.field private n:Lj5/u;


# direct methods
.method public constructor <init>(Lb5/g;)V
    .registers 6

    .line 1
    new-instance v0, Li5/y0;

    .line 2
    invoke-virtual {p1}, Lb5/g;->p()Lb5/q;

    move-result-object v1

    invoke-virtual {v1}, Lb5/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Li5/y0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Li5/y0;->a()Li5/v0;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-static {v1, v0}, Li5/u0;->a(Landroid/content/Context;Li5/v0;)Li5/i;

    move-result-object v0

    .line 5
    new-instance v1, Lj5/q;

    .line 6
    invoke-virtual {p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lb5/g;->q()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lj5/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lj5/j;->a()Lj5/j;

    move-result-object v2

    .line 8
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lb5/g;Li5/i;Lj5/q;Lj5/j;)V

    return-void
.end method

.method private constructor <init>(Lb5/g;Li5/i;Lj5/q;Lj5/j;)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/g;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li5/i;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    .line 14
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj5/q;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Lj5/q;

    .line 15
    new-instance p2, Lj5/f0;

    invoke-direct {p2}, Lj5/f0;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lj5/f0;

    .line 16
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj5/j;

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lj5/j;

    .line 17
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/List;

    .line 18
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/List;

    .line 19
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    .line 20
    invoke-static {}, Lj5/u;->a()Lj5/u;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lj5/u;

    .line 21
    invoke-virtual {p1}, Lj5/q;->a()Lg5/s;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    if-eqz p3, :cond_67

    .line 22
    invoke-virtual {p1, p3}, Lj5/q;->f(Lg5/s;)Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 23
    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    const/4 p4, 0x0

    invoke-virtual {p0, p3, p1, p4}, Lcom/google/firebase/auth/FirebaseAuth;->i(Lg5/s;Lcom/google/android/gms/internal/firebase_auth/zzff;Z)V

    .line 24
    :cond_67
    invoke-virtual {p2, p0}, Lj5/j;->d(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method

.method static synthetic g(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, v1}, Lb5/g;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public static getInstance(Lb5/g;)Lcom/google/firebase/auth/FirebaseAuth;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 3
    const-class v0, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0, v0}, Lb5/g;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method private final declared-synchronized k(Lj5/s;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lj5/s;
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

.method static synthetic o(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/List;

    return-object p0
.end method

.method private final p(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Lg5/b;->a(Ljava/lang/String;)Lg5/b;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lg5/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic r(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    return-object p0
.end method

.method private final s(Lg5/s;)V
    .registers 6

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_2c

    .line 1
    invoke-virtual {p1}, Lg5/s;->b4()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notifying id token listeners about user ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_2c
    const-string v1, "Notifying id token listeners about a sign-out event."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    if-eqz p1, :cond_38

    .line 3
    invoke-virtual {p1}, Lg5/s;->n4()Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    .line 4
    :goto_39
    new-instance v0, Lq6/b;

    invoke-direct {v0, p1}, Lq6/b;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lj5/u;

    new-instance v1, Lcom/google/firebase/auth/a;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/a;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lq6/b;)V

    invoke-virtual {p1, v1}, Lj5/u;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final declared-synchronized t()Lj5/s;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lj5/s;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lj5/s;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    .line 4
    invoke-direct {v0, v1}, Lj5/s;-><init>(Lb5/g;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->k(Lj5/s;)V

    .line 5
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lj5/s;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final u(Lg5/s;)V
    .registers 5

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_2c

    .line 1
    invoke-virtual {p1}, Lg5/s;->b4()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Notifying auth state listeners about user ( "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_2c
    const-string p1, "Notifying auth state listeners about a sign-out event."

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_31
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lj5/u;

    new-instance v0, Lcom/google/firebase/auth/c;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p1, v0}, Lj5/u;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lg5/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->f(Lg5/s;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public b()Lg5/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    return-object v0
.end method

.method public c()Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lg5/s;->c4()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    check-cast v0, Lj5/e0;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lj5/e0;->r4(Z)V

    .line 4
    new-instance v1, Lj5/y;

    invoke-direct {v1, v0}, Lj5/y;-><init>(Lj5/e0;)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1c
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$d;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Li5/i;->l(Lb5/g;Lj5/c;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public d(Lg5/d;)Lcom/google/android/gms/tasks/Task;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/d;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lg5/d;->X3()Lg5/d;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lg5/e;

    if-eqz v0, :cond_53

    .line 4
    check-cast p1, Lg5/e;

    .line 5
    invoke-virtual {p1}, Lg5/e;->e()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 6
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    .line 7
    invoke-virtual {p1}, Lg5/e;->Z3()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lg5/e;->a4()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/String;

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$d;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 9
    invoke-virtual/range {v1 .. v6}, Li5/i;->s(Lb5/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj5/c;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2b
    invoke-virtual {p1}, Lg5/e;->b4()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 11
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 12
    invoke-static {p1}, Li5/o0;->a(Lcom/google/android/gms/common/api/Status;)Lb5/m;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 13
    :cond_45
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$d;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Li5/i;->h(Lb5/g;Lg5/e;Lj5/c;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 14
    :cond_53
    instance-of v0, p1, Lg5/d0;

    if-eqz v0, :cond_69

    .line 15
    check-cast p1, Lg5/d0;

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$d;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Li5/i;->k(Lb5/g;Lg5/d0;Ljava/lang/String;Lj5/c;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 17
    :cond_69
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$d;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Li5/i;->g(Lb5/g;Lg5/d;Ljava/lang/String;Lj5/c;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->h()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lj5/s;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lj5/s;->a()V

    :cond_a
    return-void
.end method

.method public final f(Lg5/s;Z)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/s;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lg5/u;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_12

    .line 1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4457

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 2
    invoke-static {p1}, Li5/o0;->a(Lcom/google/android/gms/common/api/Status;)Lb5/m;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :cond_12
    invoke-virtual {p1}, Lg5/s;->m4()Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->X3()Z

    move-result v1

    if-eqz v1, :cond_2b

    if-nez p2, :cond_2b

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->Z3()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj5/l;->a(Ljava/lang/String;)Lg5/u;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2b
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->Y3()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/auth/b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 10
    invoke-virtual {p2, v1, p1, v0, v2}, Li5/i;->j(Lb5/g;Lg5/s;Ljava/lang/String;Lj5/t;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final h()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 2
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Lj5/q;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v0}, Lg5/s;->b4()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lj5/q;->e(Ljava/lang/String;)V

    .line 5
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    .line 6
    :cond_1f
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Lj5/q;

    const-string v2, "com.google.firebase.auth.FIREBASE_USER"

    .line 7
    invoke-virtual {v0, v2}, Lj5/q;->e(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->s(Lg5/s;)V

    .line 9
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->u(Lg5/s;)V

    return-void
.end method

.method public final i(Lg5/s;Lcom/google/android/gms/internal/firebase_auth/zzff;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/auth/FirebaseAuth;->j(Lg5/s;Lcom/google/android/gms/internal/firebase_auth/zzff;ZZ)V

    return-void
.end method

.method final j(Lg5/s;Lcom/google/android/gms/internal/firebase_auth/zzff;ZZ)V
    .registers 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lg5/s;->b4()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    invoke-virtual {v3}, Lg5/s;->b4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-nez v0, :cond_24

    if-eqz p4, :cond_24

    return-void

    .line 4
    :cond_24
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    if-nez p4, :cond_2a

    :goto_28
    const/4 v1, 0x1

    goto :goto_46

    .line 5
    :cond_2a
    invoke-virtual {p4}, Lg5/s;->m4()Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p4

    .line 6
    invoke-virtual {p4}, Lcom/google/android/gms/internal/firebase_auth/zzff;->Z3()Ljava/lang/String;

    move-result-object p4

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzff;->Z3()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    xor-int/2addr p4, v2

    if-eqz v0, :cond_41

    if-nez p4, :cond_41

    const/4 p4, 0x0

    goto :goto_42

    :cond_41
    const/4 p4, 0x1

    :goto_42
    move v2, p4

    if-nez v0, :cond_46

    goto :goto_28

    .line 9
    :cond_46
    :goto_46
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    if-nez p4, :cond_50

    .line 11
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    goto :goto_6f

    .line 12
    :cond_50
    invoke-virtual {p1}, Lg5/s;->a4()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Lg5/s;->f4(Ljava/util/List;)Lg5/s;

    .line 13
    invoke-virtual {p1}, Lg5/s;->c4()Z

    move-result p4

    if-nez p4, :cond_62

    .line 14
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    invoke-virtual {p4}, Lg5/s;->i4()Lg5/s;

    .line 15
    :cond_62
    invoke-virtual {p1}, Lg5/s;->Y3()Lg5/y;

    move-result-object p4

    invoke-virtual {p4}, Lg5/y;->a()Ljava/util/List;

    move-result-object p4

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    invoke-virtual {v0, p4}, Lg5/s;->j4(Ljava/util/List;)V

    :goto_6f
    if-eqz p3, :cond_78

    .line 17
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Lj5/q;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    invoke-virtual {p4, v0}, Lj5/q;->c(Lg5/s;)V

    :cond_78
    if-eqz v2, :cond_86

    .line 18
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    if-eqz p4, :cond_81

    .line 19
    invoke-virtual {p4, p2}, Lg5/s;->h4(Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    .line 20
    :cond_81
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    invoke-direct {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->s(Lg5/s;)V

    :cond_86
    if-eqz v1, :cond_8d

    .line 21
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    invoke-direct {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->u(Lg5/s;)V

    :cond_8d
    if-eqz p3, :cond_94

    .line 22
    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Lj5/q;

    invoke-virtual {p3, p1, p2}, Lj5/q;->d(Lg5/s;Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    .line 23
    :cond_94
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuth;->t()Lj5/s;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lg5/s;

    invoke-virtual {p2}, Lg5/s;->m4()Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj5/s;->b(Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_6
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/String;

    .line 4
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final m()Lb5/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    return-object v0
.end method

.method public final n(Lg5/s;Lg5/d;)Lcom/google/android/gms/tasks/Task;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/s;",
            "Lg5/d;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lg5/d;->X3()Lg5/d;

    move-result-object v3

    .line 4
    instance-of p2, v3, Lg5/e;

    if-eqz p2, :cond_5f

    .line 5
    check-cast v3, Lg5/e;

    .line 6
    invoke-virtual {v3}, Lg5/d;->W3()Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 8
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    .line 9
    invoke-virtual {v3}, Lg5/e;->Z3()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v3}, Lg5/e;->a4()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual {p1}, Lg5/s;->l4()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/google/firebase/auth/FirebaseAuth$c;

    invoke-direct {v10, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    .line 12
    invoke-virtual/range {v4 .. v10}, Li5/i;->r(Lb5/g;Lg5/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj5/t;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 13
    :cond_37
    invoke-virtual {v3}, Lg5/e;->b4()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/auth/FirebaseAuth;->p(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 14
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42b0

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 15
    invoke-static {p1}, Li5/o0;->a(Lcom/google/android/gms/common/api/Status;)Lb5/m;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 16
    :cond_51
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    new-instance v1, Lcom/google/firebase/auth/FirebaseAuth$c;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p2, v0, p1, v3, v1}, Li5/i;->p(Lb5/g;Lg5/s;Lg5/e;Lj5/t;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 17
    :cond_5f
    instance-of p2, v3, Lg5/d0;

    if-eqz p2, :cond_77

    .line 18
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    move-object v7, v3

    check-cast v7, Lg5/d0;

    iget-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/String;

    new-instance v9, Lcom/google/firebase/auth/FirebaseAuth$c;

    invoke-direct {v9, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Li5/i;->q(Lb5/g;Lg5/s;Lg5/d0;Ljava/lang/String;Lj5/t;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 19
    :cond_77
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    .line 20
    invoke-virtual {p1}, Lg5/s;->l4()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$c;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v2, p1

    .line 21
    invoke-virtual/range {v0 .. v5}, Li5/i;->o(Lb5/g;Lg5/s;Lg5/d;Ljava/lang/String;Lj5/t;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lg5/s;Lg5/d;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/s;",
            "Lg5/d;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Li5/i;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lb5/g;

    .line 4
    invoke-virtual {p2}, Lg5/d;->X3()Lg5/d;

    move-result-object p2

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$c;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 5
    invoke-virtual {v0, v1, p1, p2, v2}, Li5/i;->i(Lb5/g;Lg5/s;Lg5/d;Lj5/t;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.firebase.auth.FirebaseAuth.a (com.google.firebase.auth.FirebaseAuth$a)
.class public interface abstract Lcom/google/firebase/auth/FirebaseAuth$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/FirebaseAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/google/firebase/auth/FirebaseAuth;)V
.end method

###### Class com.google.firebase.auth.FirebaseAuth.b (com.google.firebase.auth.FirebaseAuth$b)
.class public interface abstract Lcom/google/firebase/auth/FirebaseAuth$b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/FirebaseAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lcom/google/firebase/auth/FirebaseAuth;)V
.end method

###### Class com.google.firebase.auth.FirebaseAuth.c (com.google.firebase.auth.FirebaseAuth$c)
.class final Lcom/google/firebase/auth/FirebaseAuth$c;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lj5/c;
.implements Lj5/i;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/FirebaseAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$c;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase_auth/zzff;Lg5/s;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2, p1}, Lg5/s;->h4(Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth$c;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->j(Lg5/s;Lcom/google/android/gms/internal/firebase_auth/zzff;ZZ)V

    return-void
.end method

.method public final v0(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->X3()I

    move-result v0

    const/16 v1, 0x4273

    if-eq v0, v1, :cond_20

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->X3()I

    move-result v0

    const/16 v1, 0x427d

    if-eq v0, v1, :cond_20

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->X3()I

    move-result v0

    const/16 v1, 0x426d

    if-eq v0, v1, :cond_20

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->X3()I

    move-result p1

    const/16 v0, 0x42c3

    if-ne p1, v0, :cond_25

    .line 5
    :cond_20
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$c;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->e()V

    :cond_25
    return-void
.end method

###### Class com.google.firebase.auth.FirebaseAuth.d (com.google.firebase.auth.FirebaseAuth$d)
.class Lcom/google/firebase/auth/FirebaseAuth$d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lj5/c;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/FirebaseAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$d;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase_auth/zzff;Lg5/s;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2, p1}, Lg5/s;->h4(Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth$d;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->i(Lg5/s;Lcom/google/android/gms/internal/firebase_auth/zzff;Z)V

    return-void
.end method
