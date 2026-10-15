###### Class com.vungle.warren.model.VisionData (com.vungle.warren.model.VisionData)
.class public Lcom/vungle/warren/model/VisionData;
.super Ljava/lang/Object;
.source "VisionData.java"


# instance fields
.field public advertiser:Ljava/lang/String;

.field public campaign:Ljava/lang/String;

.field public creative:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/vungle/warren/model/VisionData;->timestamp:J

    .line 3
    iput-object p3, p0, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_51

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_51

    .line 2
    :cond_12
    check-cast p1, Lcom/vungle/warren/model/VisionData;

    .line 3
    iget-wide v2, p0, Lcom/vungle/warren/model/VisionData;->timestamp:J

    iget-wide v4, p1, Lcom/vungle/warren/model/VisionData;->timestamp:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1d

    return v1

    .line 4
    :cond_1d
    iget-object v2, p0, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v3, p1, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_2e

    :cond_2a
    iget-object v2, p1, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    if-eqz v2, :cond_2f

    :goto_2e
    return v1

    .line 5
    :cond_2f
    iget-object v2, p0, Lcom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v3, p1, Lcom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_40

    :cond_3c
    iget-object v2, p1, Lcom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    if-eqz v2, :cond_41

    :goto_40
    return v1

    .line 6
    :cond_41
    iget-object v2, p0, Lcom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    if-eqz v2, :cond_4c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_50

    :cond_4c
    if-nez p1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    return v0

    :cond_51
    :goto_51
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/model/VisionData;->timestamp:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2d
    add-int/2addr v1, v2

    return v1
.end method
