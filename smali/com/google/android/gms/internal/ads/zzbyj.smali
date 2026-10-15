###### Class com.google.android.gms.internal.ads.zzbyj (com.google.android.gms.internal.ads.zzbyj)
.class public final Lcom/google/android/gms/internal/ads/zzbyj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/ads/internal/util/zzj;

.field private final c:Lcom/google/android/gms/internal/ads/zzbyn;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/internal/ads/zzbzg;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/internal/ads/zzbaz;

.field private i:Ljava/lang/Boolean;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final k:Lcom/google/android/gms/internal/ads/zzbyi;

.field private final l:Ljava/lang/Object;

.field private m:Lcom/google/android/gms/internal/ads/zzfut;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->b:Lcom/google/android/gms/ads/internal/util/zzj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbyn;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbyn;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzg;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->c:Lcom/google/android/gms/internal/ads/zzbyn;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->h:Lcom/google/android/gms/internal/ads/zzbaz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->i:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyi;

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyi;-><init>(Lcom/google/android/gms/internal/ads/zzbyh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->k:Lcom/google/android/gms/internal/ads/zzbyi;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->l:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzbyj;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/ads/zzbyj;)Lcom/google/android/gms/internal/ads/zzbaz;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->h:Lcom/google/android/gms/internal/ads/zzbaz;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/google/android/gms/internal/ads/zzbyj;)Lcom/google/android/gms/internal/ads/zzbzg;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->f:Lcom/google/android/gms/internal/ads/zzbzg;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/google/android/gms/internal/ads/zzbyj;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/google/android/gms/internal/ads/zzbyj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final c()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final d()Landroid/content/res/Resources;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->f:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbzg;->r:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    .line 3
    :try_start_e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->h9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbze;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbze;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_34
    .catch Lcom/google/android/gms/internal/ads/zzbzd; {:try_start_e .. :try_end_34} :catch_35

    return-object v0

    :catch_35
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    .line 8
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzbaz;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->h:Lcom/google/android/gms/internal/ads/zzbaz;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzbyn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->c:Lcom/google/android/gms/internal/ads/zzbyn;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/internal/util/zzg;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->b:Lcom/google/android/gms/ads/internal/util/zzj;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final j()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->p2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_32

    .line 4
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->m:Lcom/google/android/gms/internal/ads/zzfut;

    if-eqz v1, :cond_20

    .line 5
    monitor-exit v0

    return-object v1

    .line 6
    :cond_20
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbye;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbye;-><init>(Lcom/google/android/gms/internal/ads/zzbyj;)V

    .line 7
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->m:Lcom/google/android/gms/internal/ads/zzfut;

    monitor-exit v0

    return-object v1

    :catchall_2f
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_2f

    throw v1

    .line 9
    :cond_32
    :goto_32
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/Boolean;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->i:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->g:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic n()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbub;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_b
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1000

    .line 5
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_1b} :catch_39

    .line 6
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    .line 7
    :goto_24
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_39

    .line 8
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_36

    .line 9
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :catch_39
    :cond_39
    return-object v1
.end method

.method public final p()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->k:Lcom/google/android/gms/internal/ads/zzbyi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyi;->a()V

    return-void
.end method

.method public final q()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final r()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final s(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->d:Z

    if-nez v1, :cond_83

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->f:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->d()Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->c:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzatz;->c(Lcom/google/android/gms/internal/ads/zzaty;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->b:Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->H0(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->f:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbsf;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;)Lcom/google/android/gms/internal/ads/zzbsh;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->g()Lcom/google/android/gms/internal/ads/zzbba;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbce;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_43

    .line 8
    :cond_3e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbaz;

    .line 9
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbaz;-><init>()V

    .line 10
    :goto_43
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->h:Lcom/google/android/gms/internal/ads/zzbaz;

    if-eqz v1, :cond_55

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbyf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbyf;-><init>(Lcom/google/android/gms/internal/ads/zzbyj;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzb;->b()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v1

    const-string v2, "AppState.registerCsiReporter"

    .line 12
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzq;->a(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/String;)V

    .line 13
    :cond_55
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->j()Z

    move-result v1

    if-eqz v1, :cond_7d

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->L7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7d

    const-string v1, "connectivity"

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 17
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbyg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbyg;-><init>(Lcom/google/android/gms/internal/ads/zzbyj;)V

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_7d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->d:Z

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbyj;->j()Lcom/google/android/gms/internal/ads/zzfut;

    .line 19
    :cond_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_8e

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_8e
    move-exception p1

    .line 21
    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p1
.end method

.method public final t(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->f:Lcom/google/android/gms/internal/ads/zzbzg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbsf;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbct;->g:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    .line 3
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbsh;->b(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final u(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->f:Lcom/google/android/gms/internal/ads/zzbzg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbsf;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbsh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/Boolean;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->i:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final w(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->g:Ljava/lang/String;

    return-void
.end method

.method public final x(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->j()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->L7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_20

    .line 4
    :cond_19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1

    :cond_20
    :goto_20
    const-string v0, "connectivity"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 7
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 8
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x1

    return p1

    :cond_36
    const/4 p1, 0x0

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzbye (com.google.android.gms.internal.ads.zzbye)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbyj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbyj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbye;->a:Lcom/google/android/gms/internal/ads/zzbyj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbye;->a:Lcom/google/android/gms/internal/ads/zzbyj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->n()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
