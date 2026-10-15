###### Class com.tebakgambar.model.QuestionSavedData (com.tebakgambar.model.QuestionSavedData)
.class public Lcom/tebakgambar/model/QuestionSavedData;
.super Ljava/lang/Object;
.source "QuestionSavedData.java"


# static fields
.field public static final TYPE_BIASA:Ljava/lang/String; = "biasa"

.field public static final TYPE_RAJA:Ljava/lang/String; = "raja"

.field public static final TYPE_RECEH:Ljava/lang/String; = "receh"


# instance fields
.field private _type:Ljava/lang/String;

.field public globalIndex:I

.field public isBoss:Z

.field public isCheckPoint:Z

.field public isReceh:Z

.field public open:Z

.field public order:I

.field public solved:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toSavedData(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/QuestionSavedData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/QuestionSavedData;

    const-string v2, "#"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v2, v1, Lcom/tebakgambar/model/QuestionSavedData;->globalIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, v1, Lcom/tebakgambar/model/QuestionSavedData;->open:Z

    if-eqz v1, :cond_26

    const-string v1, "-true"

    goto :goto_28

    :cond_26
    const-string v1, "-false"

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_2c
    const/4 p0, 0x1

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/QuestionSavedData;->_type:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 2
    iget-boolean v0, p0, Lcom/tebakgambar/model/QuestionSavedData;->isReceh:Z

    if-eqz v0, :cond_d

    const-string v0, "receh"

    .line 3
    iput-object v0, p0, Lcom/tebakgambar/model/QuestionSavedData;->_type:Ljava/lang/String;

    goto :goto_1f

    .line 4
    :cond_d
    iget-boolean v0, p0, Lcom/tebakgambar/model/QuestionSavedData;->isBoss:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/tebakgambar/model/QuestionSavedData;->isCheckPoint:Z

    if-eqz v0, :cond_16

    goto :goto_1b

    :cond_16
    const-string v0, "biasa"

    .line 5
    iput-object v0, p0, Lcom/tebakgambar/model/QuestionSavedData;->_type:Ljava/lang/String;

    goto :goto_1f

    :cond_1b
    :goto_1b
    const-string v0, "raja"

    .line 6
    iput-object v0, p0, Lcom/tebakgambar/model/QuestionSavedData;->_type:Ljava/lang/String;

    .line 7
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/tebakgambar/model/QuestionSavedData;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public isHintAvailable()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/model/QuestionSavedData;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "biasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/tebakgambar/model/QuestionSavedData;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "receh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public isUsingTimer()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/model/QuestionSavedData;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
