###### Class i5.b1 (i5.b1)
.class final Li5/b1;
.super Li5/q0;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic o:Li5/z0;


# direct methods
.method constructor <init>(Li5/z0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Li5/b1;->o:Li5/z0;

    invoke-direct {p0}, Li5/q0;-><init>()V

    return-void
.end method

.method private final X0(Lcom/google/android/gms/common/api/Status;Lg5/d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    invoke-static {v0, p1}, Li5/z0;->i(Li5/z0;Lcom/google/android/gms/common/api/Status;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-object p2, v0, Li5/z0;->p:Lg5/d;

    .line 3
    iput-object p3, v0, Li5/z0;->q:Ljava/lang/String;

    .line 4
    iput-object p4, v0, Li5/z0;->r:Ljava/lang/String;

    .line 5
    iget-object p2, v0, Li5/z0;->f:Lj5/i;

    if-eqz p2, :cond_14

    .line 6
    invoke-interface {p2, p1}, Lj5/i;->v0(Lcom/google/android/gms/common/api/Status;)V

    .line 7
    :cond_14
    iget-object p2, p0, Li5/b1;->o:Li5/z0;

    invoke-virtual {p2, p1}, Li5/z0;->g(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private final t1(Li5/g1;)V
    .registers 4

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget-object v0, v0, Li5/z0;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Li5/h1;

    invoke-direct {v1, p0, p1}, Li5/h1;-><init>(Li5/b1;Li5/g1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-object p1, v0, Li5/z0;->o:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Li5/z0;->j(Li5/z0;Z)Z

    .line 4
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-boolean v1, v0, Li5/z0;->w:Z

    .line 5
    new-instance v0, Li5/f1;

    invoke-direct {v0, p0, p1}, Li5/f1;-><init>(Li5/b1;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Li5/b1;->t1(Li5/g1;)V

    return-void
.end method

.method public final H2(Lcom/google/android/gms/internal/firebase_auth/zzem;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-object p1, v0, Li5/z0;->l:Lcom/google/android/gms/internal/firebase_auth/zzem;

    .line 3
    invoke-static {v0}, Li5/z0;->h(Li5/z0;)V

    return-void
.end method

.method public final I8(Lcom/google/android/gms/common/api/Status;Lg5/d0;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Li5/b1;->X0(Lcom/google/android/gms/common/api/Status;Lg5/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final J8()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    invoke-static {v0}, Li5/z0;->h(Li5/z0;)V

    return-void
.end method

.method public final L5(Lcom/google/android/gms/internal/firebase_auth/zzeh;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeh;->V3()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeh;->W3()Lg5/o0;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeh;->X3()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzeh;->Y3()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, v1, v2, p1}, Li5/b1;->X0(Lcom/google/android/gms/common/api/Status;Lg5/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final S8(Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-object p1, v0, Li5/z0;->j:Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 3
    invoke-static {v0}, Li5/z0;->h(Li5/z0;)V

    return-void
.end method

.method public final Z4(Lg5/d0;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    invoke-static {v0, v1}, Li5/z0;->j(Li5/z0;Z)Z

    .line 3
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-boolean v1, v0, Li5/z0;->w:Z

    .line 4
    new-instance v0, Li5/c1;

    invoke-direct {v0, p0, p1}, Li5/c1;-><init>(Li5/b1;Lg5/d0;)V

    invoke-direct {p0, v0}, Li5/b1;->t1(Li5/g1;)V

    return-void
.end method

.method public final a()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    invoke-static {v0}, Li5/z0;->h(Li5/z0;)V

    return-void
.end method

.method public final b8(Lcom/google/android/gms/internal/firebase_auth/zzej;)V
    .registers 3

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-object p1, v0, Li5/z0;->s:Lcom/google/android/gms/internal/firebase_auth/zzej;

    const-string p1, "REQUIRES_SECOND_FACTOR_AUTH"

    .line 2
    invoke-static {p1}, Lj5/d;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Li5/z0;->g(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final k2(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-object p1, v0, Li5/z0;->j:Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 3
    iput-object p2, v0, Li5/z0;->k:Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 4
    invoke-static {v0}, Li5/z0;->h(Li5/z0;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-object p1, v0, Li5/z0;->n:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Li5/z0;->h(Li5/z0;)V

    return-void
.end method

.method public final p8(Lcom/google/android/gms/internal/firebase_auth/zzfm;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-object p1, v0, Li5/z0;->m:Lcom/google/android/gms/internal/firebase_auth/zzfm;

    .line 3
    invoke-static {v0}, Li5/z0;->h(Li5/z0;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iput-object p1, v0, Li5/z0;->o:Ljava/lang/String;

    .line 3
    new-instance v0, Li5/d1;

    invoke-direct {v0, p0, p1}, Li5/d1;-><init>(Li5/b1;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Li5/b1;->t1(Li5/g1;)V

    return-void
.end method

.method public final v0(Lcom/google/android/gms/common/api/Status;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Y3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a8

    const-string v1, "MISSING_MFA_PENDING_CREDENTIAL"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b9

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_a8

    :cond_17
    const-string v1, "MISSING_MFA_ENROLLMENT_ID"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42ba

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_a8

    :cond_28
    const-string v1, "INVALID_MFA_PENDING_CREDENTIAL"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 7
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bb

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_a8

    :cond_39
    const-string v1, "MFA_ENROLLMENT_NOT_FOUND"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 9
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bc

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_49
    const-string v1, "ADMIN_ONLY_OPERATION"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 11
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bd

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_59
    const-string v1, "UNVERIFIED_EMAIL"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 13
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42be

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_69
    const-string v1, "SECOND_FACTOR_EXISTS"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 15
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bf

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_79
    const-string v1, "SECOND_FACTOR_LIMIT_EXCEEDED"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 17
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_89
    const-string v1, "UNSUPPORTED_FIRST_FACTOR"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 19
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c1

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_a8

    :cond_99
    const-string v1, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 21
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c2

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 22
    :cond_a8
    :goto_a8
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v1, v0, Li5/z0;->a:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c2

    const/4 v1, 0x1

    .line 23
    invoke-static {v0, v1}, Li5/z0;->j(Li5/z0;Z)Z

    .line 24
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Li5/z0;->w:Z

    .line 25
    new-instance v0, Li5/e1;

    invoke-direct {v0, p0, p1}, Li5/e1;-><init>(Li5/b1;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Li5/b1;->t1(Li5/g1;)V

    return-void

    .line 26
    :cond_c2
    invoke-static {v0, p1}, Li5/z0;->i(Li5/z0;Lcom/google/android/gms/common/api/Status;)V

    .line 27
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    invoke-virtual {v0, p1}, Li5/z0;->g(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzb()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    iget v0, v0, Li5/z0;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li5/b1;->o:Li5/z0;

    invoke-static {v0}, Li5/z0;->h(Li5/z0;)V

    return-void
.end method
