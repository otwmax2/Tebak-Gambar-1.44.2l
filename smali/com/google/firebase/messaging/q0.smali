###### Class com.google.firebase.messaging.q0 (com.google.firebase.messaging.q0)
.class Lcom/google/firebase/messaging/q0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/q0$a;
    }
.end annotation


# instance fields
.field private final o:J

.field private final p:Landroid/os/PowerManager$WakeLock;

.field private final q:Lcom/google/firebase/messaging/FirebaseMessaging;

.field r:Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidWakeLockTag"
        }
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v0, "firebase-iid-executor"

    invoke-direct {v7, v0}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/google/firebase/messaging/q0;->r:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/firebase/messaging/q0;->q:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-wide p2, p0, Lcom/google/firebase/messaging/q0;->o:J

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/q0;->p:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/messaging/q0;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/messaging/q0;->q:Lcom/google/firebase/messaging/FirebaseMessaging;

    return-object p0
.end method

.method static c()Z
    .registers 6

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_19

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ne v2, v5, :cond_1a

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    return v3

    :cond_19
    :goto_19
    const/4 v3, 0x1

    :cond_1a
    return v3
.end method


# virtual methods
.method b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/q0;->q:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1e

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/google/firebase/messaging/q0;->q:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 1
    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    const-string v2, "Token retrieval failed: null"

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    const/4 v2, 0x3

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "Token successfully retrieved"

    .line 4
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1d} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_1d} :catch_1f

    :cond_1d
    const/4 v0, 0x1

    return v0

    :catch_1f
    const-string v2, "Token retrieval failed with SecurityException. Will retry token retrieval"

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_25
    move-exception v2

    .line 6
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/messaging/a0;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 7
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x34

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Token retrieval failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Will retry token retrieval"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 8
    :cond_58
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_64

    const-string v2, "Token retrieval failed without exception message. Will retry token retrieval"

    .line 9
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 10
    :cond_64
    throw v2
.end method

.method public run()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WakelockTimeout"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/messaging/m0;->b()Lcom/google/firebase/messaging/m0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/m0;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/firebase/messaging/q0;->p:Landroid/os/PowerManager$WakeLock;

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_13
    const/4 v0, 0x0

    :try_start_14
    iget-object v1, p0, Lcom/google/firebase/messaging/q0;->q:Lcom/google/firebase/messaging/FirebaseMessaging;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->p(Z)V

    iget-object v1, p0, Lcom/google/firebase/messaging/q0;->q:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->k()Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/google/firebase/messaging/q0;->q:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->p(Z)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_27} :catch_8b
    .catchall {:try_start_14 .. :try_end_27} :catchall_89

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/m0;->b()Lcom/google/firebase/messaging/m0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/m0;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :goto_35
    iget-object v0, p0, Lcom/google/firebase/messaging/q0;->p:Landroid/os/PowerManager$WakeLock;

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3a
    return-void

    .line 8
    :cond_3b
    :try_start_3b
    invoke-static {}, Lcom/google/firebase/messaging/m0;->b()Lcom/google/firebase/messaging/m0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/m0;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->d()Z

    move-result v1

    if-nez v1, :cond_67

    new-instance v1, Lcom/google/firebase/messaging/q0$a;

    .line 10
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/q0$a;-><init>(Lcom/google/firebase/messaging/q0;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/messaging/q0$a;->a()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_57} :catch_8b
    .catchall {:try_start_3b .. :try_end_57} :catchall_89

    .line 12
    invoke-static {}, Lcom/google/firebase/messaging/m0;->b()Lcom/google/firebase/messaging/m0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/m0;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_35

    :cond_66
    return-void

    .line 13
    :cond_67
    :try_start_67
    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->e()Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/google/firebase/messaging/q0;->q:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->p(Z)V

    goto :goto_7a

    .line 15
    :cond_73
    iget-object v1, p0, Lcom/google/firebase/messaging/q0;->q:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-wide v2, p0, Lcom/google/firebase/messaging/q0;->o:J

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/messaging/FirebaseMessaging;->s(J)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_7a} :catch_8b
    .catchall {:try_start_67 .. :try_end_7a} :catchall_89

    .line 17
    :goto_7a
    invoke-static {}, Lcom/google/firebase/messaging/m0;->b()Lcom/google/firebase/messaging/m0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/m0;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ca

    goto :goto_35

    :catchall_89
    move-exception v0

    goto :goto_cb

    :catch_8b
    move-exception v1

    :try_start_8c
    const-string v2, "FirebaseMessaging"

    .line 18
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Topic sync or token retrieval failed on hard failure exceptions: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Won\'t retry the operation."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/firebase/messaging/q0;->q:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->p(Z)V
    :try_end_ba
    .catchall {:try_start_8c .. :try_end_ba} :catchall_89

    .line 21
    invoke-static {}, Lcom/google/firebase/messaging/m0;->b()Lcom/google/firebase/messaging/m0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/m0;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ca

    goto/16 :goto_35

    :cond_ca
    return-void

    :goto_cb
    invoke-static {}, Lcom/google/firebase/messaging/m0;->b()Lcom/google/firebase/messaging/m0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/m0;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_da

    goto :goto_df

    .line 22
    :cond_da
    iget-object v1, p0, Lcom/google/firebase/messaging/q0;->p:Landroid/os/PowerManager$WakeLock;

    .line 23
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 24
    :goto_df
    goto :goto_e1

    :goto_e0
    throw v0

    :goto_e1
    goto :goto_e0
.end method

###### Class com.google.firebase.messaging.q0.a (com.google.firebase.messaging.q0$a)
.class Lcom/google/firebase/messaging/q0$a;
.super Landroid/content/BroadcastReceiver;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/firebase/messaging/q0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/q0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/q0$a;->a:Lcom/google/firebase/messaging/q0;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/messaging/q0;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "FirebaseMessaging"

    const-string v1, "Connectivity change received registered"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/messaging/q0$a;->a:Lcom/google/firebase/messaging/q0;

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object p1, p0, Lcom/google/firebase/messaging/q0$a;->a:Lcom/google/firebase/messaging/q0;

    if-nez p1, :cond_5

    return-void

    .line 1
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/messaging/q0;->d()Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 2
    :cond_c
    invoke-static {}, Lcom/google/firebase/messaging/q0;->c()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "FirebaseMessaging"

    const-string p2, "Connectivity changed. Starting background sync."

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object p1, p0, Lcom/google/firebase/messaging/q0$a;->a:Lcom/google/firebase/messaging/q0;

    .line 4
    invoke-static {p1}, Lcom/google/firebase/messaging/q0;->a(Lcom/google/firebase/messaging/q0;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/messaging/q0$a;->a:Lcom/google/firebase/messaging/q0;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->d(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lcom/google/firebase/messaging/q0$a;->a:Lcom/google/firebase/messaging/q0;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/messaging/q0;->b()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/messaging/q0$a;->a:Lcom/google/firebase/messaging/q0;

    return-void
.end method
