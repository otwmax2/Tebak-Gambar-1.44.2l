###### Class com.google.android.gms.common.api.internal.k (com.google.android.gms.common.api.internal.k)
.class final Lcom/google/android/gms/common/api/internal/k;
.super Lcom/google/android/gms/common/api/internal/p;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Lcom/google/android/gms/common/api/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic q:Lcom/google/android/gms/common/api/internal/zaaw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Lcom/google/android/gms/common/api/internal/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/k;->q:Lcom/google/android/gms/common/api/internal/zaaw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/p;-><init>(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/api/internal/zaau;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/k;->p:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/zal;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/k;->q:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaw;->t(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zal;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/k;->p:Ljava/util/Map;

    .line 4
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Api$Client;

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->l()Z

    move-result v5

    if-eqz v5, :cond_43

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/k;->p:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/h;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/h;->b(Lcom/google/android/gms/common/api/internal/h;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 7
    :cond_43
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 8
    :cond_47
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_53
    if-ge v5, v1, :cond_84

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/k;->q:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaaw;->s(Lcom/google/android/gms/common/api/internal/zaaw;)Landroid/content/Context;

    move-result-object v4

    .line 10
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/zal;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    if-nez v4, :cond_53

    goto :goto_84

    .line 11
    :cond_6a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :cond_6e
    if-ge v5, v2, :cond_84

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/k;->q:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaaw;->s(Lcom/google/android/gms/common/api/internal/zaaw;)Landroid/content/Context;

    move-result-object v4

    .line 13
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/zal;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    if-eqz v4, :cond_6e

    :cond_84
    :goto_84
    if-eqz v4, :cond_9b

    .line 14
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/k;->q:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaw;->u(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/i;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/gms/common/api/internal/i;-><init>(Lcom/google/android/gms/common/api/internal/k;Lcom/google/android/gms/common/api/internal/zabf;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabi;->n(Lcom/google/android/gms/common/api/internal/r;)V

    return-void

    :cond_9b
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/k;->q:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaw;->F(Lcom/google/android/gms/common/api/internal/zaaw;)Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaw;->x(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/signin/zae;

    move-result-object v2

    if-eqz v2, :cond_b0

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaw;->x(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/signin/zae;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Lcom/google/android/gms/signin/zae;->u()V

    :cond_b0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/k;->p:Ljava/util/Map;

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/k;->p:Ljava/util/Map;

    .line 18
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->l()Z

    move-result v4

    if-eqz v4, :cond_ef

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/k;->q:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaaw;->s(Lcom/google/android/gms/common/api/internal/zaaw;)Landroid/content/Context;

    move-result-object v4

    .line 20
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/common/internal/zal;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v4

    if-eqz v4, :cond_ef

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/k;->q:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zaaw;->u(Lcom/google/android/gms/common/api/internal/zaaw;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/common/api/internal/j;

    invoke-direct {v5, p0, v2, v3}, Lcom/google/android/gms/common/api/internal/j;-><init>(Lcom/google/android/gms/common/api/internal/k;Lcom/google/android/gms/common/api/internal/zabf;Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    .line 21
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabi;->n(Lcom/google/android/gms/common/api/internal/r;)V

    goto :goto_ba

    .line 22
    :cond_ef
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/Api$Client;->h(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    goto :goto_ba

    :cond_f3
    return-void
.end method
