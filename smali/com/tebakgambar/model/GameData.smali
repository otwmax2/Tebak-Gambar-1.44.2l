###### Class com.tebakgambar.model.GameData (com.tebakgambar.model.GameData)
.class public Lcom/tebakgambar/model/GameData;
.super Ljava/lang/Object;
.source "GameData.java"


# instance fields
.field public data:Ljava/lang/String;

.field public lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

.field public life:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v1

    invoke-virtual {v1}, Lm8/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/GameData;->life:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/tebakgambar/model/request/LevelStructure2;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/request/LevelStructure2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tebakgambar/model/GameData;->lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/tebakgambar/model/GameData;->data:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/tebakgambar/model/GameData;->decode()V

    return-void
.end method

.method private decode()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/GameData;->data:Ljava/lang/String;

    const-string v1, "d78034b1630c3659076765d354111c3a1f5410372d14b5539234411a3e74b86b7b76d93cc"

    invoke-static {v0, v1}, Ly8/y;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/tebakgambar/model/GameData;->life:Ljava/lang/String;

    .line 4
    new-instance v1, Lcom/google/gson/f;

    invoke-direct {v1}, Lcom/google/gson/f;-><init>()V

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const-class v2, Lcom/tebakgambar/model/request/LevelStructure2;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/request/LevelStructure2;

    iput-object v0, p0, Lcom/tebakgambar/model/GameData;->lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

    return-void
.end method


# virtual methods
.method public toGameToken()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "#0#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tebakgambar/model/GameData;->life:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tebakgambar/model/GameData;->lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

    .line 5
    invoke-virtual {v1}, Lcom/tebakgambar/model/request/LevelStructure2;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ly8/y;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/GameData;->data:Ljava/lang/String;

    return-object v0
.end method
