###### Class i5.k (i5.k)
.class final Li5/k;
.super Li5/z0;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li5/z0<",
        "Lg5/u;",
        "Lj5/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final z:Lcom/google/android/gms/internal/firebase_auth/zzcn;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Li5/z0;-><init>(I)V

    const-string v0, "refresh token cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzcn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzcn;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li5/k;->z:Lcom/google/android/gms/internal/firebase_auth/zzcn;

    return-void
.end method


# virtual methods
.method public final m()V
    .registers 4

    .line 1
    iget-object v0, p0, Li5/z0;->j:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->Y3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Li5/z0;->j:Lcom/google/android/gms/internal/firebase_auth/zzff;

    iget-object v1, p0, Li5/k;->z:Lcom/google/android/gms/internal/firebase_auth/zzcn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzcn;->V3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->V3(Ljava/lang/String;)V

    .line 3
    :cond_17
    iget-object v0, p0, Li5/z0;->e:Ljava/lang/Object;

    check-cast v0, Lj5/c;

    iget-object v1, p0, Li5/z0;->j:Lcom/google/android/gms/internal/firebase_auth/zzff;

    iget-object v2, p0, Li5/z0;->d:Lg5/s;

    invoke-interface {v0, v1, v2}, Lj5/c;->a(Lcom/google/android/gms/internal/firebase_auth/zzff;Lg5/s;)V

    .line 4
    iget-object v0, p0, Li5/z0;->j:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->Z3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj5/l;->a(Ljava/lang/String;)Lg5/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Li5/z0;->l(Ljava/lang/Object;)V

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

    iget-object p2, p0, Li5/k;->z:Lcom/google/android/gms/internal/firebase_auth/zzcn;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzcn;->V3()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Li5/z0;->b:Li5/b1;

    .line 6
    invoke-interface {p1, p2, v0}, Li5/s0;->f3(Ljava/lang/String;Li5/r0;)V

    return-void

    .line 7
    :cond_1b
    invoke-interface {p1}, Li5/n0;->zza()Li5/s0;

    move-result-object p1

    iget-object p2, p0, Li5/k;->z:Lcom/google/android/gms/internal/firebase_auth/zzcn;

    iget-object v0, p0, Li5/z0;->b:Li5/b1;

    .line 8
    invoke-interface {p1, p2, v0}, Li5/s0;->b2(Lcom/google/android/gms/internal/firebase_auth/zzcn;Li5/r0;)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    const-string v0, "getAccessToken"

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/common/api/internal/TaskApiCall;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
            "Li5/n0;",
            "Lg5/u;",
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

    new-instance v1, Li5/j;

    invoke-direct {v1, p0}, Li5/j;-><init>(Li5/k;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->b(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    return-object v0
.end method

###### Class i5.j (i5.j)
.class final synthetic Li5/j;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Li5/k;


# direct methods
.method constructor <init>(Li5/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/j;->a:Li5/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Li5/j;->a:Li5/k;

    check-cast p1, Li5/n0;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1, p2}, Li5/k;->o(Li5/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
