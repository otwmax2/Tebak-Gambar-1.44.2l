###### Class com.tebakgambar.model.Level (com.tebakgambar.model.Level)
.class public Lcom/tebakgambar/model/Level;
.super Ljava/lang/Object;
.source "Level.java"


# static fields
.field private static final CHECKPOINT:I = 0xa

.field private static final CHECKPOINT_LEVEL_START:I = 0xb

.field private static final PREF_NAME:Ljava/lang/String; = "tg.level.pref"


# instance fields
.field public achievementId:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "AchievementID"
    .end annotation
.end field

.field public backgroundColor:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "BackgroundColor"
    .end annotation
.end field

.field public color:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "Color"
    .end annotation
.end field

.field public comingSoon:Lcom/tebakgambar/model/ComingSoon;
    .annotation runtime Lb7/c;
        value = "ComingSoon"
    .end annotation
.end field

.field public frameUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "FrameURL"
    .end annotation
.end field

.field public iconUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "IconURL"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lb7/c;
        value = "SoalRegulerID"
    .end annotation
.end field

.field public indexSoal:Ljava/lang/String;

.field public quotes:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "Quotes"
    .end annotation
.end field

.field public sliderId:I
    .annotation runtime Lb7/c;
        value = "SliderID"
    .end annotation
.end field

.field public soalRecehIds:[I
    .annotation runtime Lb7/c;
        value = "SoalRecehIDs"
    .end annotation
.end field

.field public status:Z

.field public subtitle:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "Subtitle"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "Title"
    .end annotation
.end field

.field public version:I
    .annotation runtime Lb7/c;
        value = "Version"
    .end annotation
.end field

.field public zipLevelUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "ZipLevelURL"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAll()V
    .registers 0

    .line 1
    invoke-static {}, Ly8/h;->d()V

    return-void
.end method

.method public static fromGlobalIndex(I)Lcom/tebakgambar/model/Level;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/model/Level;->getLevelIdByGlobalIndex(I)I

    move-result p0

    invoke-static {p0}, Lcom/tebakgambar/model/Level;->fromId(I)Lcom/tebakgambar/model/Level;

    move-result-object p0

    return-object p0
.end method

.method public static fromId(I)Lcom/tebakgambar/model/Level;
    .registers 2

    .line 1
    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln8/a;->c(I)Lcom/tebakgambar/model/Level;

    move-result-object p0

    return-object p0
.end method

.method public static getAllLevels()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object v0

    invoke-virtual {v0}, Ln8/a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultLevels()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation

    const-string v0, "default_level.json"

    .line 1
    invoke-static {v0}, Ly8/y;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/gson/f;

    invoke-direct {v1}, Lcom/google/gson/f;-><init>()V

    .line 3
    const-class v2, Lcom/tebakgambar/model/response/ApiResponse2;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/response/ApiResponse2;

    .line 4
    iget-object v0, v0, Lcom/tebakgambar/model/response/ApiResponse2;->data:Ljava/util/List;

    return-object v0
.end method

.method public static getLevelFolderNameByGlobalIndex(I)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-level-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tebakgambar/model/Level;->getLevelIdByGlobalIndex(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLevelIdByGlobalIndex(I)I
    .registers 1

    .line 1
    div-int/lit8 p0, p0, 0x14

    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public endLevelQuote()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tebakgambar/model/Level;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    const v2, 0x7f1201a5

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateLevelIfNeeded(Landroid/content/Context;)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {p1, v0}, Ly8/y;->G(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->d()Lcom/tebakgambar/model/GameData;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/tebakgambar/model/Level;->id:I

    add-int/lit8 v2, v1, -0x1

    mul-int/lit8 v2, v2, 0x14

    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v3, v3, 0x14

    add-int/lit8 v3, v3, 0x13

    iget-object v0, v0, Lcom/tebakgambar/model/GameData;->lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

    iget v0, v0, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    if-le v0, v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    invoke-static {v2, v3, v0}, Ly8/y;->p(IIZ)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {p1, v1, v0}, Ly8/y;->q0(Landroid/content/Context;ILjava/lang/String;)V

    :cond_34
    return-void
.end method

.method public getBackgroundColor(Landroid/content/Context;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tebakgambar/model/Level;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_20

    return p1

    :catch_20
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColor()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tebakgambar/model/Level;->color:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_20

    return v0

    :catch_20
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    const/4 v0, -0x1

    return v0
.end method

.method public getDefaultIconResource(Landroid/content/Context;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tebakgambar/model/Level;->getIconResourceString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFrameResource(Landroid/content/Context;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tebakgambar/model/Level;->getFrameResourceString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFrameResourceString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawable/level_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawable/ic_sigam_level_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tebakgambar/model/Level;->id:I

    rem-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevelFolderName()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-level-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextQuestionSavedData(I)Lcom/tebakgambar/model/QuestionSavedData;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/model/Level;->getQuestionSavedData()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/model/QuestionSavedData;

    .line 3
    iget v3, v2, Lcom/tebakgambar/model/QuestionSavedData;->globalIndex:I

    if-ne v3, p1, :cond_1b

    const/4 v1, 0x1

    goto :goto_9

    :cond_1b
    if-eqz v1, :cond_9

    return-object v2

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getQuestionSavedData(I)Lcom/tebakgambar/model/QuestionSavedData;
    .registers 5

    .line 17
    invoke-virtual {p0}, Lcom/tebakgambar/model/Level;->getQuestionSavedData()Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/QuestionSavedData;

    .line 19
    iget v2, v1, Lcom/tebakgambar/model/QuestionSavedData;->globalIndex:I

    if-ne v2, p1, :cond_8

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getQuestionSavedData()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/QuestionSavedData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    iget v1, p0, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {v0, v1}, Ly8/y;->G(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_17
    array-length v4, v0

    if-ge v3, v4, :cond_7e

    .line 5
    aget-object v4, v0, v3

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/tebakgambar/model/QuestionSavedData;

    invoke-direct {v5}, Lcom/tebakgambar/model/QuestionSavedData;-><init>()V

    .line 7
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/tebakgambar/model/QuestionSavedData;->globalIndex:I

    add-int/lit8 v6, v3, 0x1

    .line 8
    iput v6, v5, Lcom/tebakgambar/model/QuestionSavedData;->order:I

    const/4 v7, 0x1

    .line 9
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v5, Lcom/tebakgambar/model/QuestionSavedData;->open:Z

    .line 10
    array-length v4, v0

    sub-int/2addr v4, v7

    if-ne v3, v4, :cond_4a

    const/4 v4, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v4, 0x0

    :goto_4b
    iput-boolean v4, v5, Lcom/tebakgambar/model/QuestionSavedData;->isBoss:Z

    .line 11
    iget v4, v5, Lcom/tebakgambar/model/QuestionSavedData;->globalIndex:I

    invoke-virtual {p0, v4}, Lcom/tebakgambar/model/Level;->isRecehQuestion(I)Z

    move-result v4

    iput-boolean v4, v5, Lcom/tebakgambar/model/QuestionSavedData;->isReceh:Z

    .line 12
    iget v4, v5, Lcom/tebakgambar/model/QuestionSavedData;->order:I

    const/16 v8, 0xb

    if-ne v4, v8, :cond_69

    iget v4, p0, Lcom/tebakgambar/model/Level;->id:I

    if-lt v4, v8, :cond_69

    add-int/lit8 v4, v3, -0x1

    .line 13
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tebakgambar/model/QuestionSavedData;

    iput-boolean v7, v4, Lcom/tebakgambar/model/QuestionSavedData;->isCheckPoint:Z

    .line 14
    :cond_69
    iget-boolean v4, v5, Lcom/tebakgambar/model/QuestionSavedData;->open:Z

    if-eqz v4, :cond_79

    if-lez v3, :cond_79

    add-int/lit8 v3, v3, -0x1

    .line 15
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tebakgambar/model/QuestionSavedData;

    iput-boolean v7, v3, Lcom/tebakgambar/model/QuestionSavedData;->solved:Z

    .line 16
    :cond_79
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_17

    :cond_7e
    return-object v1
.end method

.method public getTemporaryDownloadFileName()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-level-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSelfieLevel()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/tebakgambar/model/Level;->id:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isAvailable()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/model/Level;->isDefaultLevelAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/tebakgambar/model/Level;->isDownloadedLevelAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isDefaultLevelAvailable()Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "level/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tebakgambar/model/Level;->getLevelFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_29

    const/16 v2, 0x14

    if-lt v1, v2, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0

    :catch_29
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public isDownloadedLevelAvailable()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tebakgambar/model/Level;->getLevelFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/h;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public isLocked()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    invoke-static {v1}, Ly8/y;->s(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isNew()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    iget v1, p0, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {v0, v1}, Ly8/y;->X(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public isRecehQuestion(I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Level;->soalRecehIds:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_12

    aget v4, v0, v3

    if-ne v4, p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    return v1
.end method

.method public isSpecial()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Level;->subtitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUpcomingLevel()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-wide v2, v0, Lcom/tebakgambar/model/ComingSoon;->releaseTimeStamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public isValidLocalNotification()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/tebakgambar/model/ComingSoon;->isValidLocalNotification()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setSlideAlredyShown()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const-string v1, "tg.level.pref"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slider-shown-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tebakgambar/model/Level;->sliderId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shouldShowSlider()Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/tebakgambar/model/Level;->sliderId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const-string v2, "tg.level.pref"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slider-shown-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tebakgambar/model/Level;->sliderId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_33
    return v1
.end method
