###### Class v4.l (v4.l)
.class final Lv4/l;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic o:Lv4/m;


# direct methods
.method synthetic constructor <init>(Lv4/m;Lv4/k;)V
    .registers 3

    iput-object p1, p0, Lv4/l;->o:Lv4/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lv4/l;->o:Lv4/m;

    invoke-static {v0}, Lv4/m;->f(Lv4/m;)Lv4/a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, p1, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lv4/l;->o:Lv4/m;

    new-instance v0, Lv4/i;

    .line 2
    invoke-direct {v0, p0, p2}, Lv4/i;-><init>(Lv4/l;Landroid/os/IBinder;)V

    .line 3
    invoke-virtual {p1}, Lv4/m;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lv4/l;->o:Lv4/m;

    invoke-static {v0}, Lv4/m;->f(Lv4/m;)Lv4/a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, p1, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lv4/l;->o:Lv4/m;

    new-instance v0, Lv4/j;

    .line 2
    invoke-direct {v0, p0}, Lv4/j;-><init>(Lv4/l;)V

    .line 3
    invoke-virtual {p1}, Lv4/m;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
