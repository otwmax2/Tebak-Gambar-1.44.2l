###### Class i5.s (i5.s)
.class final Li5/s;
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
.field private final z:Lg5/e;


# direct methods
.method public constructor <init>(Lg5/e;)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Li5/z0;-><init>(I)V

    const-string v0, "credential cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/e;

    iput-object p1, p0, Li5/s;->z:Lg5/e;

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
    iget-object v1, p0, Li5/z0;->e:Ljava/lang/Object;

    check-cast v1, Lj5/c;

    iget-object v2, p0, Li5/z0;->j:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-interface {v1, v2, v0}, Lj5/c;->a(Lcom/google/android/gms/internal/firebase_auth/zzff;Lg5/s;)V

    .line 3
    new-instance v1, Lj5/y;

    invoke-direct {v1, v0}, Lj5/y;-><init>(Lj5/e0;)V

    invoke-virtual {p0, v1}, Li5/z0;->l(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic o(Li5/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 5
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
    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzdp;

    iget-object v0, p0, Li5/s;->z:Lg5/e;

    iget-object v1, p0, Li5/z0;->d:Lg5/s;

    .line 4
    invoke-virtual {v0, v1}, Lg5/e;->Y3(Lg5/s;)Lg5/e;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzdp;-><init>(Lg5/e;)V

    .line 5
    iget-boolean v0, p0, Li5/z0;->t:Z

    if-eqz v0, :cond_26

    .line 6
    invoke-interface {p1}, Li5/n0;->zza()Li5/s0;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzdp;->V3()Lg5/e;

    move-result-object p2

    iget-object v0, p0, Li5/z0;->b:Li5/b1;

    .line 8
    invoke-interface {p1, p2, v0}, Li5/s0;->f8(Lg5/e;Li5/r0;)V

    return-void

    .line 9
    :cond_26
    invoke-interface {p1}, Li5/n0;->zza()Li5/s0;

    move-result-object p1

    iget-object v0, p0, Li5/z0;->b:Li5/b1;

    .line 10
    invoke-interface {p1, p2, v0}, Li5/s0;->d2(Lcom/google/android/gms/internal/firebase_auth/zzdp;Li5/r0;)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    const-string v0, "linkEmailAuthCredential"

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

    new-instance v1, Li5/r;

    invoke-direct {v1, p0}, Li5/r;-><init>(Li5/s;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->b(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    return-object v0
.end method

###### Class i5.r (i5.r)
.class final synthetic Li5/r;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Li5/s;


# direct methods
.method constructor <init>(Li5/s;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/r;->a:Li5/s;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Li5/r;->a:Li5/s;

    check-cast p1, Li5/n0;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1, p2}, Li5/s;->o(Li5/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
