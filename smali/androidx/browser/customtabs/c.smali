###### Class androidx.browser.customtabs.c (androidx.browser.customtabs.c)
.class public Landroidx/browser/customtabs/c;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final a:La/b;

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(La/b;Landroid/content/ComponentName;Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/browser/customtabs/c;->a:La/b;

    .line 3
    iput-object p2, p0, Landroidx/browser/customtabs/c;->b:Landroid/content/ComponentName;

    .line 4
    iput-object p3, p0, Landroidx/browser/customtabs/c;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/e;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/e;->setApplicationContext(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_17
    const/16 p1, 0x21

    .line 4
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    new-instance v1, Landroidx/browser/customtabs/c$a;

    invoke-direct {v1, p0}, Landroidx/browser/customtabs/c$a;-><init>(Landroid/content/Context;)V

    .line 3
    :try_start_d
    invoke-static {p0, p1, v1}, Landroidx/browser/customtabs/c;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/e;)Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_12

    return p0

    :catch_12
    return v0
.end method

.method private c(Landroidx/browser/customtabs/b;)La/a$a;
    .registers 3

    .line 1
    new-instance v0, Landroidx/browser/customtabs/c$b;

    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/c$b;-><init>(Landroidx/browser/customtabs/c;Landroidx/browser/customtabs/b;)V

    return-object v0
.end method

.method private e(Landroidx/browser/customtabs/b;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/f;
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/browser/customtabs/c;->c(Landroidx/browser/customtabs/b;)La/a$a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_18

    .line 2
    :try_start_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.customtabs.extra.SESSION_ID"

    .line 3
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-object v2, p0, Landroidx/browser/customtabs/c;->a:La/b;

    invoke-interface {v2, p1, v1}, La/b;->V5(La/a;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_1e

    .line 5
    :cond_18
    iget-object v1, p0, Landroidx/browser/customtabs/c;->a:La/b;

    invoke-interface {v1, p1}, La/b;->C4(La/a;)Z

    move-result v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_2a

    :goto_1e
    if-nez v1, :cond_21

    return-object v0

    .line 6
    :cond_21
    new-instance v0, Landroidx/browser/customtabs/f;

    iget-object v1, p0, Landroidx/browser/customtabs/c;->a:La/b;

    iget-object v2, p0, Landroidx/browser/customtabs/c;->b:Landroid/content/ComponentName;

    invoke-direct {v0, v1, p1, v2, p2}, Landroidx/browser/customtabs/f;-><init>(La/b;La/a;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    :catch_2a
    return-object v0
.end method


# virtual methods
.method public d(Landroidx/browser/customtabs/b;)Landroidx/browser/customtabs/f;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/browser/customtabs/c;->e(Landroidx/browser/customtabs/b;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/f;

    move-result-object p1

    return-object p1
.end method

.method public f(J)Z
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/c;->a:La/b;

    invoke-interface {v0, p1, p2}, La/b;->w5(J)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    const/4 p1, 0x0

    return p1
.end method

###### Class androidx.browser.customtabs.c.a (androidx.browser.customtabs.c$a)
.class Landroidx/browser/customtabs/c$a;
.super Landroidx/browser/customtabs/e;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/c;->b(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/c$a;->o:Landroid/content/Context;

    invoke-direct {p0}, Landroidx/browser/customtabs/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/c;)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/c;->f(J)Z

    .line 2
    iget-object p1, p0, Landroidx/browser/customtabs/c$a;->o:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

###### Class androidx.browser.customtabs.c.b (androidx.browser.customtabs.c$b)
.class Landroidx/browser/customtabs/c$b;
.super La/a$a;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/c;->c(Landroidx/browser/customtabs/b;)La/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private o:Landroid/os/Handler;

.field final synthetic p:Landroidx/browser/customtabs/c;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/c;Landroidx/browser/customtabs/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/c$b;->p:Landroidx/browser/customtabs/c;

    invoke-direct {p0}, La/a$a;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/browser/customtabs/c$b;->o:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public C9(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public T9(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public da(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public t8(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public u4(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public z7(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
