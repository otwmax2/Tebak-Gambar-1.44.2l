###### Class com.tebakgambar.howtoplay.HowToPlayActivity$$ExtraInjector (com.tebakgambar.howtoplay.HowToPlayActivity$$ExtraInjector)
.class public Lcom/tebakgambar/howtoplay/HowToPlayActivity$$ExtraInjector;
.super Ljava/lang/Object;
.source "HowToPlayActivity$$ExtraInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Ly2/a$b;Lcom/tebakgambar/howtoplay/HowToPlayActivity;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "jumpToQuiz"

    .line 1
    invoke-virtual {p0, p2, v0}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, Lcom/tebakgambar/howtoplay/HowToPlayActivity;->jumpToQuiz:Z

    :cond_10
    return-void
.end method
