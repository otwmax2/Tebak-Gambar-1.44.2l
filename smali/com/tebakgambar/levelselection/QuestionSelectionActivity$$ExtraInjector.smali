###### Class com.tebakgambar.levelselection.QuestionSelectionActivity$$ExtraInjector (com.tebakgambar.levelselection.QuestionSelectionActivity$$ExtraInjector)
.class public Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$ExtraInjector;
.super Ljava/lang/Object;
.source "QuestionSelectionActivity$$ExtraInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Ly2/a$b;Lcom/tebakgambar/levelselection/QuestionSelectionActivity;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "level"

    .line 1
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->level:I

    const-string v0, "isQuestionNotEligible"

    .line 3
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 4
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->isQuestionNotEligible:Z

    :cond_20
    return-void

    .line 5
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required extra with key \'level\' for field \'level\' was not found. If this extra is optional add \'@Nullable\' annotation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
