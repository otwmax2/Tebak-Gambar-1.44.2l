###### Class com.tebakgambar.model.Event2 (com.tebakgambar.model.Event2)
.class public Lcom/tebakgambar/model/Event2;
.super Ljava/lang/Object;
.source "Event2.java"


# instance fields
.field public custom_banner:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/CustomBanner;",
            ">;"
        }
    .end annotation
.end field

.field public duel_gambar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/ResultDuelGambar;",
            ">;"
        }
    .end annotation
.end field

.field public event:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/ResultEvents;",
            ">;"
        }
    .end annotation
.end field

.field public event_clue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/ResultEventClue;",
            ">;"
        }
    .end annotation
.end field

.field public nativeIndex:I
    .annotation runtime Lb7/c;
        value = "native_index"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstEvent()Lcom/tebakgambar/model/BaseEvent;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Event2;->event:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/model/Event2;->event:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/BaseEvent;

    return-object v0

    .line 3
    :cond_14
    iget-object v0, p0, Lcom/tebakgambar/model/Event2;->event_clue:Ljava/util/ArrayList;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/model/Event2;->event_clue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/BaseEvent;

    return-object v0

    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method
