###### Class com.tebakgambar.home.HomeActivity$$ExtraInjector (com.tebakgambar.home.HomeActivity$$ExtraInjector)
.class public Lcom/tebakgambar/home/HomeActivity$$ExtraInjector;
.super Ljava/lang/Object;
.source "HomeActivity$$ExtraInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Ly2/a$b;Lcom/tebakgambar/home/HomeActivity;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "customBanner"

    .line 1
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2
    check-cast v0, Landroid/os/Parcelable;

    invoke-static {v0}, Lua/f;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/CustomBanner;

    iput-object v0, p1, Lcom/tebakgambar/home/HomeActivity;->customBanner:Lcom/tebakgambar/model/CustomBanner;

    :cond_12
    const-string v0, "remoteMessage"

    .line 3
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 4
    check-cast v0, Landroid/os/Parcelable;

    invoke-static {v0}, Lua/f;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/request/TGRemoteMessage;

    iput-object v0, p1, Lcom/tebakgambar/home/HomeActivity;->remoteMessage:Lcom/tebakgambar/model/request/TGRemoteMessage;

    :cond_24
    const-string v0, "showLoginImmediately"

    .line 5
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 6
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, Lcom/tebakgambar/home/HomeActivity;->showLoginImmediately:Z

    :cond_34
    return-void
.end method
