###### Class com.tebakgambar.tutorial.ClueEventTutorialActivity$$ExtraInjector (com.tebakgambar.tutorial.ClueEventTutorialActivity$$ExtraInjector)
.class public Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$$ExtraInjector;
.super Ljava/lang/Object;
.source "ClueEventTutorialActivity$$ExtraInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Ly2/a$b;Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "clueEvent"

    .line 1
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 2
    check-cast p0, Lcom/tebakgambar/model/ResultEventClue;

    iput-object p0, p1, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->clueEvent:Lcom/tebakgambar/model/ResultEventClue;

    return-void

    .line 3
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required extra with key \'clueEvent\' for field \'clueEvent\' was not found. If this extra is optional add \'@Nullable\' annotation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
