###### Class n8.a (n8.a)
.class public abstract Ln8/a;
.super Ljava/lang/Object;
.source "LevelDao.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(I)Lcom/tebakgambar/model/Level;
.end method

.method public abstract d(I)Lcom/tebakgambar/model/LevelWithVersioning;
.end method

.method public abstract e()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/LevelWithVersioning;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation
.end method

.method public g(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln8/a;->a()V

    .line 2
    invoke-virtual {p0, p1}, Ln8/a;->h(Ljava/util/List;)V

    .line 3
    invoke-static {p1}, Lcom/tebakgambar/model/Versioning;->getVersionings(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln8/a;->j(Ljava/util/List;)V

    return-void
.end method

.method public abstract h(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;)V"
        }
    .end annotation
.end method

.method public i(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ln8/a;->h(Ljava/util/List;)V

    .line 2
    invoke-static {p1}, Lcom/tebakgambar/model/Versioning;->getOfflineVersionings(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln8/a;->j(Ljava/util/List;)V

    return-void
.end method

.method public abstract j(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Versioning;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract k(Lcom/tebakgambar/model/Versioning;)V
.end method
