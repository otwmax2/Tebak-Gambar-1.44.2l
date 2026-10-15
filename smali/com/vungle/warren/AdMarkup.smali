###### Class com.vungle.warren.AdMarkup (com.vungle.warren.AdMarkup)
.class public final Lcom/vungle/warren/AdMarkup;
.super Ljava/lang/Object;
.source "AdMarkup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:[Ljava/lang/String;

.field private final q:I


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/AdMarkup;->o:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/AdMarkup;->p:[Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/vungle/warren/AdMarkup;->q:I

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/vungle/warren/AdMarkup;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    :try_start_4
    new-instance v1, Lcom/google/gson/g;

    invoke-direct {v1}, Lcom/google/gson/g;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v1

    const-class v2, Lcom/google/gson/o;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/o;
    :try_end_15
    .catch Lcom/google/gson/u; {:try_start_4 .. :try_end_15} :catch_69

    if-nez p0, :cond_18

    return-object v0

    :cond_18
    const-string v1, "impression"

    .line 2
    invoke-static {p0, v1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/gson/o;->B(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/gson/l;->p()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v1}, Lcom/google/gson/l;->k()Lcom/google/gson/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/i;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/l;

    .line 7
    invoke-virtual {v3}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4b
    move-object v2, v0

    .line 8
    :cond_4c
    new-instance v1, Lcom/vungle/warren/AdMarkup;

    const-string v3, "event_id"

    .line 9
    invoke-static {p0, v3, v0}, Lcom/vungle/warren/model/JsonUtil;->getAsString(Lcom/google/gson/l;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_5f

    new-array v0, v4, [Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_5f
    const-string v2, "version"

    .line 11
    invoke-static {p0, v2, v4}, Lcom/vungle/warren/model/JsonUtil;->getAsInt(Lcom/google/gson/l;Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v1, v3, v0, p0}, Lcom/vungle/warren/AdMarkup;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v1

    :catch_69
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_22

    .line 1
    const-class v2, Lcom/vungle/warren/AdMarkup;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_22

    .line 2
    :cond_10
    check-cast p1, Lcom/vungle/warren/AdMarkup;

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/AdMarkup;->o:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/AdMarkup;->o:Ljava/lang/String;

    if-eqz v2, :cond_1d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_21

    :cond_1d
    if-nez p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    :goto_22
    return v1
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdMarkup;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getImpression()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdMarkup;->p:[Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/AdMarkup;->q:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdMarkup;->o:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdMarkup{eventId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdMarkup;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", impression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdMarkup;->p:[Ljava/lang/String;

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/AdMarkup;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
