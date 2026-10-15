###### Class com.tebakgambar.model.ComingSoon (com.tebakgambar.model.ComingSoon)
.class public Lcom/tebakgambar/model/ComingSoon;
.super Ljava/lang/Object;
.source "ComingSoon.java"


# static fields
.field private static final ONE_DAY_MILLIS:J = 0x5265c00L

.field private static final ONE_WEEK_MILLIS:J = 0x240c8400L

.field private static final dateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field public pending:Lcom/tebakgambar/model/DialogModel;
    .annotation runtime Lb7/c;
        value = "Pending"
    .end annotation
.end field

.field public release:Lcom/tebakgambar/model/DialogModel;
    .annotation runtime Lb7/c;
        value = "Release"
    .end annotation
.end field

.field public releaseLocalNotification:Lcom/tebakgambar/model/TimedDialogModel;
    .annotation runtime Lb7/c;
        value = "ReleaseLocalNotif"
    .end annotation
.end field

.field public releaseTimeStamp:J
    .annotation runtime Lb7/c;
        value = "ReleaseDate"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tebakgambar/model/ComingSoon;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayReleaseBackground()I
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/tebakgambar/model/ComingSoon;->releaseTimeStamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v4, v0, v2

    if-ltz v4, :cond_12

    const v0, 0x7f08007b

    return v0

    :cond_12
    const v0, 0x7f08007c

    return v0
.end method

.method public displayReleaseMessage()Ljava/lang/String;
    .registers 7

    .line 1
    iget-wide v0, p0, Lcom/tebakgambar/model/ComingSoon;->releaseTimeStamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1c

    .line 2
    sget-object v0, Lcom/tebakgambar/model/ComingSoon;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/tebakgambar/model/ComingSoon;->releaseTimeStamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x5265c00

    .line 3
    div-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 4
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const v2, 0x7f1201ad

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidLocalNotification()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/ComingSoon;->releaseLocalNotification:Lcom/tebakgambar/model/TimedDialogModel;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/tebakgambar/model/TimedDialogModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
