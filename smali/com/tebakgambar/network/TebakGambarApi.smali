###### Class com.tebakgambar.network.TebakGambarApi (com.tebakgambar.network.TebakGambarApi)
.class public Lcom/tebakgambar/network/TebakGambarApi;
.super Ljava/lang/Object;
.source "TebakGambarApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/network/TebakGambarApi$InterfaceOld;,
        Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;,
        Lcom/tebakgambar/network/TebakGambarApi$Interface;
    }
.end annotation


# static fields
.field private static a:Lcom/tebakgambar/network/TebakGambarApi$Interface;

.field private static b:Lcom/tebakgambar/network/TebakGambarApi$InterfaceOld;

.field private static c:Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;


# direct methods
.method public static a()Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;
    .registers 2

    .line 1
    sget-object v0, Lcom/tebakgambar/network/TebakGambarApi;->c:Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TebakGambarApi Interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Lcom/tebakgambar/network/TebakGambarApi$Interface;
    .registers 2

    .line 1
    sget-object v0, Lcom/tebakgambar/network/TebakGambarApi;->a:Lcom/tebakgambar/network/TebakGambarApi$Interface;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TebakGambarApi Interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c()Lcom/tebakgambar/network/TebakGambarApi$InterfaceOld;
    .registers 2

    .line 1
    sget-object v0, Lcom/tebakgambar/network/TebakGambarApi;->b:Lcom/tebakgambar/network/TebakGambarApi$InterfaceOld;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TebakGambarApi Interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Landroid/content/Context;)V
    .registers 7

    .line 1
    new-instance v0, Lta/a;

    invoke-direct {v0}, Lta/a;-><init>()V

    .line 2
    sget-object v1, Lta/a$a;->r:Lta/a$a;

    invoke-virtual {v0, v1}, Lta/a;->c(Lta/a$a;)Lta/a;

    .line 3
    new-instance v1, Lja/x$b;

    invoke-direct {v1}, Lja/x$b;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    .line 4
    invoke-virtual {v1, v3, v4, v2}, Lja/x$b;->g(JLjava/util/concurrent/TimeUnit;)Lja/x$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v3, v4, v2}, Lja/x$b;->j(JLjava/util/concurrent/TimeUnit;)Lja/x$b;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Lja/x$b;->k(JLjava/util/concurrent/TimeUnit;)Lja/x$b;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lja/x$b;->a(Lja/u;)Lja/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lja/x$b;->d()Lja/x;

    move-result-object v1

    .line 8
    new-instance v2, Lwa/m$b;

    invoke-direct {v2}, Lwa/m$b;-><init>()V

    const v3, 0x7f120023

    .line 9
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lwa/m$b;->c(Ljava/lang/String;)Lwa/m$b;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lwa/m$b;->f(Lja/x;)Lwa/m$b;

    move-result-object v2

    .line 11
    invoke-static {}, Lxa/a;->d()Lxa/a;

    move-result-object v4

    invoke-virtual {v2, v4}, Lwa/m$b;->a(Lwa/e$a;)Lwa/m$b;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lwa/m$b;->d()Lwa/m;

    move-result-object v2

    .line 13
    const-class v4, Lcom/tebakgambar/network/TebakGambarApi$Interface;

    invoke-virtual {v2, v4}, Lwa/m;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/network/TebakGambarApi$Interface;

    sput-object v2, Lcom/tebakgambar/network/TebakGambarApi;->a:Lcom/tebakgambar/network/TebakGambarApi$Interface;

    .line 14
    new-instance v2, Lwa/m$b;

    invoke-direct {v2}, Lwa/m$b;-><init>()V

    const v4, 0x7f120024

    .line 15
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lwa/m$b;->c(Ljava/lang/String;)Lwa/m$b;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Lwa/m$b;->f(Lja/x;)Lwa/m$b;

    move-result-object v1

    .line 17
    invoke-static {}, Lxa/a;->d()Lxa/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwa/m$b;->a(Lwa/e$a;)Lwa/m$b;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lwa/m$b;->d()Lwa/m;

    move-result-object v1

    .line 19
    const-class v2, Lcom/tebakgambar/network/TebakGambarApi$InterfaceOld;

    invoke-virtual {v1, v2}, Lwa/m;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/network/TebakGambarApi$InterfaceOld;

    sput-object v1, Lcom/tebakgambar/network/TebakGambarApi;->b:Lcom/tebakgambar/network/TebakGambarApi$InterfaceOld;

    .line 20
    new-instance v1, Lja/x$b;

    invoke-direct {v1}, Lja/x$b;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    .line 21
    invoke-virtual {v1, v4, v5, v2}, Lja/x$b;->g(JLjava/util/concurrent/TimeUnit;)Lja/x$b;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v4, v5, v2}, Lja/x$b;->j(JLjava/util/concurrent/TimeUnit;)Lja/x$b;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v4, v5, v2}, Lja/x$b;->k(JLjava/util/concurrent/TimeUnit;)Lja/x$b;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Lja/x$b;->a(Lja/u;)Lja/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lja/x$b;->d()Lja/x;

    move-result-object v0

    .line 25
    new-instance v1, Lwa/m$b;

    invoke-direct {v1}, Lwa/m$b;-><init>()V

    .line 26
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lwa/m$b;->c(Ljava/lang/String;)Lwa/m$b;

    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Lwa/m$b;->f(Lja/x;)Lwa/m$b;

    move-result-object p0

    .line 28
    invoke-static {}, Lxa/a;->d()Lxa/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwa/m$b;->a(Lwa/e$a;)Lwa/m$b;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lwa/m$b;->d()Lwa/m;

    move-result-object p0

    .line 30
    const-class v0, Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;

    invoke-virtual {p0, v0}, Lwa/m;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;

    sput-object p0, Lcom/tebakgambar/network/TebakGambarApi;->c:Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;

    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_8
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    move-exception v1

    .line 3
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    .line 4
    :goto_1b
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 5
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.tebakgambar.network.TebakGambarApi.DownloadInterface (com.tebakgambar.network.TebakGambarApi$DownloadInterface)
.class public interface abstract Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;
.super Ljava/lang/Object;
.source "TebakGambarApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/network/TebakGambarApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadInterface"
.end annotation


# virtual methods
.method public abstract downloadFile(Ljava/lang/String;)Lwa/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lya/x;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lwa/b<",
            "Lja/d0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lya/f;
    .end annotation

    .annotation runtime Lya/w;
    .end annotation
.end method

.method public abstract getLevel(Ljava/lang/String;)Lwa/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lya/s;
            value = "versionHash"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse2;",
            ">;"
        }
    .end annotation

    .annotation runtime Lya/f;
        value = "http://apis.tebakgambar.com/v4/SoalReguler/get/{versionHash}"
    .end annotation
.end method

###### Class com.tebakgambar.network.TebakGambarApi.Interface (com.tebakgambar.network.TebakGambarApi$Interface)
.class public interface abstract Lcom/tebakgambar/network/TebakGambarApi$Interface;
.super Ljava/lang/Object;
.source "TebakGambarApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/network/TebakGambarApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Interface"
.end annotation


# virtual methods
.method public abstract addProgress(Ljava/util/Map;)Lwa/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lya/j;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lya/o;
        value = "https://api.tebakgambar.com/v1/free-answer/add-progress"
    .end annotation
.end method

.method public abstract getCampaign()Lwa/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lya/f;
        value = "https://api.tebakgambar.com/cmp/v1/home"
    .end annotation
.end method

.method public abstract getCampaignDetail(Ljava/util/Map;Ljava/lang/String;)Lwa/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lya/j;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lya/s;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/sticker/model/StickerCampaignDetail;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lya/f;
        value = "https://api.tebakgambar.com/cmp/v1/detail/{id}"
    .end annotation
.end method

.method public abstract getEvent(Ljava/util/Map;)Lwa/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lya/j;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/Event2;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lya/f;
        value = "https://api.tebakgambar.com/v1/game/event"
    .end annotation
.end method

.method public abstract getEventSoal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lwa/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lya/s;
            value = "eventId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lya/s;
            value = "questionIds"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lya/u;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse<",
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/SoalSogam;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lya/f;
        value = "https://api.tebakgambar.com/v1/game/event/{eventId}/questions/{questionIds}"
    .end annotation
.end method

.method public abstract getFreeAnswer(Ljava/lang/String;Ljava/util/Map;)Lwa/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lya/t;
            value = "question_type"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lya/j;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lya/f;
        value = "https://api.tebakgambar.com/v1/free-answer"
    .end annotation
.end method

.method public abstract getGameData(Ljava/util/Map;)Lwa/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lya/j;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/GameTokenResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lya/f;
        value = "https://api.tebakgambar.com/acn/v1/game"
    .end annotation
.end method

.method public abstract login(Ljava/util/Map;Lcom/tebakgambar/model/request/LoginRequest;)Lwa/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lya/j;
        .end annotation
    .end param
    .param p2    # Lcom/tebakgambar/model/request/LoginRequest;
        .annotation runtime Lya/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tebakgambar/model/request/LoginRequest;",
            ")",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/LoginResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lya/o;
        value = "https://api.tebakgambar.com/acn/v1/login"
    .end annotation
.end method

.method public abstract updateGameData(Ljava/util/Map;Lcom/tebakgambar/model/request/UpdateGameDataRequest;)Lwa/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lya/j;
        .end annotation
    .end param
    .param p2    # Lcom/tebakgambar/model/request/UpdateGameDataRequest;
        .annotation runtime Lya/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tebakgambar/model/request/UpdateGameDataRequest;",
            ")",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lya/o;
        value = "https://api.tebakgambar.com/acn/v1/game"
    .end annotation
.end method

.method public abstract useFreeAnswer(Ljava/util/Map;)Lwa/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lya/j;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lya/o;
        value = "https://api.tebakgambar.com/v1/free-answer/use"
    .end annotation
.end method

###### Class com.tebakgambar.network.TebakGambarApi.InterfaceOld (com.tebakgambar.network.TebakGambarApi$InterfaceOld)
.class public interface abstract Lcom/tebakgambar/network/TebakGambarApi$InterfaceOld;
.super Ljava/lang/Object;
.source "TebakGambarApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/network/TebakGambarApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterfaceOld"
.end annotation


# virtual methods
.method public abstract getHome(Ljava/lang/String;)Lwa/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lya/s;
            value = "versionName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lwa/b<",
            "Lcom/tebakgambar/model/Homes;",
            ">;"
        }
    .end annotation

    .annotation runtime Lya/f;
        value = "homes/active/1/{versionName}"
    .end annotation
.end method

.method public abstract postSoalSogam(Ljava/util/Map;)Lwa/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lya/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/KirimSoalResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lya/e;
    .end annotation

    .annotation runtime Lya/o;
        value = "soalsogam/postsoalsogam"
    .end annotation
.end method
