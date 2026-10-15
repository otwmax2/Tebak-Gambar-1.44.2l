###### Class com.tebakgambar.model.Homes (com.tebakgambar.model.Homes)
.class public Lcom/tebakgambar/model/Homes;
.super Ljava/lang/Object;
.source "Homes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/model/Homes$ExitPopUp;,
        Lcom/tebakgambar/model/Homes$HomeData;,
        Lcom/tebakgambar/model/Homes$Floating;,
        Lcom/tebakgambar/model/Homes$Messages;
    }
.end annotation


# instance fields
.field public exitPopUp:Lcom/tebakgambar/model/Homes$ExitPopUp;
    .annotation runtime Lb7/c;
        value = "exit_popup"
    .end annotation
.end field

.field public floating:Lcom/tebakgambar/model/Homes$Floating;

.field public forceUpdate:Lcom/tebakgambar/model/ForceUpdate;
    .annotation runtime Lb7/c;
        value = "force_update"
    .end annotation
.end field

.field public home:Lcom/tebakgambar/model/Homes$HomeData;

.field public message:Lcom/tebakgambar/model/Homes$Messages;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tebakgambar.model.Homes.ExitPopUp (com.tebakgambar.model.Homes$ExitPopUp)
.class public Lcom/tebakgambar/model/Homes$ExitPopUp;
.super Ljava/lang/Object;
.source "Homes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/Homes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExitPopUp"
.end annotation


# instance fields
.field public image:Ljava/lang/String;

.field public negative:Ljava/lang/String;

.field public positive:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tebakgambar.model.Homes.Floating (com.tebakgambar.model.Homes$Floating)
.class public Lcom/tebakgambar/model/Homes$Floating;
.super Ljava/lang/Object;
.source "Homes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/Homes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Floating"
.end annotation


# instance fields
.field public icon_url:Ljava/lang/String;

.field public id:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tebakgambar.model.Homes.HomeData (com.tebakgambar.model.Homes$HomeData)
.class public Lcom/tebakgambar/model/Homes$HomeData;
.super Ljava/lang/Object;
.source "Homes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/Homes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeData"
.end annotation


# instance fields
.field public background:Ljava/lang/String;

.field public color:Ljava/lang/String;

.field public deeplink:Ljava/lang/String;

.field public end_date:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tebakgambar.model.Homes.Messages (com.tebakgambar.model.Homes$Messages)
.class public Lcom/tebakgambar/model/Homes$Messages;
.super Ljava/lang/Object;
.source "Homes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/Homes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Messages"
.end annotation


# instance fields
.field public end_date:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
