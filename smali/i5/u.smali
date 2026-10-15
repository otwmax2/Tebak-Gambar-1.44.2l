###### Class i5.u (i5.u)
.class final Li5/u;
.super Li5/z0;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li5/z0<",
        "Ljava/lang/Object;",
        "Lj5/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final z:Lcom/google/android/gms/internal/firebase_auth/zzdj;


# direct methods
.method public constructor <init>(Lg5/d;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Li5/z0;-><init>(I)V

    const-string v0, "credential cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lj5/w;->a(Lg5/d;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzfy;->V3(Z)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzdj;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzdj;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzfy;)V

    iput-object p2, p0, Li5/u;->z:Lcom/google/android/gms/internal/firebase_auth/zzdj;

    return-void
.end method


# virtual methods
.method public final m()V
    .registers 4

    .line 1
    iget-object v0, p0, Li5/z0;->c:Lb5/g;

    iget-object v1, p0, Li5/z0;->k:Lcom/google/android/gms/internal/firebase_auth/zzew;

    invoke-static {v0, v1}, Li5/i;->n(Lb5/g;Lcom/google/android/gms/internal/firebase_auth/zzew;)Lj5/e0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li5/z0;->d:Lg5/s;

    invoke-virtual {v1}, Lg5/s;->b4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lg5/s;->b4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3
    iget-object v1, p0, Li5/z0;->e:Ljava/lang/Object;

    check-cast v1, Lj5/c;

    iget-object v2, p0, Li5/z0;->j:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-interface {v1, v2, v0}, Lj5/c;->a(Lcom/google/android/gms/internal/firebase_auth/zzff;Lg5/s;)V

    .line 4
    new-instance v1, Lj5/y;

    invoke-direct {v1, v0}, Lj5/y;-><init>(Lj5/e0;)V

    invoke-virtual {p0, v1}, Li5/z0;->l(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_2a
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4280

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Li5/z0;->g(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method final synthetic o(Li5/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Li5/i1;

    invoke-direct {v0, p0, p2}, Li5/i1;-><init>(Li5/z0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    iput-object v0, p0, Li5/z0;->g:Li5/a1;

    .line 3
    iget-boolean p2, p0, Li5/z0;->t:Z

    if-eqz p2, :cond_1b

    .line 4
    invoke-interface {p1}, Li5/n0;->zza()Li5/s0;

    move-result-object p1

    iget-object p2, p0, Li5/u;->z:Lcom/google/android/gms/internal/firebase_auth/zzdj;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzdj;->V3()Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p2

    iget-object v0, p0, Li5/z0;->b:Li5/b1;

    .line 6
    invoke-interface {p1, p2, v0}, Li5/s0;->Y4(Lcom/google/android/gms/internal/firebase_auth/zzfy;Li5/r0;)V

    return-void

    .line 7
    :cond_1b
    invoke-interface {p1}, Li5/n0;->zza()Li5/s0;

    move-result-object p1

    iget-object p2, p0, Li5/u;->z:Lcom/google/android/gms/internal/firebase_auth/zzdj;

    iget-object v0, p0, Li5/z0;->b:Li5/b1;

    .line 8
    invoke-interface {p1, p2, v0}, Li5/s0;->g4(Lcom/google/android/gms/internal/firebase_auth/zzdj;Li5/r0;)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    const-string v0, "reauthenticateWithCredentialWithData"

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/common/api/internal/TaskApiCall;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
            "Li5/n0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->c(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 3
    iget-boolean v2, p0, Li5/z0;->t:Z

    if-nez v2, :cond_1a

    iget-boolean v2, p0, Li5/z0;->u:Z

    if-eqz v2, :cond_12

    goto :goto_1a

    :cond_12
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/firebase_auth/zze;->b:Lcom/google/android/gms/common/Feature;

    aput-object v3, v2, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    .line 5
    :goto_1b
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->d([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Li5/t;

    invoke-direct {v1, p0}, Li5/t;-><init>(Li5/u;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->b(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    return-object v0
.end method

###### Class i5.t (i5.t)
.class final synthetic Li5/t;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Li5/u;


# direct methods
.method constructor <init>(Li5/u;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/t;->a:Li5/u;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Li5/t;->a:Li5/u;

    check-cast p1, Li5/n0;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1, p2}, Li5/u;->o(Li5/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
