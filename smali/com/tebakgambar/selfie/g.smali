###### Class com.tebakgambar.selfie.g (com.tebakgambar.selfie.g)
.class public Lcom/tebakgambar/selfie/g;
.super Landroidx/lifecycle/g0;
.source "EditFrameViewModel.java"


# instance fields
.field r:Lcom/tebakgambar/model/BaseEvent;

.field s:I

.field t:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/g0;-><init>()V

    return-void
.end method


# virtual methods
.method j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->extra_hashtag:Ljava/lang/String;

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method
