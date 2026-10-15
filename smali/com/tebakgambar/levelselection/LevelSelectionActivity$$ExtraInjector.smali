###### Class com.tebakgambar.levelselection.LevelSelectionActivity$$ExtraInjector (com.tebakgambar.levelselection.LevelSelectionActivity$$ExtraInjector)
.class public Lcom/tebakgambar/levelselection/LevelSelectionActivity$$ExtraInjector;
.super Ljava/lang/Object;
.source "LevelSelectionActivity$$ExtraInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Ly2/a$b;Lcom/tebakgambar/levelselection/LevelSelectionActivity;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "failedLevel"

    .line 1
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->failedLevel:I

    :cond_10
    const-string v0, "eventId"

    .line 3
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->eventId:I

    :cond_20
    const-string v0, "homeEvent"

    .line 5
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 6
    check-cast v0, Lcom/tebakgambar/model/BaseEvent;

    iput-object v0, p1, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->homeEvent:Lcom/tebakgambar/model/BaseEvent;

    :cond_2c
    const-string v0, "isLevelNotEligible"

    .line 7
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 8
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->isLevelNotEligible:Z

    :cond_3c
    return-void
.end method
