###### Class com.tebakgambar.model.CustomBanner (com.tebakgambar.model.CustomBanner)
.class public Lcom/tebakgambar/model/CustomBanner;
.super Ljava/lang/Object;
.source "CustomBanner.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public endDate:Ljava/util/Date;
    .annotation runtime Lb7/c;
        value = "end_date"
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "images_url"
    .end annotation
.end field

.field public negative:Ljava/lang/String;

.field public positive:Ljava/lang/String;

.field public startDate:Ljava/util/Date;
    .annotation runtime Lb7/c;
        value = "start_date"
    .end annotation
.end field

.field public status:I

.field public title:Ljava/lang/String;

.field public type:I

.field public webUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "web_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
