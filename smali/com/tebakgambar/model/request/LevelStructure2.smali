###### Class com.tebakgambar.model.request.LevelStructure2 (com.tebakgambar.model.request.LevelStructure2)
.class public Lcom/tebakgambar/model/request/LevelStructure2;
.super Ljava/lang/Object;
.source "LevelStructure2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;
    }
.end annotation


# instance fields
.field public hint:I

.field public level:I
    .annotation runtime Lb7/c;
        value = "last_level"
    .end annotation
.end field

.field public savedData:Ljava/util/List;
    .annotation runtime Lb7/c;
        value = "saved_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    :try_start_4
    invoke-static {p1}, Ly8/y;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tebakgambar/model/request/LevelStructure2;->level:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_11

    .line 3
    :catch_f
    iput v0, p0, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    .line 4
    :goto_11
    :try_start_11
    iget v1, p0, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    invoke-static {p1, v1}, Ly8/y;->A(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tebakgambar/model/request/LevelStructure2;->hint:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_1e

    goto :goto_21

    :catch_1e
    const/4 v1, 0x5

    .line 5
    iput v1, p0, Lcom/tebakgambar/model/request/LevelStructure2;->hint:I

    .line 6
    :goto_21
    iget v1, p0, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    invoke-static {p1, v1}, Ly8/y;->G(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/tebakgambar/model/request/LevelStructure2;->isValidLevelData(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 8
    iget p1, p0, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x14

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x14

    add-int/lit8 p1, p1, 0x13

    invoke-static {v1, p1}, Ly8/y;->o(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/model/request/LevelStructure2;->listLevelToSavedData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/request/LevelStructure2;->savedData:Ljava/util/List;

    goto :goto_49

    .line 9
    :cond_43
    invoke-static {p1}, Lcom/tebakgambar/model/request/LevelStructure2;->listLevelToSavedData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/request/LevelStructure2;->savedData:Ljava/util/List;

    :goto_49
    return-void
.end method

.method public static isValidLevelData(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1f

    const-string v0, "true"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_12
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const/16 v0, 0x14

    if-ne p0, v0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method private static listLevelToSavedData(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "#"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_36

    aget-object v4, p0, v3

    const-string v5, "-"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 6
    aget-object v4, v4, v6

    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 7
    new-instance v6, Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;

    invoke-direct {v6}, Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;-><init>()V

    .line 8
    iput v5, v6, Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;->id:I

    .line 9
    iput-boolean v4, v6, Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;->open:Z

    .line 10
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_36
    return-object v0
.end method

.method private static savedDataToListLevel(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;",
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

    const-string v2, "#"

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;

    .line 3
    iget v3, v1, Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, v1, Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;->open:Z

    if-eqz v1, :cond_28

    const-string v1, "true"

    goto :goto_2a

    :cond_28
    const-string v1, "false"

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 7
    :cond_31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_3a

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 9
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getListLevel()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/request/LevelStructure2;->savedData:Ljava/util/List;

    invoke-static {v0}, Lcom/tebakgambar/model/request/LevelStructure2;->savedDataToListLevel(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setListLevel(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/tebakgambar/model/request/LevelStructure2;->listLevelToSavedData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/request/LevelStructure2;->savedData:Ljava/util/List;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.tebakgambar.model.request.LevelStructure2.SavedDataItem (com.tebakgambar.model.request.LevelStructure2$SavedDataItem)
.class public Lcom/tebakgambar/model/request/LevelStructure2$SavedDataItem;
.super Ljava/lang/Object;
.source "LevelStructure2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/request/LevelStructure2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedDataItem"
.end annotation


# instance fields
.field public id:I

.field public open:Z
    .annotation runtime Lb7/c;
        value = "opened"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
