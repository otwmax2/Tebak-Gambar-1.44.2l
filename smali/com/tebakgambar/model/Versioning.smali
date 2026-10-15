###### Class com.tebakgambar.model.Versioning (com.tebakgambar.model.Versioning)
.class public Lcom/tebakgambar/model/Versioning;
.super Ljava/lang/Object;
.source "Versioning.java"


# instance fields
.field public downloadedVersion:I

.field public levelId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOfflineVersionings(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Versioning;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/Level;

    .line 3
    new-instance v2, Lcom/tebakgambar/model/Versioning;

    invoke-direct {v2}, Lcom/tebakgambar/model/Versioning;-><init>()V

    .line 4
    iget v3, v1, Lcom/tebakgambar/model/Level;->id:I

    iput v3, v2, Lcom/tebakgambar/model/Versioning;->levelId:I

    .line 5
    invoke-virtual {v1}, Lcom/tebakgambar/model/Level;->isDefaultLevelAvailable()Z

    move-result v3

    if-eqz v3, :cond_27

    iget v1, v1, Lcom/tebakgambar/model/Level;->version:I

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iput v1, v2, Lcom/tebakgambar/model/Versioning;->downloadedVersion:I

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2e
    return-object v0
.end method

.method public static getVersionings(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Versioning;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/Level;

    .line 3
    new-instance v2, Lcom/tebakgambar/model/Versioning;

    invoke-direct {v2}, Lcom/tebakgambar/model/Versioning;-><init>()V

    .line 4
    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    iput v1, v2, Lcom/tebakgambar/model/Versioning;->levelId:I

    const/4 v1, 0x0

    .line 5
    iput v1, v2, Lcom/tebakgambar/model/Versioning;->downloadedVersion:I

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_25
    return-object v0
.end method
