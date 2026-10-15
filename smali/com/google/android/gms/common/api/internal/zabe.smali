###### Class com.google.android.gms.common.api.internal.zabe (com.google.android.gms.common.api.internal.zabe)
.class public final Lcom/google/android/gms/common/api/internal/zabe;
.super Lcom/google/android/gms/common/api/GoogleApiClient;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabz;


# instance fields
.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Lcom/google/android/gms/common/internal/zak;

.field private d:Lcom/google/android/gms/common/api/internal/zaca;

.field private final e:I

.field private final f:Landroid/content/Context;

.field private final g:Landroid/os/Looper;

.field final h:Ljava/util/Queue;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "**>;>;"
        }
    .end annotation
.end field

.field private volatile i:Z

.field private final j:Lcom/google/android/gms/common/GoogleApiAvailability;

.field k:Lcom/google/android/gms/common/api/internal/zabx;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final n:Lcom/google/android/gms/common/internal/ClientSettings;

.field final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final p:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/android/gms/common/api/internal/ListenerHolders;

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zat;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Integer;

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/zada;",
            ">;"
        }
    .end annotation
.end field

.field final u:Lcom/google/android/gms/common/api/internal/zadc;


# direct methods
.method public static o(Ljava/lang/Iterable;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->t()Z

    move-result v3

    or-int/2addr v0, v3

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->b()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_6

    :cond_1d
    if-eqz v0, :cond_27

    if-eqz v1, :cond_25

    if-eqz p1, :cond_25

    const/4 p0, 0x2

    return p0

    :cond_25
    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x3

    return p0
.end method

.method static q(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_c
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    :cond_f
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    :cond_12
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0
.end method

.method static bridge synthetic r(Lcom/google/android/gms/common/api/internal/zabe;)V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->i:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabe;->u()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 3
    :cond_c
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_12
    move-exception v0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw v0
.end method

.method private final t(I)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->s:Ljava/lang/Integer;

    if-nez v0, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->s:Ljava/lang/Integer;

    goto :goto_11

    .line 2
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_93

    .line 3
    :goto_11
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    if-eqz p1, :cond_16

    return-void

    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->l:Ljava/util/Map;

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->t()Z

    move-result v3

    or-int/2addr v0, v3

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->b()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_22

    :cond_39
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->s:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_62

    const/4 v1, 0x2

    if-eq p1, v1, :cond_46

    goto :goto_66

    :cond_46
    if-eqz v0, :cond_66

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabe;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabe;->g:Landroid/os/Looper;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zabe;->j:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zabe;->l:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zabe;->n:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zabe;->o:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/zabe;->p:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v11, p0, Lcom/google/android/gms/common/api/internal/zabe;->r:Ljava/util/ArrayList;

    move-object v3, p0

    .line 9
    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/common/api/internal/a;->o(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabe;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    return-void

    :cond_62
    if-eqz v0, :cond_8b

    if-nez v1, :cond_83

    :cond_66
    :goto_66
    new-instance p1, Lcom/google/android/gms/common/api/internal/zabi;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabe;->g:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabe;->j:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zabe;->l:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zabe;->n:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zabe;->o:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zabe;->p:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/zabe;->r:Ljava/util/ArrayList;

    move-object v0, p1

    move-object v2, p0

    move-object v11, p0

    .line 10
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/zabi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabe;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabz;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    return-void

    .line 11
    :cond_83
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_8b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_93
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabe;->q(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->s:Ljava/lang/Integer;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zabe;->q(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot use sign-in mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Mode was already set to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_cc

    :goto_cb
    throw v0

    :goto_cc
    goto :goto_cb
.end method

.method private final u()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->c:Lcom/google/android/gms/common/internal/zak;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zak;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaca;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaca;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->h:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->h(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    goto :goto_0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->c:Lcom/google/android/gms/common/internal/zak;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zak;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(IZ)V
    .registers 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2c

    if-nez p2, :cond_2b

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->i:Z

    if-eqz p1, :cond_a

    goto :goto_2b

    .line 2
    :cond_a
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->i:Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->k:Lcom/google/android/gms/common/api/internal/zabx;

    if-nez p1, :cond_29

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->a()Z

    move-result p1

    if-nez p1, :cond_29

    :try_start_16
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->j:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabe;->f:Landroid/content/Context;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/common/api/internal/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/q;-><init>(Lcom/google/android/gms/common/api/internal/zabe;)V

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->u(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabw;)Lcom/google/android/gms/common/api/internal/zabx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->k:Lcom/google/android/gms/common/api/internal/zabx;
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    const/4 p1, 0x0

    .line 6
    throw p1

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    .line 7
    :cond_2c
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabe;->u:Lcom/google/android/gms/common/api/internal/zadc;

    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/zadc;->a:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 8
    array-length v1, p2

    :goto_3a
    if-ge v0, v1, :cond_46

    aget-object v2, p2, v0

    sget-object v3, Lcom/google/android/gms/common/api/internal/zadc;->c:Lcom/google/android/gms/common/api/Status;

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_46
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabe;->c:Lcom/google/android/gms/common/internal/zak;

    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/internal/zak;->e(I)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabe;->c:Lcom/google/android/gms/common/internal/zak;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/zak;->a()V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_56

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabe;->u()V

    :cond_56
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->j:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->f:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->V3()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->k(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->s()Z

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->i:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->c:Lcom/google/android/gms/common/internal/zak;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zak;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->c:Lcom/google/android/gms/common/internal/zak;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zak;->a()V

    :cond_1f
    return-void
.end method

.method public final d()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v4, "Sign-in mode should have been set explicitly by auto-manage."

    .line 2
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    goto :goto_34

    .line 3
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->s:Ljava/lang/Integer;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->l:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/zabe;->o(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->s:Ljava/lang/Integer;

    goto :goto_34

    .line 5
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_7f

    .line 6
    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->s:Ljava/lang/Integer;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_87

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4f

    if-eq v0, v3, :cond_4f

    if-ne v0, v1, :cond_4d

    goto :goto_50

    :cond_4d
    move v1, v0

    goto :goto_51

    :cond_4f
    move v1, v0

    :goto_50
    const/4 v2, 0x1

    :goto_51
    :try_start_51
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    .line 9
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Illegal sign-in mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/zabe;->t(I)V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabe;->u()V
    :try_end_6d
    .catchall {:try_start_51 .. :try_end_6d} :catchall_78

    :try_start_6d
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_87

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_78
    move-exception v0

    .line 14
    :try_start_79
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 15
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    throw v0

    :cond_7f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_87
    .catchall {:try_start_79 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    throw v0
.end method

.method public final e()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->u:Lcom/google/android/gms/common/api/internal/zadc;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zadc;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    if-eqz v0, :cond_11

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaca;->f()V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->q:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->h:Ljava/util/Queue;

    .line 5
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->r(Lcom/google/android/gms/common/api/internal/j0;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e()V

    goto :goto_1c

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->h:Ljava/util/Queue;

    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_4a

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 9
    :goto_3b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 10
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->s()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->c:Lcom/google/android/gms/common/internal/zak;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zak;->a()V
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_4a

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    goto :goto_3b

    :catchall_4a
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    goto :goto_52

    :goto_51
    throw v0

    :goto_52
    goto :goto_51
.end method

.method public final f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->i:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    .line 3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->u:Lcom/google/android/gms/common/api/internal/zadc;

    const-string v1, " mUnconsumedApiCalls.size()="

    .line 4
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zadc;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    if-eqz v0, :cond_45

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zaca;->h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->t()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->l:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->u()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_15
    const-string v0, "the API"

    .line 3
    :goto_17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x41

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->h:Ljava/util/Queue;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_55

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 7
    :goto_4a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 8
    :cond_4e
    :try_start_4e
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zaca;->b(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_55

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    goto :goto_4a

    :catchall_55
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    goto :goto_5d

    :goto_5c
    throw p1

    :goto_5d
    goto :goto_5c
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->t()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->l:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->u()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_15
    const-string v0, "the API"

    .line 3
    :goto_17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x41

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    if-eqz v0, :cond_74

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->i:Z

    if-eqz v1, :cond_6d

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->h:Ljava/util/Queue;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_4c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->h:Ljava/util/Queue;

    .line 7
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->h:Ljava/util/Queue;

    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->u:Lcom/google/android/gms/common/api/internal/zadc;

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zadc;->a(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    .line 10
    sget-object v1, Lcom/google/android/gms/common/api/Status;->w:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_66
    .catchall {:try_start_3f .. :try_end_66} :catchall_7c

    goto :goto_4c

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 11
    :goto_69
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 12
    :cond_6d
    :try_start_6d
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zaca;->c(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_7c

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    goto :goto_69

    .line 13
    :cond_74
    :try_start_74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    goto :goto_84

    :goto_83
    throw p1

    :goto_84
    goto :goto_83
.end method

.method public final j()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->g:Landroid/os/Looper;

    return-object v0
.end method

.method public final k(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zaca;->g(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final l()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaca;->e()V

    :cond_7
    return-void
.end method

.method public final m(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->c:Lcom/google/android/gms/common/internal/zak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zak;->f(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/common/api/internal/zada;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->t:Ljava/util/Set;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_57

    const-string v1, "GoogleApiClientImpl"

    if-nez v0, :cond_16

    :try_start_b
    new-instance p1, Ljava/lang/Exception;

    .line 2
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Attempted to remove pending transform when no transforms are registered."

    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 3
    :cond_16
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    new-instance p1, Ljava/lang/Exception;

    .line 4
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Failed to remove pending transform - this may lead to memory leaks!"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    :cond_27
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_57

    :try_start_2c
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->t:Ljava/util/Set;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_50

    if-nez p1, :cond_36

    :try_start_30
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_57

    goto :goto_43

    .line 7
    :cond_36
    :try_start_36
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_50

    xor-int/lit8 p1, p1, 0x1

    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez p1, :cond_4a

    :goto_43
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->d:Lcom/google/android/gms/common/api/internal/zaca;

    if-eqz p1, :cond_4a

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zaca;->d()V
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_57

    .line 10
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_50
    move-exception p1

    .line 12
    :try_start_51
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    throw p1
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->b:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    throw p1
.end method

.method final p()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    .line 2
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/google/android/gms/common/api/internal/zabe;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final s()Z
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabe;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->i:Z

    const/4 v0, 0x0

    throw v0
.end method
