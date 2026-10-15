###### Class com.tebakgambar.question.RegularQuestionActivity$$ExtraInjector (com.tebakgambar.question.RegularQuestionActivity$$ExtraInjector)
.class public Lcom/tebakgambar/question/RegularQuestionActivity$$ExtraInjector;
.super Ljava/lang/Object;
.source "RegularQuestionActivity$$ExtraInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Ly2/a$b;Lcom/tebakgambar/question/RegularQuestionActivity;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "questionGlobalIndex"

    .line 1
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 2
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/tebakgambar/question/RegularQuestionActivity;->questionGlobalIndex:I

    :cond_10
    return-void
.end method
