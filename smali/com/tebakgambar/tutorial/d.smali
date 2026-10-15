###### Class com.tebakgambar.tutorial.d (com.tebakgambar.tutorial.d)
.class public Lcom/tebakgambar/tutorial/d;
.super Landroidx/lifecycle/a;
.source "ClueEventTutorialViewModel.java"


# instance fields
.field s:Lcom/tebakgambar/model/ResultEventClue;

.field t:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/tutorial/d;->t:Landroidx/lifecycle/t;

    return-void
.end method


# virtual methods
.method k(Lcom/tebakgambar/model/ResultEventClue;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/tutorial/d;->s:Lcom/tebakgambar/model/ResultEventClue;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/tutorial/d;->t:Landroidx/lifecycle/t;

    invoke-virtual {p1}, Lcom/tebakgambar/model/BaseEvent;->isAdBannerAvailable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method
