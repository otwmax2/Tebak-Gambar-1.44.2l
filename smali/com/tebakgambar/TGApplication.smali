###### Class com.tebakgambar.TGApplication (com.tebakgambar.TGApplication)
.class public Lcom/tebakgambar/TGApplication;
.super Lv0/b;
.source "TGApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/TGApplication$a;
    }
.end annotation


# static fields
.field private static p:Lcom/tebakgambar/TGApplication;


# instance fields
.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lv0/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tebakgambar/TGApplication;->o:Z

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .registers 1

    invoke-static {p0}, Lcom/tebakgambar/TGApplication;->h(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    return-void
.end method

.method public static synthetic b(Lcom/tebakgambar/TGApplication;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/TGApplication;->g()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Lcom/tebakgambar/TGApplication;
    .registers 1

    .line 1
    sget-object v0, Lcom/tebakgambar/TGApplication;->p:Lcom/tebakgambar/TGApplication;

    return-object v0
.end method

.method public static declared-synchronized d()Lcom/tebakgambar/TGApplication;
    .registers 2

    const-class v0, Lcom/tebakgambar/TGApplication;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/tebakgambar/TGApplication;->p:Lcom/tebakgambar/TGApplication;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e()V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/database/TGDatabase;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    new-instance v0, Lg8/w;

    invoke-direct {v0, p0}, Lg8/w;-><init>(Lcom/tebakgambar/TGApplication;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    :cond_e
    return-void
.end method

.method private synthetic g()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tebakgambar/model/Level;->getDefaultLevels()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Ln8/a;->i(Ljava/util/List;)V

    .line 4
    invoke-static {p0}, Lcom/tebakgambar/database/TGDatabase;->F(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic h(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/TGApplication;->o:Z

    return v0
.end method

.method public i(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tebakgambar/TGApplication;->o:Z

    return-void
.end method

.method public onCreate()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lcom/tebakgambar/TGApplication;->p:Lcom/tebakgambar/TGApplication;

    .line 3
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Lb5/g;->s(Landroid/content/Context;)Lb5/g;

    .line 5
    new-instance v0, Lcom/twitter/sdk/android/core/u$b;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/u$b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twitter/sdk/android/core/r;

    const-string v2, "zUxF8zsXfk67QYz11LiRr4pmP"

    const-string v3, "ti1ISwiuG8TegS9lDN0PsF4bKMUqZaAtIM6SLqxtgVdf9JLASF"

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/u$b;->c(Lcom/twitter/sdk/android/core/r;)Lcom/twitter/sdk/android/core/u$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/u$b;->b(Z)Lcom/twitter/sdk/android/core/u$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/u$b;->a()Lcom/twitter/sdk/android/core/u;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/twitter/sdk/android/core/o;->i(Lcom/twitter/sdk/android/core/u;)V

    .line 10
    invoke-direct {p0}, Lcom/tebakgambar/TGApplication;->e()V

    .line 11
    invoke-static {p0}, Lcom/tebakgambar/network/TebakGambarApi;->d(Landroid/content/Context;)V

    .line 12
    invoke-static {p0}, Lm8/a;->l(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/tebakgambar/component/b;->f()Lcom/tebakgambar/component/b;

    move-result-object v0

    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/b;->e(Lcom/tebakgambar/component/b$c;)V

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4a

    .line 15
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 17
    :cond_4a
    sget-object v0, Lg8/v;->a:Lg8/v;

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/MobileAds;->a(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 18
    new-instance v0, Lcom/tebakgambar/TGApplication$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/TGApplication$a;-><init>(Lcom/tebakgambar/TGApplication;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

###### Class com.tebakgambar.TGApplication.a (com.tebakgambar.TGApplication$a)
.class public Lcom/tebakgambar/TGApplication$a;
.super Landroid/content/BroadcastReceiver;
.source "TGApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/TGApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/TGApplication;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/TGApplication;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/TGApplication$a;->a:Lcom/tebakgambar/TGApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ly8/y;->q(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_e

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->c()Lcom/tebakgambar/TGApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/service/TGDownloadService;->M(Landroid/content/Context;)V

    :cond_e
    return-void
.end method

###### Class g8.v (g8.v)
.class public final synthetic Lg8/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# static fields
.field public static final synthetic a:Lg8/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lg8/v;

    invoke-direct {v0}, Lg8/v;-><init>()V

    sput-object v0, Lg8/v;->a:Lg8/v;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .registers 2

    invoke-static {p1}, Lcom/tebakgambar/TGApplication;->a(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    return-void
.end method

###### Class g8.w (g8.w)
.class public final synthetic Lg8/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/TGApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/TGApplication;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/w;->a:Lcom/tebakgambar/TGApplication;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lg8/w;->a:Lcom/tebakgambar/TGApplication;

    invoke-static {v0}, Lcom/tebakgambar/TGApplication;->b(Lcom/tebakgambar/TGApplication;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
