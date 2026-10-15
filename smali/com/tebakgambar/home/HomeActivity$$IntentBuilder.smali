###### Class com.tebakgambar.home.HomeActivity$$IntentBuilder (com.tebakgambar.home.HomeActivity$$IntentBuilder)
.class public Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;
.super Ljava/lang/Object;
.source "HomeActivity$$IntentBuilder.java"


# instance fields
.field private bundler:Lz2/a;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lz2/a;->a()Lz2/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->bundler:Lz2/a;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tebakgambar/home/HomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->bundler:Lz2/a;

    invoke-virtual {v1}, Lz2/a;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public customBanner(Lcom/tebakgambar/model/CustomBanner;)Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->bundler:Lz2/a;

    invoke-static {p1}, Lua/f;->c(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v1, "customBanner"

    invoke-virtual {v0, v1, p1}, Lz2/a;->d(Ljava/lang/String;Landroid/os/Parcelable;)Lz2/a;

    return-object p0
.end method

.method public remoteMessage(Lcom/tebakgambar/model/request/TGRemoteMessage;)Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->bundler:Lz2/a;

    invoke-static {p1}, Lua/f;->c(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v1, "remoteMessage"

    invoke-virtual {v0, v1, p1}, Lz2/a;->d(Ljava/lang/String;Landroid/os/Parcelable;)Lz2/a;

    return-object p0
.end method

.method public showLoginImmediately(Z)Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->bundler:Lz2/a;

    const-string v1, "showLoginImmediately"

    invoke-virtual {v0, v1, p1}, Lz2/a;->f(Ljava/lang/String;Z)Lz2/a;

    return-object p0
.end method
