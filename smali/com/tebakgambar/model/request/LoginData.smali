###### Class com.tebakgambar.model.request.LoginData (com.tebakgambar.model.request.LoginData)
.class public Lcom/tebakgambar/model/request/LoginData;
.super Ljava/lang/Object;
.source "LoginData.java"

# interfaces
.implements Lcom/tebakgambar/model/request/RequestData;


# instance fields
.field public email:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tebakgambar/model/request/LoginData;->password:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/tebakgambar/model/request/LoginData;->email:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toFieldMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ly8/l;

    invoke-direct {v0}, Ly8/l;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/model/request/LoginData;->email:Ljava/lang/String;

    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/model/request/LoginData;->password:Ljava/lang/String;

    invoke-static {v1}, Ly8/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
