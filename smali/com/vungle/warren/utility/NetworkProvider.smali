###### Class com.vungle.warren.utility.NetworkProvider (com.vungle.warren.utility.NetworkProvider)
.class public Lcom/vungle/warren/utility/NetworkProvider;
.super Ljava/lang/Object;
.source "NetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;
    }
.end annotation


# static fields
.field public static final TYPE_NONE:I = -0x1

.field private static final i:Ljava/lang/String; = "NetworkProvider"

.field private static j:Lcom/vungle/warren/utility/NetworkProvider;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/net/ConnectivityManager;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/utility/NetworkProvider;->e:Ljava/util/Set;

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vungle/warren/utility/NetworkProvider;->g:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/vungle/warren/utility/NetworkProvider$3;

    invoke-direct {v1, p0}, Lcom/vungle/warren/utility/NetworkProvider$3;-><init>(Lcom/vungle/warren/utility/NetworkProvider;)V

    iput-object v1, p0, Lcom/vungle/warren/utility/NetworkProvider;->h:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider;->b:Landroid/net/ConnectivityManager;

    .line 8
    invoke-virtual {p0}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/utility/NetworkProvider;)Ljava/util/Set;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/utility/NetworkProvider;->e:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b(Lcom/vungle/warren/utility/NetworkProvider;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/utility/NetworkProvider;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/vungle/warren/utility/NetworkProvider;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/utility/NetworkProvider;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private d()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "newApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lcom/vungle/warren/utility/NetworkProvider$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/utility/NetworkProvider$1;-><init>(Lcom/vungle/warren/utility/NetworkProvider;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    :goto_c
    return-object v0
.end method

.method private e(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->g:Landroid/os/Handler;

    new-instance v1, Lcom/vungle/warren/utility/NetworkProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/utility/NetworkProvider$2;-><init>(Lcom/vungle/warren/utility/NetworkProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized f(Z)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "newApi"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3c

    if-ne v0, p1, :cond_7

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_7
    :try_start_7
    iput-boolean p1, p0, Lcom/vungle/warren/utility/NetworkProvider;->f:Z

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->b:Landroid/net/ConnectivityManager;
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_3c

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_29

    .line 5
    :try_start_f
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0xc

    .line 6
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    invoke-direct {p0}, Lcom/vungle/warren/utility/NetworkProvider;->d()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_3a

    :catch_27
    move-exception p1

    goto :goto_31

    .line 8
    :cond_29
    invoke-direct {p0}, Lcom/vungle/warren/utility/NetworkProvider;->d()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_30} :catch_27
    .catchall {:try_start_f .. :try_end_30} :catchall_3c

    goto :goto_3a

    .line 9
    :goto_31
    :try_start_31
    sget-object v0, Lcom/vungle/warren/utility/NetworkProvider;->i:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_3c

    .line 10
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;
    .registers 3

    const-class v0, Lcom/vungle/warren/utility/NetworkProvider;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/vungle/warren/utility/NetworkProvider;->j:Lcom/vungle/warren/utility/NetworkProvider;

    if-nez v1, :cond_e

    .line 2
    new-instance v1, Lcom/vungle/warren/utility/NetworkProvider;

    invoke-direct {v1, p0}, Lcom/vungle/warren/utility/NetworkProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vungle/warren/utility/NetworkProvider;->j:Lcom/vungle/warren/utility/NetworkProvider;

    .line 3
    :cond_e
    sget-object p0, Lcom/vungle/warren/utility/NetworkProvider;->j:Lcom/vungle/warren/utility/NetworkProvider;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/vungle/warren/utility/NetworkProvider;->f(Z)V

    return-void
.end method

.method public getCurrentNetworkType()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->b:Landroid/net/ConnectivityManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_57

    .line 2
    :cond_10
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 5
    :cond_22
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eq v1, v0, :cond_4b

    .line 6
    sget-object v2, Lcom/vungle/warren/utility/NetworkProvider;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on network changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0, v1}, Lcom/vungle/warren/utility/NetworkProvider;->e(I)V

    .line 8
    :cond_4b
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/warren/utility/NetworkProvider;->f(Z)V

    return v1

    .line 9
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v1
.end method

.method public onNetworkChanged()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    return-void
.end method

.method public removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/vungle/warren/utility/NetworkProvider;->f(Z)V

    return-void
.end method

###### Class com.vungle.warren.utility.NetworkProvider.AnonymousClass1 (com.vungle.warren.utility.NetworkProvider$1)
.class Lcom/vungle/warren/utility/NetworkProvider$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/NetworkProvider;->d()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/utility/NetworkProvider;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/NetworkProvider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider$1;->a:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider$1;->a:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {p1}, Lcom/vungle/warren/utility/NetworkProvider;->onNetworkChanged()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider$1;->a:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {p1}, Lcom/vungle/warren/utility/NetworkProvider;->onNetworkChanged()V

    return-void
.end method

###### Class com.vungle.warren.utility.NetworkProvider.AnonymousClass2 (com.vungle.warren.utility.NetworkProvider$2)
.class Lcom/vungle/warren/utility/NetworkProvider$2;
.super Ljava/lang/Object;
.source "NetworkProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/NetworkProvider;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:I

.field final synthetic p:Lcom/vungle/warren/utility/NetworkProvider;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/NetworkProvider;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider$2;->p:Lcom/vungle/warren/utility/NetworkProvider;

    iput p2, p0, Lcom/vungle/warren/utility/NetworkProvider$2;->o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider$2;->p:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-static {v0}, Lcom/vungle/warren/utility/NetworkProvider;->a(Lcom/vungle/warren/utility/NetworkProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    .line 2
    iget v2, p0, Lcom/vungle/warren/utility/NetworkProvider$2;->o:I

    invoke-interface {v1, v2}, Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;->onChanged(I)V

    goto :goto_a

    :cond_1c
    return-void
.end method

###### Class com.vungle.warren.utility.NetworkProvider.AnonymousClass3 (com.vungle.warren.utility.NetworkProvider$3)
.class Lcom/vungle/warren/utility/NetworkProvider$3;
.super Ljava/lang/Object;
.source "NetworkProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/NetworkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/utility/NetworkProvider;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/NetworkProvider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider$3;->o:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider$3;->o:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-static {v0}, Lcom/vungle/warren/utility/NetworkProvider;->a(Lcom/vungle/warren/utility/NetworkProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider$3;->o:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/NetworkProvider;->onNetworkChanged()V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider$3;->o:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-static {v0}, Lcom/vungle/warren/utility/NetworkProvider;->c(Lcom/vungle/warren/utility/NetworkProvider;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/utility/NetworkProvider$3;->o:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-static {v1}, Lcom/vungle/warren/utility/NetworkProvider;->b(Lcom/vungle/warren/utility/NetworkProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    return-void
.end method

###### Class com.vungle.warren.utility.NetworkProvider.NetworkListener (com.vungle.warren.utility.NetworkProvider$NetworkListener)
.class public interface abstract Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;
.super Ljava/lang/Object;
.source "NetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/NetworkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkListener"
.end annotation


# virtual methods
.method public abstract onChanged(I)V
.end method
