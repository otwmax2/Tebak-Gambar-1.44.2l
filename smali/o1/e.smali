###### Class o1.e (o1.e)
.class public Lo1/e;
.super Lo1/d;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/e$a;,
        Lo1/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo1/d<",
        "Lm1/b;",
        ">;"
    }
.end annotation


# static fields
.field static final j:Ljava/lang/String;


# instance fields
.field private final g:Landroid/net/ConnectivityManager;

.field private h:Lo1/e$b;

.field private i:Lo1/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "NetworkStateTracker"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo1/e;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ls1/a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lo1/d;-><init>(Landroid/content/Context;Ls1/a;)V

    .line 2
    iget-object p1, p0, Lo1/d;->b:Landroid/content/Context;

    const-string p2, "connectivity"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lo1/e;->g:Landroid/net/ConnectivityManager;

    .line 4
    invoke-static {}, Lo1/e;->j()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 5
    new-instance p1, Lo1/e$b;

    invoke-direct {p1, p0}, Lo1/e$b;-><init>(Lo1/e;)V

    iput-object p1, p0, Lo1/e;->h:Lo1/e$b;

    goto :goto_24

    .line 6
    :cond_1d
    new-instance p1, Lo1/e$a;

    invoke-direct {p1, p0}, Lo1/e$a;-><init>(Lo1/e;)V

    iput-object p1, p0, Lo1/e;->i:Lo1/e$a;

    :goto_24
    return-void
.end method

.method private static j()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lo1/e;->h()Lm1/b;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 6

    .line 1
    invoke-static {}, Lo1/e;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 2
    :try_start_7
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v2, Lo1/e;->j:Ljava/lang/String;

    const-string v3, "Registering network callback"

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lo1/e;->g:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lo1/e;->h:Lo1/e$b;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_4b

    :catch_1c
    move-exception v0

    goto :goto_1f

    :catch_1e
    move-exception v0

    .line 4
    :goto_1f
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v2

    sget-object v3, Lo1/e;->j:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v1

    const-string v0, "Received exception while registering network callback"

    invoke-virtual {v2, v3, v0, v4}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_4b

    .line 5
    :cond_30
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v2, Lo1/e;->j:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v3, "Registering broadcast receiver"

    invoke-virtual {v0, v2, v3, v1}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lo1/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lo1/e;->i:Lo1/e$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_4b
    return-void
.end method

.method public f()V
    .registers 6

    .line 1
    invoke-static {}, Lo1/e;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 2
    :try_start_7
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v2, Lo1/e;->j:Ljava/lang/String;

    const-string v3, "Unregistering network callback"

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lo1/e;->g:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lo1/e;->h:Lo1/e$b;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_44

    :catch_1c
    move-exception v0

    goto :goto_1f

    :catch_1e
    move-exception v0

    .line 4
    :goto_1f
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v2

    sget-object v3, Lo1/e;->j:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v1

    const-string v0, "Received exception while unregistering network callback"

    invoke-virtual {v2, v3, v0, v4}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_44

    .line 5
    :cond_30
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v2, Lo1/e;->j:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v3, "Unregistering broadcast receiver"

    invoke-virtual {v0, v2, v3, v1}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lo1/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lo1/e;->i:Lo1/e$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_44
    return-void
.end method

.method g()Lm1/b;
    .registers 7

    .line 1
    iget-object v0, p0, Lo1/e;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 3
    :goto_13
    invoke-virtual {p0}, Lo1/e;->i()Z

    move-result v4

    .line 4
    iget-object v5, p0, Lo1/e;->g:Landroid/net/ConnectivityManager;

    invoke-static {v5}, Landroidx/core/net/a;->a(Landroid/net/ConnectivityManager;)Z

    move-result v5

    if-eqz v0, :cond_26

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 6
    :goto_27
    new-instance v0, Lm1/b;

    invoke-direct {v0, v3, v4, v5, v1}, Lm1/b;-><init>(ZZZZ)V

    return-object v0
.end method

.method public h()Lm1/b;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lo1/e;->g()Lm1/b;

    move-result-object v0

    return-object v0
.end method

.method i()Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    .line 2
    :try_start_9
    iget-object v2, p0, Lo1/e;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lo1/e;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    if-eqz v2, :cond_20

    const/16 v3, 0x10

    .line 4
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_1d} :catch_21

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    :catch_21
    move-exception v2

    .line 5
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v3

    sget-object v4, Lo1/e;->j:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    const-string v2, "Unable to validate active network"

    invoke-virtual {v3, v4, v2, v0}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v1
.end method

###### Class o1.e.a (o1.e$a)
.class Lo1/e$a;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lo1/e;


# direct methods
.method constructor <init>(Lo1/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lo1/e$a;->a:Lo1/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_2c

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2c

    .line 2
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 3
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object p2, Lo1/e;->j:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    const-string v1, "Network broadcast received"

    invoke-virtual {p1, p2, v1, v0}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lo1/e$a;->a:Lo1/e;

    invoke-virtual {p1}, Lo1/e;->g()Lm1/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo1/d;->d(Ljava/lang/Object;)V

    :cond_2c
    :goto_2c
    return-void
.end method

###### Class o1.e.b (o1.e$b)
.class Lo1/e$b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lo1/e;


# direct methods
.method constructor <init>(Lo1/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lo1/e$b;->a:Lo1/e;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 6

    .line 1
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object v0, Lo1/e;->j:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "Network capabilities changed: %s"

    .line 2
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p1, v0, p2, v1}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lo1/e$b;->a:Lo1/e;

    invoke-virtual {p1}, Lo1/e;->g()Lm1/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo1/d;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 5

    .line 1
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object v0, Lo1/e;->j:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Network connection lost"

    invoke-virtual {p1, v0, v2, v1}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lo1/e$b;->a:Lo1/e;

    invoke-virtual {p1}, Lo1/e;->g()Lm1/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo1/d;->d(Ljava/lang/Object;)V

    return-void
.end method
