###### Class com.android.installreferrer.api.a (com.android.installreferrer.api.a)
.class Lcom/android/installreferrer/api/a;
.super Lcom/android/installreferrer/api/InstallReferrerClient;
.source "InstallReferrerClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/installreferrer/api/a$b;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Landroid/content/Context;

.field private c:Lx3/a;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/installreferrer/api/a;->a:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/installreferrer/api/a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic d(Lcom/android/installreferrer/api/a;Lx3/a;)Lx3/a;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/installreferrer/api/a;->c:Lx3/a;

    return-object p1
.end method

.method static synthetic e(Lcom/android/installreferrer/api/a;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/installreferrer/api/a;->a:I

    return p1
.end method

.method private f()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/installreferrer/api/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    const-string v2, "com.android.vending"

    const/16 v3, 0x80

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_17

    const v2, 0x4d17ab4

    if-lt v0, v2, :cond_17

    const/4 v1, 0x1

    :catch_17
    :cond_17
    return v1
.end method


# virtual methods
.method public a()Lcom/android/installreferrer/api/ReferrerDetails;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/installreferrer/api/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/installreferrer/api/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_16
    new-instance v1, Lcom/android/installreferrer/api/ReferrerDetails;

    iget-object v2, p0, Lcom/android/installreferrer/api/a;->c:Lx3/a;

    .line 5
    invoke-interface {v2, v0}, Lx3/a;->d5(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/installreferrer/api/ReferrerDetails;-><init>(Landroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    return-object v1

    :catch_22
    move-exception v0

    const-string v1, "InstallReferrerClient"

    const-string v2, "RemoteException getting install referrer information"

    .line 6
    invoke-static {v1, v2}, Lu1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/android/installreferrer/api/a;->a:I

    .line 8
    throw v0

    .line 9
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not connected. Please start a connection before using the service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/android/installreferrer/api/a;->g()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "InstallReferrerClient"

    if-eqz v0, :cond_12

    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 2
    invoke-static {v2, v0}, Lu1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, v1}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void

    .line 4
    :cond_12
    iget v0, p0, Lcom/android/installreferrer/api/a;->a:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_21

    const-string v0, "Client is already in the process of connecting to the service."

    .line 5
    invoke-static {v2, v0}, Lu1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1, v3}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void

    :cond_21
    if-ne v0, v3, :cond_2c

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 7
    invoke-static {v2, v0}, Lu1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1, v3}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void

    :cond_2c
    const-string v0, "Starting install referrer service setup."

    .line 9
    invoke-static {v2, v0}, Lu1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/android/installreferrer/api/a$b;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/android/installreferrer/api/a$b;-><init>(Lcom/android/installreferrer/api/a;Lcom/android/installreferrer/api/InstallReferrerStateListener;Lcom/android/installreferrer/api/a$a;)V

    iput-object v0, p0, Lcom/android/installreferrer/api/a;->d:Landroid/content/ServiceConnection;

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.vending"

    const-string v6, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    iget-object v3, p0, Lcom/android/installreferrer/api/a;->b:Landroid/content/Context;

    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x2

    if-eqz v3, :cond_a6

    .line 15
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a6

    .line 16
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 17
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_a6

    .line 18
    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 19
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 20
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    if-eqz v3, :cond_9b

    .line 21
    invoke-direct {p0}, Lcom/android/installreferrer/api/a;->f()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 22
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 23
    iget-object v0, p0, Lcom/android/installreferrer/api/a;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/installreferrer/api/a;->d:Landroid/content/ServiceConnection;

    .line 24
    invoke-virtual {v0, v3, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string p1, "Service was bonded successfully."

    .line 25
    invoke-static {v2, p1}, Lu1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_90
    const-string v0, "Connection to service is blocked."

    .line 26
    invoke-static {v2, v0}, Lu1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput v1, p0, Lcom/android/installreferrer/api/a;->a:I

    .line 28
    invoke-interface {p1, v4}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void

    :cond_9b
    const-string v0, "Play Store missing or incompatible. Version 8.3.73 or later required."

    .line 29
    invoke-static {v2, v0}, Lu1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput v1, p0, Lcom/android/installreferrer/api/a;->a:I

    .line 31
    invoke-interface {p1, v6}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void

    .line 32
    :cond_a6
    iput v1, p0, Lcom/android/installreferrer/api/a;->a:I

    const-string v0, "Install Referrer service unavailable on device."

    .line 33
    invoke-static {v2, v0}, Lu1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-interface {p1, v6}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void
.end method

.method public g()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/installreferrer/api/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/installreferrer/api/a;->c:Lx3/a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/installreferrer/api/a;->d:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

###### Class com.android.installreferrer.api.a.C0100a (com.android.installreferrer.api.a$a)
.class synthetic Lcom/android/installreferrer/api/a$a;
.super Ljava/lang/Object;
.source "InstallReferrerClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.android.installreferrer.api.a.b (com.android.installreferrer.api.a$b)
.class final Lcom/android/installreferrer/api/a$b;
.super Ljava/lang/Object;
.source "InstallReferrerClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final o:Lcom/android/installreferrer/api/InstallReferrerStateListener;

.field final synthetic p:Lcom/android/installreferrer/api/a;


# direct methods
.method private constructor <init>(Lcom/android/installreferrer/api/a;Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lcom/android/installreferrer/api/a$b;->p:Lcom/android/installreferrer/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_a

    .line 3
    iput-object p2, p0, Lcom/android/installreferrer/api/a$b;->o:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    return-void

    .line 4
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please specify a listener to know when setup is done."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/installreferrer/api/a;Lcom/android/installreferrer/api/InstallReferrerStateListener;Lcom/android/installreferrer/api/a$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/installreferrer/api/a$b;-><init>(Lcom/android/installreferrer/api/a;Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service connected."

    .line 1
    invoke-static {p1, v0}, Lu1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/installreferrer/api/a$b;->p:Lcom/android/installreferrer/api/a;

    invoke-static {p2}, Lx3/a$a;->P0(Landroid/os/IBinder;)Lx3/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/installreferrer/api/a;->d(Lcom/android/installreferrer/api/a;Lx3/a;)Lx3/a;

    .line 3
    iget-object p1, p0, Lcom/android/installreferrer/api/a$b;->p:Lcom/android/installreferrer/api/a;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/installreferrer/api/a;->e(Lcom/android/installreferrer/api/a;I)I

    .line 4
    iget-object p1, p0, Lcom/android/installreferrer/api/a$b;->o:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service disconnected."

    .line 1
    invoke-static {p1, v0}, Lu1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/installreferrer/api/a$b;->p:Lcom/android/installreferrer/api/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/installreferrer/api/a;->d(Lcom/android/installreferrer/api/a;Lx3/a;)Lx3/a;

    .line 3
    iget-object p1, p0, Lcom/android/installreferrer/api/a$b;->p:Lcom/android/installreferrer/api/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/installreferrer/api/a;->e(Lcom/android/installreferrer/api/a;I)I

    .line 4
    iget-object p1, p0, Lcom/android/installreferrer/api/a$b;->o:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    invoke-interface {p1}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerServiceDisconnected()V

    return-void
.end method
