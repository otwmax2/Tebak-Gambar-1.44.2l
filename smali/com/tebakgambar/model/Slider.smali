###### Class com.tebakgambar.model.Slider (com.tebakgambar.model.Slider)
.class public Lcom/tebakgambar/model/Slider;
.super Ljava/lang/Object;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/model/Slider$Image;
    }
.end annotation


# instance fields
.field public id:I
    .annotation runtime Lb7/c;
        value = "SliderID"
    .end annotation
.end field

.field public images:Ljava/util/List;
    .annotation runtime Lb7/c;
        value = "Images"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Slider$Image;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "Type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromId(I)Lcom/tebakgambar/model/Slider;
    .registers 2

    .line 1
    invoke-static {}, Lcom/tebakgambar/database/SliderDatabase;->C()Lcom/tebakgambar/database/SliderDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/database/SliderDatabase;->D()Ln8/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln8/c;->c(I)Lcom/tebakgambar/model/Slider;

    move-result-object p0

    return-object p0
.end method

###### Class com.tebakgambar.model.Slider.Image (com.tebakgambar.model.Slider$Image)
.class public Lcom/tebakgambar/model/Slider$Image;
.super Ljava/lang/Object;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Image"
.end annotation


# instance fields
.field public backgroundColor:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "BackgroundColor"
    .end annotation
.end field

.field public buttonTitle:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "TitleButton"
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "ImageURL"
    .end annotation
.end field

.field final synthetic this$0:Lcom/tebakgambar/model/Slider;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/model/Slider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/model/Slider$Image;->this$0:Lcom/tebakgambar/model/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
