###### Class com.google.android.gms.cloudmessaging.zze (com.google.android.gms.cloudmessaging.zze)
.class public final Lcom/google/android/gms/cloudmessaging/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# static fields
.field private static e:Lcom/google/android/gms/cloudmessaging/zze;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "MessengerIpcClient.class"
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Lcom/google/android/gms/cloudmessaging/c;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/cloudmessaging/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/c;-><init>(Lcom/google/android/gms/cloudmessaging/zze;Lcom/google/android/gms/cloudmessaging/d;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zze;->c:Lcom/google/android/gms/cloudmessaging/c;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/cloudmessaging/zze;->d:I

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zze;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zze;->a:Landroid/content/Context;

    return-void
.end method

.method private final declared-synchronized a()I
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/zze;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/cloudmessaging/zze;->d:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/cloudmessaging/zze;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zze;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zze;
    .registers 7

    const-class v0, Lcom/google/android/gms/cloudmessaging/zze;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/cloudmessaging/zze;->e:Lcom/google/android/gms/cloudmessaging/zze;

    if-nez v1, :cond_20

    .line 2
    new-instance v1, Lcom/google/android/gms/cloudmessaging/zze;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cloudmessaging/zza;->a()Lcom/google/android/gms/internal/cloudmessaging/zzb;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v5, "MessengerIpcClient"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/google/android/gms/internal/cloudmessaging/zzf;->b:I

    .line 4
    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/internal/cloudmessaging/zzb;->a(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/cloudmessaging/zze;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/google/android/gms/cloudmessaging/zze;->e:Lcom/google/android/gms/cloudmessaging/zze;

    .line 5
    :cond_20
    sget-object p0, Lcom/google/android/gms/cloudmessaging/zze;->e:Lcom/google/android/gms/cloudmessaging/zze;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final declared-synchronized e(Lcom/google/android/gms/cloudmessaging/m;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/cloudmessaging/m<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "MessengerIpcClient"

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Queueing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zze;->c:Lcom/google/android/gms/cloudmessaging/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/c;->e(Lcom/google/android/gms/cloudmessaging/m;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 4
    new-instance v0, Lcom/google/android/gms/cloudmessaging/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/c;-><init>(Lcom/google/android/gms/cloudmessaging/zze;Lcom/google/android/gms/cloudmessaging/d;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zze;->c:Lcom/google/android/gms/cloudmessaging/c;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/c;->e(Lcom/google/android/gms/cloudmessaging/m;)Z

    .line 6
    :cond_3d
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/m;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 7
    monitor-exit p0

    return-object p1

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic g(Lcom/google/android/gms/cloudmessaging/zze;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zze;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public final d(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/cloudmessaging/k;

    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/zze;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/cloudmessaging/k;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/zze;->e(Lcom/google/android/gms/cloudmessaging/m;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final f(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/cloudmessaging/n;

    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/zze;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/cloudmessaging/n;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/zze;->e(Lcom/google/android/gms/cloudmessaging/m;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
