###### Class com.tebakgambar.levelselection.LevelLoadingActivity$$ExtraInjector (com.tebakgambar.levelselection.LevelLoadingActivity$$ExtraInjector)
.class public Lcom/tebakgambar/levelselection/LevelLoadingActivity$$ExtraInjector;
.super Ljava/lang/Object;
.source "LevelLoadingActivity$$ExtraInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Ly2/a$b;Lcom/tebakgambar/levelselection/LevelLoadingActivity;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "level"

    .line 1
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->level:I

    return-void

    .line 3
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required extra with key \'level\' for field \'level\' was not found. If this extra is optional add \'@Nullable\' annotation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
