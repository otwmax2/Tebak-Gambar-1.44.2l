###### Class com.facebook.login.CustomTabPrefetchHelper (com.facebook.login.CustomTabPrefetchHelper)
.class public final Lcom/facebook/login/CustomTabPrefetchHelper;
.super Landroidx/browser/customtabs/e;
.source "CustomTabPrefetchHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/CustomTabPrefetchHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

.field private static client:Landroidx/browser/customtabs/c;

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static session:Landroidx/browser/customtabs/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/browser/customtabs/e;-><init>()V

    return-void
.end method

.method public static final synthetic access$getClient$cp()Landroidx/browser/customtabs/c;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->client:Landroidx/browser/customtabs/c;

    return-object v0
.end method

.method public static final synthetic access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$getSession$cp()Landroidx/browser/customtabs/f;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->session:Landroidx/browser/customtabs/f;

    return-object v0
.end method

.method public static final synthetic access$setSession$cp(Landroidx/browser/customtabs/f;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/facebook/login/CustomTabPrefetchHelper;->session:Landroidx/browser/customtabs/f;

    return-void
.end method

.method public static final getPreparedSessionOnce()Landroidx/browser/customtabs/f;
    .registers 1

    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;->getPreparedSessionOnce()Landroidx/browser/customtabs/f;

    move-result-object v0

    return-object v0
.end method

.method public static final mayLaunchUrl(Landroid/net/Uri;)V
    .registers 2

    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;->mayLaunchUrl(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/c;)V
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newClient"

    invoke-static {p2, p1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/c;->f(J)Z

    .line 2
    sget-object p1, Lcom/facebook/login/CustomTabPrefetchHelper;->Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    sput-object p2, Lcom/facebook/login/CustomTabPrefetchHelper;->client:Landroidx/browser/customtabs/c;

    .line 3
    invoke-static {p1}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;->access$prepareSession(Lcom/facebook/login/CustomTabPrefetchHelper$Companion;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.facebook.login.CustomTabPrefetchHelper.Companion (com.facebook.login.CustomTabPrefetchHelper$Companion)
.class public final Lcom/facebook/login/CustomTabPrefetchHelper$Companion;
.super Ljava/lang/Object;
.source "CustomTabPrefetchHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/CustomTabPrefetchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$prepareSession(Lcom/facebook/login/CustomTabPrefetchHelper$Companion;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;->prepareSession()V

    return-void
.end method

.method private final prepareSession()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$getSession$cp()Landroidx/browser/customtabs/f;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 3
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$getClient$cp()Landroidx/browser/customtabs/c;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_1e

    :cond_14
    sget-object v1, Lcom/facebook/login/CustomTabPrefetchHelper;->Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/c;->d(Landroidx/browser/customtabs/b;)Landroidx/browser/customtabs/f;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$setSession$cp(Landroidx/browser/customtabs/f;)V

    .line 4
    :cond_1e
    :goto_1e
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method


# virtual methods
.method public final getPreparedSessionOnce()Landroidx/browser/customtabs/f;
    .registers 3

    .line 1
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$getSession$cp()Landroidx/browser/customtabs/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$setSession$cp(Landroidx/browser/customtabs/f;)V

    .line 4
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public final mayLaunchUrl(Landroid/net/Uri;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;->prepareSession()V

    .line 2
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$getSession$cp()Landroidx/browser/customtabs/f;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_1a

    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroidx/browser/customtabs/f;->f(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 4
    :goto_1a
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
