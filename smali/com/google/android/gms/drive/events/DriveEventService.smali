###### Class com.google.android.gms.drive.events.DriveEventService (com.google.android.gms.drive.events.DriveEventService)
.class public Lcom/google/android/gms/drive/events/DriveEventService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/drive/events/ChangeListener;
.implements Lcom/google/android/gms/drive/events/CompletionListener;
.implements Lcom/google/android/gms/drive/events/zzd;
.implements Lcom/google/android/gms/drive/events/zzi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/events/DriveEventService$b;,
        Lcom/google/android/gms/drive/events/DriveEventService$a;
    }
.end annotation


# static fields
.field private static final t:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final o:Ljava/lang/String;

.field private p:Ljava/util/concurrent/CountDownLatch;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field q:Lcom/google/android/gms/drive/events/DriveEventService$a;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field r:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private s:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "DriveEventService"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->t:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const-string v0, "DriveEventService"

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/DriveEventService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->r:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->s:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/DriveEventService;->j()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/internal/drive/zzfp;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->h(Lcom/google/android/gms/internal/drive/zzfp;)V

    return-void
.end method

.method private final h(Lcom/google/android/gms/internal/drive/zzfp;)V
    .registers 9

    const-string v0, "DriveEventService"

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzfp;->V3()Lcom/google/android/gms/drive/events/DriveEvent;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_8
    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->o()I

    move-result v3

    if-eq v3, v2, :cond_41

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3b

    const/4 v5, 0x4

    if-eq v3, v5, :cond_35

    const/4 v5, 0x7

    if-eq v3, v5, :cond_23

    .line 3
    sget-object v3, Lcom/google/android/gms/drive/events/DriveEventService;->t:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v4, "Unhandled event: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_23
    check-cast p1, Lcom/google/android/gms/drive/events/zzv;

    .line 5
    sget-object v3, Lcom/google/android/gms/drive/events/DriveEventService;->t:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v5, "Unhandled transfer state event in %s: %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/drive/events/DriveEventService;->o:Ljava/lang/String;

    aput-object v6, v4, v1

    aput-object p1, v4, v2

    invoke-virtual {v3, v0, v5, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_35
    check-cast p1, Lcom/google/android/gms/drive/events/zzb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->c(Lcom/google/android/gms/drive/events/zzb;)V

    return-void

    .line 7
    :cond_3b
    check-cast p1, Lcom/google/android/gms/drive/events/CompletionEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->d(Lcom/google/android/gms/drive/events/CompletionEvent;)V

    return-void

    .line 8
    :cond_41
    check-cast p1, Lcom/google/android/gms/drive/events/ChangeEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->a(Lcom/google/android/gms/drive/events/ChangeEvent;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p1

    .line 9
    sget-object v3, Lcom/google/android/gms/drive/events/DriveEventService;->t:Lcom/google/android/gms/common/internal/GmsLogger;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/drive/events/DriveEventService;->o:Ljava/lang/String;

    aput-object v4, v2, v1

    const-string v1, "Error handling event in %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/gms/drive/events/DriveEventService;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->p:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private final j()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/drive/events/DriveEventService;->e()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->s:I

    if-ne v0, v1, :cond_9

    return-void

    .line 3
    :cond_9
    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/UidVerifier;->a(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4
    iput v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->s:I

    return-void

    .line 5
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic k()Lcom/google/android/gms/common/internal/GmsLogger;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->t:Lcom/google/android/gms/common/internal/GmsLogger;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/events/ChangeEvent;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->t:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService;->o:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "DriveEventService"

    const-string v2, "Unhandled change event in %s: %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/drive/events/zzb;)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->t:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService;->o:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "DriveEventService"

    const-string v2, "Unhandled changes available event in %s: %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/google/android/gms/drive/events/CompletionEvent;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/events/DriveEventService;->t:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService;->o:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "DriveEventService"

    const-string v2, "Unhandled completion event in %s: %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected e()I
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "com.google.android.gms.drive.events.HANDLE_EVENT"

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_55

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->q:Lcom/google/android/gms/drive/events/DriveEventService$a;

    if-nez p1, :cond_4a

    iget-boolean p1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->r:Z

    if-nez p1, :cond_4a

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->r:Z

    .line 4
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/drive/events/DriveEventService;->p:Ljava/util/concurrent/CountDownLatch;

    .line 6
    new-instance p1, Lcom/google/android/gms/drive/events/a;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/drive/events/a;-><init>(Lcom/google/android/gms/drive/events/DriveEventService;Ljava/util/concurrent/CountDownLatch;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_57

    const-wide/16 v2, 0x1388

    .line 8
    :try_start_2f
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_4a

    .line 10
    sget-object p1, Lcom/google/android/gms/drive/events/DriveEventService;->t:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "DriveEventService"

    const-string v2, "Failed to synchronously initialize event handler."

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_40} :catch_41
    .catchall {:try_start_2f .. :try_end_40} :catchall_57

    goto :goto_4a

    :catch_41
    move-exception p1

    .line 11
    :try_start_42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to start event handler"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 12
    :cond_4a
    :goto_4a
    new-instance p1, Lcom/google/android/gms/drive/events/DriveEventService$b;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/drive/events/DriveEventService$b;-><init>(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/drive/events/a;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_57

    monitor-exit p0

    return-object p1

    .line 13
    :cond_55
    monitor-exit p0

    return-object v0

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDestroy()V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->q:Lcom/google/android/gms/drive/events/DriveEventService$a;

    if-eqz v0, :cond_28

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/drive/events/DriveEventService$a;->a(Lcom/google/android/gms/drive/events/DriveEventService$a;)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->q:Lcom/google/android/gms/drive/events/DriveEventService$a;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->q:Lcom/google/android/gms/drive/events/DriveEventService$a;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2d

    .line 5
    :try_start_11
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService;->p:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 7
    sget-object v1, Lcom/google/android/gms/drive/events/DriveEventService;->t:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "DriveEventService"

    const-string v3, "Failed to synchronously quit event handler. Will quit itself"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_26} :catch_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_2d

    .line 8
    :catch_26
    :cond_26
    :try_start_26
    iput-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService;->p:Ljava/util/concurrent/CountDownLatch;

    .line 9
    :cond_28
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2d

    .line 10
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

###### Class com.google.android.gms.drive.events.DriveEventService.a (com.google.android.gms.drive.events.DriveEventService$a)
.class final Lcom/google/android/gms/drive/events/DriveEventService$a;
.super Lcom/google/android/gms/internal/drive/zzir;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/events/DriveEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/drive/events/DriveEventService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzir;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/drive/events/a;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService$a;-><init>(Lcom/google/android/gms/drive/events/DriveEventService;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/drive/events/DriveEventService$a;)Landroid/os/Message;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/events/DriveEventService$a;->d()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/drive/events/DriveEventService$a;Lcom/google/android/gms/internal/drive/zzfp;)Landroid/os/Message;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService$a;->c(Lcom/google/android/gms/internal/drive/zzfp;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lcom/google/android/gms/internal/drive/zzfp;)Landroid/os/Message;
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method private final d()Landroid/os/Message;
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    .line 2
    invoke-static {}, Lcom/google/android/gms/drive/events/DriveEventService;->k()Lcom/google/android/gms/common/internal/GmsLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "DriveEventService"

    const-string v2, "Unexpected message type: %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_1f
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void

    .line 4
    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/events/DriveEventService;

    if-eqz v0, :cond_39

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfp;

    invoke-static {v0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->g(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/internal/drive/zzfp;)V

    return-void

    .line 6
    :cond_39
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void
.end method

###### Class com.google.android.gms.drive.events.DriveEventService.b (com.google.android.gms.drive.events.DriveEventService$b)
.class final Lcom/google/android/gms/drive/events/DriveEventService$b;
.super Lcom/google/android/gms/internal/drive/zzet;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/events/DriveEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final synthetic o:Lcom/google/android/gms/drive/events/DriveEventService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService$b;->o:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;Lcom/google/android/gms/drive/events/a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/events/DriveEventService$b;-><init>(Lcom/google/android/gms/drive/events/DriveEventService;)V

    return-void
.end method


# virtual methods
.method public final D4(Lcom/google/android/gms/internal/drive/zzfp;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$b;->o:Lcom/google/android/gms/drive/events/DriveEventService;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$b;->o:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-static {v1}, Lcom/google/android/gms/drive/events/DriveEventService;->f(Lcom/google/android/gms/drive/events/DriveEventService;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$b;->o:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v1, v1, Lcom/google/android/gms/drive/events/DriveEventService;->q:Lcom/google/android/gms/drive/events/DriveEventService$a;

    if-eqz v1, :cond_1a

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/drive/events/DriveEventService$a;->b(Lcom/google/android/gms/drive/events/DriveEventService$a;Lcom/google/android/gms/internal/drive/zzfp;)Landroid/os/Message;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$b;->o:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v1, v1, Lcom/google/android/gms/drive/events/DriveEventService;->q:Lcom/google/android/gms/drive/events/DriveEventService$a;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_25

    .line 6
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/drive/events/DriveEventService;->k()Lcom/google/android/gms/common/internal/GmsLogger;

    move-result-object p1

    const-string v1, "DriveEventService"

    const-string v2, "Receiving event before initialize is completed."

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method
