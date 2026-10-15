###### Class j5.f (j5.f)
.class public final Lj5/f;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static h:Lcom/google/android/gms/common/logging/Logger;


# instance fields
.field private final a:Lb5/g;

.field volatile b:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field volatile c:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private d:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private e:Landroid/os/HandlerThread;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private f:Landroid/os/Handler;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private g:Ljava/lang/Runnable;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/logging/Logger;

    const-string v1, "FirebaseAuth:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "TokenRefresher"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lj5/f;->h:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lb5/g;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lj5/f;->h:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Initializing TokenRefresher"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/g;

    iput-object p1, p0, Lj5/f;->a:Lb5/g;

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TokenRefresher"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lj5/f;->e:Landroid/os/HandlerThread;

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzj;

    iget-object v1, p0, Lj5/f;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzj;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lj5/f;->f:Landroid/os/Handler;

    .line 7
    new-instance v0, Lj5/e;

    invoke-virtual {p1}, Lb5/g;->o()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lj5/e;-><init>(Lj5/f;Ljava/lang/String;)V

    iput-object v0, p0, Lj5/f;->g:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    .line 8
    iput-wide v0, p0, Lj5/f;->d:J

    return-void
.end method

.method static synthetic d()Lcom/google/android/gms/common/logging/Logger;
    .registers 1

    .line 1
    sget-object v0, Lj5/f;->h:Lcom/google/android/gms/common/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 1
    sget-object v0, Lj5/f;->h:Lcom/google/android/gms/common/logging/Logger;

    iget-wide v1, p0, Lj5/f;->b:J

    iget-wide v3, p0, Lj5/f;->d:J

    sub-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Scheduling refresh for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/logging/Logger;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lj5/f;->c()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->d()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lj5/f;->b:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lj5/f;->d:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lj5/f;->c:J

    .line 5
    iget-object v0, p0, Lj5/f;->f:Landroid/os/Handler;

    iget-object v1, p0, Lj5/f;->g:Ljava/lang/Runnable;

    iget-wide v4, p0, Lj5/f;->c:J

    mul-long v4, v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final b()V
    .registers 8

    .line 1
    iget-wide v0, p0, Lj5/f;->c:J

    long-to-int v1, v0

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_21

    const/16 v0, 0x3c

    if-eq v1, v0, :cond_21

    const/16 v0, 0x78

    if-eq v1, v0, :cond_21

    const/16 v0, 0xf0

    if-eq v1, v0, :cond_21

    const/16 v0, 0x1e0

    if-eq v1, v0, :cond_21

    const/16 v0, 0x3c0

    if-eq v1, v0, :cond_1e

    const-wide/16 v0, 0x1e

    goto :goto_27

    :cond_1e
    const-wide/16 v0, 0x3c0

    goto :goto_27

    :cond_21
    const-wide/16 v0, 0x2

    .line 2
    iget-wide v2, p0, Lj5/f;->c:J

    mul-long v0, v0, v2

    .line 3
    :goto_27
    iput-wide v0, p0, Lj5/f;->c:J

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->d()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lj5/f;->c:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj5/f;->b:J

    .line 5
    sget-object v0, Lj5/f;->h:Lcom/google/android/gms/common/logging/Logger;

    iget-wide v1, p0, Lj5/f;->b:J

    const/16 v3, 0x2b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scheduling refresh for "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/logging/Logger;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lj5/f;->f:Landroid/os/Handler;

    iget-object v1, p0, Lj5/f;->g:Ljava/lang/Runnable;

    iget-wide v2, p0, Lj5/f;->c:J

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj5/f;->f:Landroid/os/Handler;

    iget-object v1, p0, Lj5/f;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
