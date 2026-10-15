###### Class androidx.browser.customtabs.f (androidx.browser.customtabs.f)
.class public final Landroidx/browser/customtabs/f;
.super Ljava/lang/Object;
.source "CustomTabsSession.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:La/b;

.field private final c:La/a;

.field private final d:Landroid/content/ComponentName;

.field private final e:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(La/b;La/a;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/f;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroidx/browser/customtabs/f;->b:La/b;

    .line 4
    iput-object p2, p0, Landroidx/browser/customtabs/f;->c:La/a;

    .line 5
    iput-object p3, p0, Landroidx/browser/customtabs/f;->d:Landroid/content/ComponentName;

    .line 6
    iput-object p4, p0, Landroidx/browser/customtabs/f;->e:Landroid/app/PendingIntent;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/f;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    const-string v1, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_9
    return-void
.end method

.method private b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_a

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3
    :cond_a
    invoke-direct {p0, v0}, Landroidx/browser/customtabs/f;->a(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method c()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/f;->c:La/a;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method d()Landroid/content/ComponentName;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/f;->d:Landroid/content/ComponentName;

    return-object v0
.end method

.method e()Landroid/app/PendingIntent;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/f;->e:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public f(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Landroidx/browser/customtabs/f;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 2
    :try_start_4
    iget-object v0, p0, Landroidx/browser/customtabs/f;->b:La/b;

    iget-object v1, p0, Landroidx/browser/customtabs/f;->c:La/a;

    invoke-interface {v0, v1, p1, p2, p3}, La/b;->F7(La/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return p1

    :catch_d
    const/4 p1, 0x0

    return p1
.end method
