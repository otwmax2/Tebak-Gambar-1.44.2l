###### Class q2.e (q2.e)
.class Lq2/e;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitor.java"

# interfaces
.implements Lq2/c;


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Lq2/c$a;

.field private q:Z

.field private r:Z

.field private final s:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq2/c$a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lq2/e$a;

    invoke-direct {v0, p0}, Lq2/e$a;-><init>(Lq2/e;)V

    iput-object v0, p0, Lq2/e;->s:Landroid/content/BroadcastReceiver;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lq2/e;->o:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lq2/e;->p:Lq2/c$a;

    return-void
.end method

.method static synthetic a(Lq2/e;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lq2/e;->q:Z

    return p0
.end method

.method static synthetic d(Lq2/e;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lq2/e;->q:Z

    return p1
.end method

.method static synthetic e(Lq2/e;Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lq2/e;->n(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lq2/e;)Lq2/c$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lq2/e;->p:Lq2/c$a;

    return-object p0
.end method

.method private n(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method private o()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lq2/e;->r:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lq2/e;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lq2/e;->n(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lq2/e;->q:Z

    .line 3
    iget-object v0, p0, Lq2/e;->o:Landroid/content/Context;

    iget-object v1, p0, Lq2/e;->s:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lq2/e;->r:Z

    return-void
.end method

.method private p()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lq2/e;->r:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lq2/e;->o:Landroid/content/Context;

    iget-object v1, p0, Lq2/e;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lq2/e;->r:Z

    return-void
.end method


# virtual methods
.method public b()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lq2/e;->o()V

    return-void
.end method

.method public h()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lq2/e;->p()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

###### Class q2.e.a (q2.e$a)
.class Lq2/e$a;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq2/e;


# direct methods
.method constructor <init>(Lq2/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lq2/e$a;->a:Lq2/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lq2/e$a;->a:Lq2/e;

    invoke-static {p2}, Lq2/e;->a(Lq2/e;)Z

    move-result p2

    .line 2
    iget-object v0, p0, Lq2/e$a;->a:Lq2/e;

    invoke-static {v0, p1}, Lq2/e;->e(Lq2/e;Landroid/content/Context;)Z

    move-result p1

    invoke-static {v0, p1}, Lq2/e;->d(Lq2/e;Z)Z

    .line 3
    iget-object p1, p0, Lq2/e$a;->a:Lq2/e;

    invoke-static {p1}, Lq2/e;->a(Lq2/e;)Z

    move-result p1

    if-eq p2, p1, :cond_26

    .line 4
    iget-object p1, p0, Lq2/e$a;->a:Lq2/e;

    invoke-static {p1}, Lq2/e;->f(Lq2/e;)Lq2/c$a;

    move-result-object p1

    iget-object p2, p0, Lq2/e$a;->a:Lq2/e;

    invoke-static {p2}, Lq2/e;->a(Lq2/e;)Z

    move-result p2

    invoke-interface {p1, p2}, Lq2/c$a;->a(Z)V

    :cond_26
    return-void
.end method
