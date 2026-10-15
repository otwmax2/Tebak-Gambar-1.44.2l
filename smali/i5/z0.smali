###### Class i5.z0 (i5.z0)
.class abstract Li5/z0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Li5/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li5/e<",
        "Li5/n0;",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field protected final a:I

.field final b:Li5/b1;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/b1;"
        }
    .end annotation
.end field

.field protected c:Lb5/g;

.field protected d:Lg5/s;

.field protected e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field protected f:Lj5/i;

.field protected g:Li5/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/a1<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field protected final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/f0;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/concurrent/Executor;

.field protected j:Lcom/google/android/gms/internal/firebase_auth/zzff;

.field protected k:Lcom/google/android/gms/internal/firebase_auth/zzew;

.field protected l:Lcom/google/android/gms/internal/firebase_auth/zzem;

.field protected m:Lcom/google/android/gms/internal/firebase_auth/zzfm;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Lg5/d;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Lcom/google/android/gms/internal/firebase_auth/zzej;

.field protected t:Z

.field protected u:Z

.field private v:Z

.field w:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private x:Ljava/lang/Object;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field private y:Lcom/google/android/gms/common/api/Status;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Li5/b1;

    invoke-direct {v0, p0}, Li5/b1;-><init>(Li5/z0;)V

    iput-object v0, p0, Li5/z0;->b:Li5/b1;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li5/z0;->h:Ljava/util/List;

    .line 4
    iput p1, p0, Li5/z0;->a:I

    return-void
.end method

.method static synthetic h(Li5/z0;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Li5/z0;->n()V

    return-void
.end method

.method static synthetic i(Li5/z0;Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Li5/z0;->k(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic j(Li5/z0;Z)Z
    .registers 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Li5/z0;->v:Z

    return p1
.end method

.method private final k(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    .line 1
    iget-object v0, p0, Li5/z0;->f:Lj5/i;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lj5/i;->v0(Lcom/google/android/gms/common/api/Status;)V

    :cond_7
    return-void
.end method

.method private final n()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Li5/z0;->m()V

    .line 2
    iget-boolean v0, p0, Li5/z0;->v:Z

    const-string v1, "no success or failure set on method implementation"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Li5/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/e<",
            "Li5/n0;",
            "TResultT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li5/z0;->t:Z

    return-object p0
.end method

.method public final b(Lb5/g;)Li5/z0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            ")",
            "Li5/z0<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseApp cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/g;

    iput-object p1, p0, Li5/z0;->c:Lb5/g;

    return-object p0
.end method

.method public final c(Lg5/s;)Li5/z0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/s;",
            ")",
            "Li5/z0<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseUser cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/s;

    iput-object p1, p0, Li5/z0;->d:Lg5/s;

    return-object p0
.end method

.method public final d()Li5/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/e<",
            "Li5/n0;",
            "TResultT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li5/z0;->u:Z

    return-object p0
.end method

.method public final e(Lj5/i;)Li5/z0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/i;",
            ")",
            "Li5/z0<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external failure callback cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj5/i;

    iput-object p1, p0, Li5/z0;->f:Lj5/i;

    return-object p0
.end method

.method public final f(Ljava/lang/Object;)Li5/z0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Li5/z0<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external callback cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Li5/z0;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final g(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li5/z0;->v:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li5/z0;->w:Z

    .line 3
    iput-object p1, p0, Li5/z0;->y:Lcom/google/android/gms/common/api/Status;

    .line 4
    iget-object v0, p0, Li5/z0;->g:Li5/a1;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Li5/a1;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final l(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li5/z0;->v:Z

    .line 2
    iput-boolean v0, p0, Li5/z0;->w:Z

    .line 3
    iput-object p1, p0, Li5/z0;->x:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Li5/z0;->g:Li5/a1;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Li5/a1;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public abstract m()V
.end method
