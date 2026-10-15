###### Class androidx.browser.customtabs.e (androidx.browser.customtabs.e)
.class public abstract Landroidx/browser/customtabs/e;
.super Ljava/lang/Object;
.source "CustomTabsServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/e;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/c;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/e;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 2
    new-instance v0, Landroidx/browser/customtabs/e$a;

    .line 3
    invoke-static {p2}, La/b$a;->P0(Landroid/os/IBinder;)La/b;

    move-result-object p2

    iget-object v1, p0, Landroidx/browser/customtabs/e;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/browser/customtabs/e$a;-><init>(Landroidx/browser/customtabs/e;La/b;Landroid/content/ComponentName;Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/browser/customtabs/e;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/c;)V

    return-void

    .line 5
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Custom Tabs Service connected before an applicationcontext has been provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setApplicationContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/e;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

###### Class androidx.browser.customtabs.e.a (androidx.browser.customtabs.e$a)
.class Landroidx/browser/customtabs/e$a;
.super Landroidx/browser/customtabs/c;
.source "CustomTabsServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/e;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/browser/customtabs/e;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/e;La/b;Landroid/content/ComponentName;Landroid/content/Context;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/e$a;->d:Landroidx/browser/customtabs/e;

    invoke-direct {p0, p2, p3, p4}, Landroidx/browser/customtabs/c;-><init>(La/b;Landroid/content/ComponentName;Landroid/content/Context;)V

    return-void
.end method
