###### Class n8.c (n8.c)
.class public abstract Ln8/c;
.super Ljava/lang/Object;
.source "SliderDao.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Slider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Lcom/tebakgambar/model/Slider;
.end method

.method public abstract c(I)Lcom/tebakgambar/model/Slider;
.end method

.method public abstract d(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Slider;",
            ">;)V"
        }
    .end annotation
.end method
