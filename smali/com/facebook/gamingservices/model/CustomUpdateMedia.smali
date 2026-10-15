###### Class com.facebook.gamingservices.model.CustomUpdateMedia (com.facebook.gamingservices.model.CustomUpdateMedia)
.class public final Lcom/facebook/gamingservices/model/CustomUpdateMedia;
.super Ljava/lang/Object;
.source "CustomUpdateContent.kt"


# instance fields
.field private final gif:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

.field private final video:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/facebook/gamingservices/model/CustomUpdateMedia;-><init>(Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;ILt9/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->gif:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    .line 3
    iput-object p2, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->video:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;ILt9/g;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 4
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/facebook/gamingservices/model/CustomUpdateMedia;-><init>(Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/gamingservices/model/CustomUpdateMedia;Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;ILjava/lang/Object;)Lcom/facebook/gamingservices/model/CustomUpdateMedia;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->gif:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->video:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->copy(Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;)Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->gif:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    return-object v0
.end method

.method public final component2()Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->video:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    return-object v0
.end method

.method public final copy(Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;)Lcom/facebook/gamingservices/model/CustomUpdateMedia;
    .registers 4

    new-instance v0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    invoke-direct {v0, p1, p2}, Lcom/facebook/gamingservices/model/CustomUpdateMedia;-><init>(Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    iget-object v1, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->gif:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    iget-object v3, p1, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->gif:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    invoke-static {v1, v3}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->video:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    iget-object p1, p1, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->video:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    invoke-static {v1, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getGif()Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->gif:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    return-object v0
.end method

.method public final getVideo()Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->video:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->gif:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->video:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->gif:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    const-string v2, "url"

    if-nez v1, :cond_c

    goto :goto_1d

    .line 3
    :cond_c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {v1}, Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gif"

    .line 5
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    :goto_1d
    iget-object v1, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->video:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    if-nez v1, :cond_22

    goto :goto_33

    .line 7
    :cond_22
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 8
    invoke-virtual {v1}, Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "video"

    .line 9
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_33
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomUpdateMedia(gif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->gif:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->video:Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
