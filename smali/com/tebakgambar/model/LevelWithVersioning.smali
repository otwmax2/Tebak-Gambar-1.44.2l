###### Class com.tebakgambar.model.LevelWithVersioning (com.tebakgambar.model.LevelWithVersioning)
.class public Lcom/tebakgambar/model/LevelWithVersioning;
.super Ljava/lang/Object;
.source "LevelWithVersioning.java"


# instance fields
.field public level:Lcom/tebakgambar/model/Level;

.field public versioning:Lcom/tebakgambar/model/Versioning;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllOutdatedLevelIds(Ljava/util/List;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/LevelWithVersioning;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/model/LevelWithVersioning;

    .line 4
    invoke-virtual {v2}, Lcom/tebakgambar/model/LevelWithVersioning;->isNeedToUpdate()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5
    iget-object v2, v2, Lcom/tebakgambar/model/LevelWithVersioning;->level:Lcom/tebakgambar/model/Level;

    iget v2, v2, Lcom/tebakgambar/model/Level;->id:I

    if-lt v2, p1, :cond_2e

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 7
    :cond_2e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 8
    :cond_36
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public isNeedToUpdate()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/model/LevelWithVersioning;->isOutdated()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/tebakgambar/model/LevelWithVersioning;->level:Lcom/tebakgambar/model/Level;

    invoke-virtual {v0}, Lcom/tebakgambar/model/Level;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public isOutdated()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LevelWithVersioning;->level:Lcom/tebakgambar/model/Level;

    iget v0, v0, Lcom/tebakgambar/model/Level;->version:I

    iget-object v1, p0, Lcom/tebakgambar/model/LevelWithVersioning;->versioning:Lcom/tebakgambar/model/Versioning;

    iget v1, v1, Lcom/tebakgambar/model/Versioning;->downloadedVersion:I

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public syncronizeVersion()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/LevelWithVersioning;->versioning:Lcom/tebakgambar/model/Versioning;

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/model/LevelWithVersioning;->level:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->version:I

    iput v1, v0, Lcom/tebakgambar/model/Versioning;->downloadedVersion:I

    .line 3
    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln8/a;->k(Lcom/tebakgambar/model/Versioning;)V

    return-void
.end method
