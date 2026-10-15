###### Class com.google.android.gms.ads.internal.client.zzej (com.google.android.gms.ads.internal.client.zzej)
.class public final Lcom/google/android/gms/ads/internal/client/zzej;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field private static i:Lcom/google/android/gms/ads/internal/client/zzej;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "InternalMobileAds.class"
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/ArrayList;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation
.end field

.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation
.end field

.field private d:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "stateLock"
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/ads/internal/client/zzco;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "settingManagerLock"
    .end annotation
.end field

.field private g:Lcom/google/android/gms/ads/OnAdInspectorClosedListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/google/android/gms/ads/RequestConfiguration;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->g:Lcom/google/android/gms/ads/OnAdInspectorClosedListener;

    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->a()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->h:Lcom/google/android/gms/ads/RequestConfiguration;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private final a(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "settingManagerLock"
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzff;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzff;-><init>(Lcom/google/android/gms/ads/RequestConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzco;->R7(Lcom/google/android/gms/ads/internal/client/zzff;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "Unable to set request configuration parcel."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic c(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzej;->n(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lcom/google/android/gms/ads/internal/client/zzej;
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/ads/internal/client/zzej;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzej;->i:Lcom/google/android/gms/ads/internal/client/zzej;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzej;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/client/zzej;-><init>()V

    sput-object v1, Lcom/google/android/gms/ads/internal/client/zzej;->i:Lcom/google/android/gms/ads/internal/client/zzej;

    :cond_e
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzej;->i:Lcom/google/android/gms/ads/internal/client/zzej;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method static bridge synthetic f(Lcom/google/android/gms/ads/internal/client/zzej;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/ads/internal/client/zzej;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/google/android/gms/ads/internal/client/zzej;Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzej;->d:Z

    return-void
.end method

.method static bridge synthetic i(Lcom/google/android/gms/ads/internal/client/zzej;Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzej;->c:Z

    return-void
.end method

.method private static n(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbjl;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbjl;->o:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbjt;

    .line 4
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbjl;->p:Z

    if-eqz v4, :cond_20

    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->p:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    goto :goto_22

    :cond_20
    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->o:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    :goto_22
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbjl;->r:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbjl;->q:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzbjt;-><init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V

    .line 5
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 6
    :cond_2d
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbju;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbju;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private final o(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "settingManagerLock"
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbmy;->a()Lcom/google/android/gms/internal/ads/zzbmy;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzbmy;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzco;->i()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 4
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/ads/internal/client/zzco;->x6(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    const-string p2, "MobileAdsSettingManager initialization failed"

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final p(Landroid/content/Context;)V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "settingManagerLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    if-nez v0, :cond_16

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->a()Lcom/google/android/gms/ads/internal/client/zzaw;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/internal/client/k;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/ads/internal/client/k;-><init>(Lcom/google/android/gms/ads/internal/client/zzaw;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/ads/internal/client/n;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzco;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    :cond_16
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/ads/RequestConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->h:Lcom/google/android/gms/ads/RequestConfiguration;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_27

    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzco;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/client/zzej;->n(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catchall {:try_start_f .. :try_end_19} :catchall_27

    :try_start_19
    monitor-exit v0

    return-object v1

    :catch_1b
    const-string v1, "Unable to get Initialization status."

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzeb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzeb;-><init>(Lcom/google/android/gms/ads/internal/client/zzej;)V

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_27
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public final j(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .registers 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzej;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->c:Z

    if-eqz v0, :cond_10

    if-eqz p3, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzej;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    :cond_e
    monitor-exit p2

    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->d:Z

    if-eqz v0, :cond_1f

    if-eqz p3, :cond_1d

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzej;->d()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->a(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    .line 4
    :cond_1d
    monitor-exit p2

    return-void

    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->c:Z

    if-eqz p3, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->b:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_29
    monitor-exit p2
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_d8

    if-eqz p1, :cond_d0

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzej;->e:Ljava/lang/Object;

    monitor-enter p2

    const/4 p3, 0x0

    .line 8
    :try_start_30
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzej;->p(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/p;

    .line 9
    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/ads/internal/client/p;-><init>(Lcom/google/android/gms/ads/internal/client/zzej;Lcom/google/android/gms/ads/internal/client/zzeh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzco;->G8(Lcom/google/android/gms/internal/ads/zzbjs;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnc;

    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbnc;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzco;->M4(Lcom/google/android/gms/internal/ads/zzbnf;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->h:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_58

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->h:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->c()I

    move-result v0

    if-eq v0, v1, :cond_66

    :cond_58
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->h:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzej;->a(Lcom/google/android/gms/ads/RequestConfiguration;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_5d} :catch_60
    .catchall {:try_start_30 .. :try_end_5d} :catchall_5e

    goto :goto_66

    :catchall_5e
    move-exception p1

    goto :goto_ce

    :catch_60
    move-exception v0

    :try_start_61
    const-string v1, "MobileAdsSettingManager initialization failed"

    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_66
    :goto_66
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_99

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->v9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_99

    const-string v0, "Initializing on bg thread"

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyp;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzec;

    invoke-direct {v1, p0, p1, p3}, Lcom/google/android/gms/ads/internal/client/zzec;-><init>(Lcom/google/android/gms/ads/internal/client/zzej;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_cc

    .line 21
    :cond_99
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->b:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->v9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyp;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzed;

    invoke-direct {v1, p0, p1, p3}, Lcom/google/android/gms/ads/internal/client/zzed;-><init>(Lcom/google/android/gms/ads/internal/client/zzej;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_cc

    :cond_c4
    const-string v0, "Initializing on calling thread"

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/ads/internal/client/zzej;->o(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    :goto_cc
    monitor-exit p2

    return-void

    :goto_ce
    monitor-exit p2
    :try_end_cf
    .catchall {:try_start_61 .. :try_end_cf} :catchall_5e

    throw p1

    .line 29
    :cond_d0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_d8
    move-exception p1

    .line 31
    :try_start_d9
    monitor-exit p2
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw p1
.end method

.method final synthetic k(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzej;->e:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzej;->o(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    monitor-exit p2

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p1
.end method

.method final synthetic l(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzej;->e:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzej;->o(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    monitor-exit p2

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final m(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzej;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "MobileAds.initialize() must be called prior to setting the plugin."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1d

    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzej;->f:Lcom/google/android/gms/ads/internal/client/zzco;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzco;->z0(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_1d

    goto :goto_1b

    :catch_15
    move-exception p1

    :try_start_16
    const-string v1, "Unable to set plugin."

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p1
.end method

###### Class com.google.android.gms.ads.internal.client.zzeb (com.google.android.gms.ads.internal.client.zzeb)
.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzeb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/InitializationStatus;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/internal/client/zzej;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzej;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzeb;->a:Lcom/google/android/gms/ads/internal/client/zzej;

    return-void
.end method

###### Class com.google.android.gms.ads.internal.client.zzec (com.google.android.gms.ads.internal.client.zzec)
.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/ads/internal/client/zzej;

.field public final synthetic p:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzej;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzec;->o:Lcom/google/android/gms/ads/internal/client/zzej;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzec;->p:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzec;->o:Lcom/google/android/gms/ads/internal/client/zzej;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzec;->p:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzej;->k(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.client.zzed (com.google.android.gms.ads.internal.client.zzed)
.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzed;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/ads/internal/client/zzej;

.field public final synthetic p:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzej;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzed;->o:Lcom/google/android/gms/ads/internal/client/zzej;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzed;->p:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzed;->o:Lcom/google/android/gms/ads/internal/client/zzej;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzed;->p:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzej;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
