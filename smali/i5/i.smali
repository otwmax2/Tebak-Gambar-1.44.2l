###### Class i5.i (i5.i)
.class public final Li5/i;
.super Li5/b;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li5/b<",
        "Li5/v0;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Li5/v0;

.field private final e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Li5/a<",
            "Li5/v0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Li5/v0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Li5/b;-><init>()V

    .line 2
    iput-object p1, p0, Li5/i;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Li5/i;->d:Li5/v0;

    .line 4
    invoke-virtual {p0}, Li5/b;->c()Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Li5/i;->e:Ljava/util/concurrent/Future;

    return-void
.end method

.method private final m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;",
            "Li5/e<",
            "Li5/n0;",
            "TResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/h;

    invoke-direct {v0, p0, p2}, Li5/h;-><init>(Li5/i;Li5/e;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->m(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static n(Lb5/g;Lcom/google/android/gms/internal/firebase_auth/zzew;)Lj5/e0;
    .registers 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lj5/a0;

    const-string v2, "firebase"

    invoke-direct {v1, p1, v2}, Lj5/a0;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzew;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->d4()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    const/4 v2, 0x0

    .line 8
    :goto_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 9
    new-instance v3, Lj5/a0;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzfj;

    invoke-direct {v3, v4}, Lj5/a0;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzfj;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 10
    :cond_39
    new-instance v1, Lj5/e0;

    invoke-direct {v1, p0, v0}, Lj5/e0;-><init>(Lb5/g;Ljava/util/List;)V

    .line 11
    new-instance p0, Lj5/g0;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->b4()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->a4()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lj5/g0;-><init>(JJ)V

    .line 13
    invoke-virtual {v1, p0}, Lj5/e0;->q4(Lj5/g0;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->c4()Z

    move-result p0

    invoke-virtual {v1, p0}, Lj5/e0;->r4(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->e4()Lg5/o0;

    move-result-object p0

    invoke-virtual {v1, p0}, Lj5/e0;->p4(Lg5/o0;)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;->f4()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj5/n;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 17
    invoke-virtual {v1, p0}, Lg5/s;->j4(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method final c()Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Li5/a<",
            "Li5/v0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/i;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object v0, p0, Li5/i;->c:Landroid/content/Context;

    iget-object v1, p0, Li5/i;->d:Li5/v0;

    .line 3
    new-instance v2, Li5/l0;

    invoke-direct {v2, v1, v0}, Li5/l0;-><init>(Li5/v0;Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzf;->a()Lcom/google/android/gms/internal/firebase_auth/zzg;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzk;->a:I

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzg;->h(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lb5/g;Lg5/d;Ljava/lang/String;Lj5/c;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lg5/d;",
            "Ljava/lang/String;",
            "Lj5/c;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/e0;

    invoke-direct {v0, p2, p3}, Li5/e0;-><init>(Lg5/d;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p4}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/e0;

    .line 4
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 5
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lb5/g;Lg5/e;Lj5/c;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lg5/e;",
            "Lj5/c;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/i0;

    invoke-direct {v0, p2}, Li5/i0;-><init>(Lg5/e;)V

    .line 2
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/i0;

    .line 4
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 5
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lb5/g;Lg5/s;Lg5/d;Lj5/t;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lg5/s;",
            "Lg5/d;",
            "Lj5/t;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Lg5/s;->g4()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 6
    invoke-virtual {p3}, Lg5/d;->V3()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 7
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4277

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 8
    invoke-static {p1}, Li5/o0;->a(Lcom/google/android/gms/common/api/Status;)Lb5/m;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2c
    instance-of v0, p3, Lg5/e;

    if-eqz v0, :cond_78

    .line 11
    check-cast p3, Lg5/e;

    invoke-virtual {p3}, Lg5/e;->e()Z

    move-result v0

    if-nez v0, :cond_58

    .line 12
    new-instance v0, Li5/m;

    invoke-direct {v0, p3}, Li5/m;-><init>(Lg5/e;)V

    .line 13
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Li5/z0;->c(Lg5/s;)Li5/z0;

    move-result-object p1

    .line 15
    invoke-virtual {p1, p4}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p4}, Li5/z0;->e(Lj5/i;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/m;

    .line 17
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 18
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 19
    :cond_58
    new-instance v0, Li5/s;

    invoke-direct {v0, p3}, Li5/s;-><init>(Lg5/e;)V

    .line 20
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Li5/z0;->c(Lg5/s;)Li5/z0;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p4}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p4}, Li5/z0;->e(Lj5/i;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/s;

    .line 24
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 25
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 26
    :cond_78
    instance-of v0, p3, Lg5/d0;

    if-eqz v0, :cond_9e

    .line 27
    check-cast p3, Lg5/d0;

    .line 28
    new-instance v0, Li5/q;

    invoke-direct {v0, p3}, Li5/q;-><init>(Lg5/d0;)V

    .line 29
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 30
    invoke-virtual {p1, p2}, Li5/z0;->c(Lg5/s;)Li5/z0;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p4}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    .line 32
    invoke-virtual {p1, p4}, Li5/z0;->e(Lj5/i;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/q;

    .line 33
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 34
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 35
    :cond_9e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Li5/o;

    invoke-direct {v0, p3}, Li5/o;-><init>(Lg5/d;)V

    .line 40
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Li5/z0;->c(Lg5/s;)Li5/z0;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p4}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p4}, Li5/z0;->e(Lj5/i;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/o;

    .line 44
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 45
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lb5/g;Lg5/s;Ljava/lang/String;Lj5/t;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lg5/s;",
            "Ljava/lang/String;",
            "Lj5/t;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lg5/u;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/k;

    invoke-direct {v0, p3}, Li5/k;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Li5/z0;->c(Lg5/s;)Li5/z0;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p4}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p4}, Li5/z0;->e(Lj5/i;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/k;

    .line 6
    invoke-virtual {p0, p1}, Li5/b;->b(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lb5/g;Lg5/d0;Ljava/lang/String;Lj5/c;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lg5/d0;",
            "Ljava/lang/String;",
            "Lj5/c;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/k0;

    invoke-direct {v0, p2, p3}, Li5/k0;-><init>(Lg5/d0;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p4}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/k0;

    .line 4
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 5
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lb5/g;Lj5/c;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lj5/c;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/c0;

    invoke-direct {v0, p3}, Li5/c0;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/c0;

    .line 4
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 5
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lb5/g;Lg5/s;Lg5/d;Ljava/lang/String;Lj5/t;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lg5/s;",
            "Lg5/d;",
            "Ljava/lang/String;",
            "Lj5/t;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/u;

    invoke-direct {v0, p3, p4}, Li5/u;-><init>(Lg5/d;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Li5/z0;->c(Lg5/s;)Li5/z0;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p5}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p5}, Li5/z0;->e(Lj5/i;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/u;

    .line 6
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lb5/g;Lg5/s;Lg5/e;Lj5/t;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lg5/s;",
            "Lg5/e;",
            "Lj5/t;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/w;

    invoke-direct {v0, p3}, Li5/w;-><init>(Lg5/e;)V

    .line 2
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Li5/z0;->c(Lg5/s;)Li5/z0;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p4}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p4}, Li5/z0;->e(Lj5/i;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/w;

    .line 6
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lb5/g;Lg5/s;Lg5/d0;Ljava/lang/String;Lj5/t;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lg5/s;",
            "Lg5/d0;",
            "Ljava/lang/String;",
            "Lj5/t;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/a0;

    invoke-direct {v0, p3, p4}, Li5/a0;-><init>(Lg5/d0;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Li5/z0;->c(Lg5/s;)Li5/z0;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p5}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p5}, Li5/z0;->e(Lj5/i;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/a0;

    .line 6
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lb5/g;Lg5/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj5/t;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lg5/s;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lj5/t;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/y;

    invoke-direct {v0, p3, p4, p5}, Li5/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Li5/z0;->c(Lg5/s;)Li5/z0;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p6}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p6}, Li5/z0;->e(Lj5/i;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/y;

    .line 6
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lb5/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj5/c;)Lcom/google/android/gms/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lj5/c;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li5/g0;

    invoke-direct {v0, p2, p3, p4}, Li5/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Li5/z0;->b(Lb5/g;)Li5/z0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p5}, Li5/z0;->f(Ljava/lang/Object;)Li5/z0;

    move-result-object p1

    check-cast p1, Li5/g0;

    .line 4
    invoke-virtual {p0, p1}, Li5/b;->e(Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 5
    invoke-direct {p0, p2, p1}, Li5/i;->m(Lcom/google/android/gms/tasks/Task;Li5/e;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
