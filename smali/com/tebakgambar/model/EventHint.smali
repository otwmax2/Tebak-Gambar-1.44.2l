###### Class com.tebakgambar.model.EventHint (com.tebakgambar.model.EventHint)
.class public Lcom/tebakgambar/model/EventHint;
.super Ljava/lang/Object;
.source "EventHint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/model/EventHint$SaveData;
    }
.end annotation


# static fields
.field public static final KEY_EVENT_HINT:Ljava/lang/String; = "event-hint"


# instance fields
.field private _saveData:Lcom/tebakgambar/model/EventHint$SaveData;

.field private answer:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private gson:Lcom/google/gson/f;

.field private soalId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/model/EventHint;->gson:Lcom/google/gson/f;

    .line 3
    iput-object p1, p0, Lcom/tebakgambar/model/EventHint;->eventId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/tebakgambar/model/EventHint;->soalId:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/tebakgambar/model/EventHint;->answer:Ljava/lang/String;

    return-void
.end method

.method private getCurrentSaveData()Lcom/tebakgambar/model/EventHint$SaveData;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/EventHint;->_saveData:Lcom/tebakgambar/model/EventHint$SaveData;

    if-nez v0, :cond_63

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const-string v1, "event-hint"

    invoke-static {v0, v1}, Ly8/y;->L(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 3
    :try_start_10
    iget-object v1, p0, Lcom/tebakgambar/model/EventHint;->gson:Lcom/google/gson/f;

    const-class v2, Lcom/tebakgambar/model/EventHint$SaveData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/EventHint$SaveData;

    .line 4
    iget-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData;->eventId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tebakgambar/model/EventHint;->eventId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 5
    iput-object v0, p0, Lcom/tebakgambar/model/EventHint;->_saveData:Lcom/tebakgambar/model/EventHint$SaveData;

    goto :goto_63

    .line 6
    :cond_27
    new-instance v0, Lcom/tebakgambar/model/EventHint$SaveData;

    invoke-direct {v0}, Lcom/tebakgambar/model/EventHint$SaveData;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/model/EventHint;->_saveData:Lcom/tebakgambar/model/EventHint$SaveData;

    .line 7
    iget-object v1, p0, Lcom/tebakgambar/model/EventHint;->eventId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData;->eventId:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData;->hints:Ljava/util/ArrayList;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_39} :catch_3a

    goto :goto_63

    :catch_3a
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    new-instance v0, Lcom/tebakgambar/model/EventHint$SaveData;

    invoke-direct {v0}, Lcom/tebakgambar/model/EventHint$SaveData;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/model/EventHint;->_saveData:Lcom/tebakgambar/model/EventHint$SaveData;

    .line 11
    iget-object v1, p0, Lcom/tebakgambar/model/EventHint;->eventId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData;->eventId:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData;->hints:Ljava/util/ArrayList;

    goto :goto_63

    .line 13
    :cond_51
    new-instance v0, Lcom/tebakgambar/model/EventHint$SaveData;

    invoke-direct {v0}, Lcom/tebakgambar/model/EventHint$SaveData;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/model/EventHint;->_saveData:Lcom/tebakgambar/model/EventHint$SaveData;

    .line 14
    iget-object v1, p0, Lcom/tebakgambar/model/EventHint;->eventId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData;->eventId:Ljava/lang/String;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData;->hints:Ljava/util/ArrayList;

    .line 16
    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/tebakgambar/model/EventHint;->_saveData:Lcom/tebakgambar/model/EventHint$SaveData;

    return-object v0
.end method

.method private getLockedHintPosition([I)[I
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->getMaxHintLength()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_a
    iget-object v3, p0, Lcom/tebakgambar/model/EventHint;->answer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 3
    iget-object v3, p0, Lcom/tebakgambar/model/EventHint;->answer:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1d

    goto :goto_27

    .line 4
    :cond_1d
    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_27

    .line 5
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_27
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2a
    return-object v0
.end method

.method private getMaxHintLength()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/EventHint;->answer:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private getSavedDataHint()Lcom/tebakgambar/model/EventHint$SaveData$Hint;
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->getCurrentSaveData()Lcom/tebakgambar/model/EventHint$SaveData;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData;->hints:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3a

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tebakgambar/model/EventHint$SaveData$Hint;

    .line 4
    iget-object v5, v4, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->soalId:Ljava/lang/String;

    iget-object v6, p0, Lcom/tebakgambar/model/EventHint;->soalId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    return-object v4

    .line 5
    :cond_25
    new-instance v1, Lcom/tebakgambar/model/EventHint$SaveData$Hint;

    invoke-direct {v1}, Lcom/tebakgambar/model/EventHint$SaveData$Hint;-><init>()V

    .line 6
    iget-object v4, p0, Lcom/tebakgambar/model/EventHint;->soalId:Ljava/lang/String;

    iput-object v4, v1, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->soalId:Ljava/lang/String;

    .line 7
    iput v3, v1, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->chance:I

    new-array v2, v2, [I

    .line 8
    iput-object v2, v1, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->hint:[I

    .line 9
    iget-object v0, v0, Lcom/tebakgambar/model/EventHint$SaveData;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 10
    :cond_3a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData;->hints:Ljava/util/ArrayList;

    .line 11
    new-instance v1, Lcom/tebakgambar/model/EventHint$SaveData$Hint;

    invoke-direct {v1}, Lcom/tebakgambar/model/EventHint$SaveData$Hint;-><init>()V

    .line 12
    iget-object v4, p0, Lcom/tebakgambar/model/EventHint;->soalId:Ljava/lang/String;

    iput-object v4, v1, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->soalId:Ljava/lang/String;

    .line 13
    iput v3, v1, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->chance:I

    new-array v2, v2, [I

    .line 14
    iput-object v2, v1, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->hint:[I

    .line 15
    iget-object v0, v0, Lcom/tebakgambar/model/EventHint$SaveData;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private updateSaveData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/EventHint;->gson:Lcom/google/gson/f;

    iget-object v1, p0, Lcom/tebakgambar/model/EventHint;->_saveData:Lcom/tebakgambar/model/EventHint$SaveData;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    const-string v2, "event-hint"

    invoke-static {v1, v2, v0}, Ly8/y;->u0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addChance(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->getSavedDataHint()Lcom/tebakgambar/model/EventHint$SaveData$Hint;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->chance:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->chance:I

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->updateSaveData()V

    return-void
.end method

.method public addHint()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->getSavedDataHint()Lcom/tebakgambar/model/EventHint$SaveData$Hint;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->hint:[I

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->getMaxHintLength()I

    move-result v2

    .line 4
    array-length v3, v1

    if-lt v3, v2, :cond_e

    return-void

    .line 5
    :cond_e
    invoke-direct {p0, v1}, Lcom/tebakgambar/model/EventHint;->getLockedHintPosition([I)[I

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget v2, v2, v3

    .line 7
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 8
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aput v2, v1, v3

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 10
    iput-object v1, v0, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->hint:[I

    const/4 v1, -0x1

    .line 11
    iput v1, v0, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->chance:I

    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->chance:I

    .line 13
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->updateSaveData()V

    return-void
.end method

.method public currentHint()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->getSavedDataHint()Lcom/tebakgambar/model/EventHint$SaveData$Hint;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->hint:[I

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_c
    iget-object v3, p0, Lcom/tebakgambar/model/EventHint;->answer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 5
    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_2b

    iget-object v3, p0, Lcom/tebakgambar/model/EventHint;->answer:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_25

    goto :goto_2b

    :cond_25
    const-string v3, "_"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 7
    :cond_2b
    :goto_2b
    iget-object v3, p0, Lcom/tebakgambar/model/EventHint;->answer:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :goto_34
    iget-object v3, p0, Lcom/tebakgambar/model/EventHint;->answer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_43

    const-string v3, " "

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 10
    :cond_46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllHintAvailable()Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->getSavedDataHint()Lcom/tebakgambar/model/EventHint$SaveData$Hint;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->hint:[I

    array-length v0, v0

    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->getMaxHintLength()I

    move-result v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public isHintChanceEmpty()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->getSavedDataHint()Lcom/tebakgambar/model/EventHint$SaveData$Hint;

    move-result-object v0

    .line 2
    iget v0, v0, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->chance:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isNoHintAvailable()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/EventHint;->getSavedDataHint()Lcom/tebakgambar/model/EventHint$SaveData$Hint;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/tebakgambar/model/EventHint$SaveData$Hint;->hint:[I

    array-length v0, v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

###### Class com.tebakgambar.model.EventHint.SaveData (com.tebakgambar.model.EventHint$SaveData)
.class public Lcom/tebakgambar/model/EventHint$SaveData;
.super Ljava/lang/Object;
.source "EventHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/EventHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/model/EventHint$SaveData$Hint;
    }
.end annotation


# instance fields
.field eventId:Ljava/lang/String;

.field hints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/EventHint$SaveData$Hint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tebakgambar.model.EventHint.SaveData.Hint (com.tebakgambar.model.EventHint$SaveData$Hint)
.class public Lcom/tebakgambar/model/EventHint$SaveData$Hint;
.super Ljava/lang/Object;
.source "EventHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/EventHint$SaveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hint"
.end annotation


# instance fields
.field public chance:I

.field public hint:[I

.field public soalId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
