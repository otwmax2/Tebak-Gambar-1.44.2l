###### Class q2.d (q2.d)
.class public Lq2/d;
.super Ljava/lang/Object;
.source "ConnectivityMonitorFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lq2/c$a;)Lq2/c;
    .registers 4

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_13

    .line 2
    new-instance v0, Lq2/e;

    invoke-direct {v0, p1, p2}, Lq2/e;-><init>(Landroid/content/Context;Lq2/c$a;)V

    return-object v0

    .line 3
    :cond_13
    new-instance p1, Lq2/i;

    invoke-direct {p1}, Lq2/i;-><init>()V

    return-object p1
.end method
