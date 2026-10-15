###### Class com.google.android.gms.internal.ads.zzfti (com.google.android.gms.internal.ads.zzfti)
.class abstract Lcom/google/android/gms/internal/ads/zzfti;
.super Lcom/google/android/gms/internal/ads/zzfto;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final C:Ljava/util/logging/Logger;


# instance fields
.field private final A:Z

.field private final B:Z

.field private z:Lcom/google/android/gms/internal/ads/zzfqf;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfti;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfti;->C:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfqf;ZZ)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfto;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfti;->z:Lcom/google/android/gms/internal/ads/zzfqf;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzfti;->A:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfti;->B:Z

    return-void
.end method

.method private final L(ILjava/util/concurrent/Future;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfuj;->o(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfti;->Q(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    goto :goto_b

    :catch_a
    move-exception p1

    .line 2
    :goto_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfti;->N(Ljava/lang/Throwable;)V

    return-void

    :catch_f
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfti;->N(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final M(Lcom/google/android/gms/internal/ads/zzfqf;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/ads/zzfqf;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfto;->E()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "Less than 0 remaining futures"

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfnu;->i(ZLjava/lang/Object;)V

    if-nez v0, :cond_39

    if-eqz p1, :cond_2f

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfqf;->k()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzfti;->L(ILjava/util/concurrent/Future;)V

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 6
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfto;->J()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfti;->R()V

    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfti;->V(I)V

    :cond_39
    return-void
.end method

.method private final N(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->A:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfto;->G()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfti;->P(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1c

    .line 4
    :cond_18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfti;->O(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_1c
    :goto_1c
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_23

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfti;->O(Ljava/lang/Throwable;)V

    :cond_23
    return-void
.end method

.method private static O(Ljava/lang/Throwable;)V
    .registers 8

    .line 1
    instance-of v0, p0, Ljava/lang/Error;

    const/4 v1, 0x1

    if-eq v1, v0, :cond_8

    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    goto :goto_a

    :cond_8
    const-string v0, "Input Future failed with Error"

    :goto_a
    move-object v5, v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfti;->C:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    .line 2
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static P(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .registers 3

    :goto_0
    if-eqz p1, :cond_f

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method final K(Ljava/util/Set;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsx;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsx;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfti;->P(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_13
    return-void
.end method

.method abstract Q(ILjava/lang/Object;)V
.end method

.method abstract R()V
.end method

.method final S()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->z:Lcom/google/android/gms/internal/ads/zzfqf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfti;->R()V

    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->A:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->z:Lcom/google/android/gms/internal/ads/zzfqf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqf;->k()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfut;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzftg;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzftg;-><init>(Lcom/google/android/gms/internal/ads/zzfti;Lcom/google/android/gms/internal/ads/zzfut;I)V

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzftx;->o:Lcom/google/android/gms/internal/ads/zzftx;

    .line 6
    invoke-interface {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v3

    goto :goto_1a

    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->B:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->z:Lcom/google/android/gms/internal/ads/zzfqf;

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfth;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfth;-><init>(Lcom/google/android/gms/internal/ads/zzfti;Lcom/google/android/gms/internal/ads/zzfqf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->z:Lcom/google/android/gms/internal/ads/zzfqf;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqf;->k()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfut;

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzftx;->o:Lcom/google/android/gms/internal/ads/zzftx;

    .line 9
    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_47

    :cond_59
    return-void
.end method

.method final synthetic T(Lcom/google/android/gms/internal/ads/zzfut;I)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_e

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->z:Lcom/google/android/gms/internal/ads/zzfqf;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->cancel(Z)Z

    goto :goto_11

    .line 3
    :cond_e
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzfti;->L(ILjava/util/concurrent/Future;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    .line 4
    :goto_11
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfti;->M(Lcom/google/android/gms/internal/ads/zzfqf;)V

    return-void

    :catchall_15
    move-exception p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfti;->M(Lcom/google/android/gms/internal/ads/zzfqf;)V

    .line 5
    throw p1
.end method

.method final synthetic U(Lcom/google/android/gms/internal/ads/zzfqf;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfti;->M(Lcom/google/android/gms/internal/ads/zzfqf;)V

    return-void
.end method

.method V(I)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfti;->z:Lcom/google/android/gms/internal/ads/zzfqf;

    return-void
.end method

.method protected final d()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->z:Lcom/google/android/gms/internal/ads/zzfqf;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "futures="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_f
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfsx;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfti;->z:Lcom/google/android/gms/internal/ads/zzfqf;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfti;->V(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsx;->isCancelled()Z

    move-result v2

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    and-int/2addr v1, v2

    if-eqz v1, :cond_29

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfsx;->x()Z

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqf;->k()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 5
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_19

    :cond_29
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzftg (com.google.android.gms.internal.ads.zzftg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzftg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzfti;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzfut;

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfti;Lcom/google/android/gms/internal/ads/zzfut;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftg;->o:Lcom/google/android/gms/internal/ads/zzfti;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftg;->p:Lcom/google/android/gms/internal/ads/zzfut;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzftg;->q:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftg;->o:Lcom/google/android/gms/internal/ads/zzfti;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftg;->p:Lcom/google/android/gms/internal/ads/zzfut;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzftg;->q:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfti;->T(Lcom/google/android/gms/internal/ads/zzfut;I)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfth (com.google.android.gms.internal.ads.zzfth)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzfti;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzfqf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfti;Lcom/google/android/gms/internal/ads/zzfqf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfth;->o:Lcom/google/android/gms/internal/ads/zzfti;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfth;->p:Lcom/google/android/gms/internal/ads/zzfqf;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfth;->o:Lcom/google/android/gms/internal/ads/zzfti;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfth;->p:Lcom/google/android/gms/internal/ads/zzfqf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfti;->U(Lcom/google/android/gms/internal/ads/zzfqf;)V

    return-void
.end method
