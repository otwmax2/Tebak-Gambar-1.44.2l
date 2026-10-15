###### Class com.vungle.warren.model.JsonUtil (com.vungle.warren.model.JsonUtil)
.class public Lcom/vungle/warren/model/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsBoolean(Lcom/google/gson/l;Ljava/lang/String;Z)Z
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/l;->c()Z

    move-result p0

    return p0

    :cond_13
    return p2
.end method

.method public static getAsInt(Lcom/google/gson/l;Ljava/lang/String;I)I
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/l;->j()I

    move-result p0

    return p0

    :cond_13
    return p2
.end method

.method public static getAsObject(Lcom/google/gson/l;Ljava/lang/String;)Lcom/google/gson/o;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAsString(Lcom/google/gson/l;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    return-object p2
.end method

.method public static hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/l;->q()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Lcom/google/gson/l;->r()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2b

    .line 2
    :cond_10
    invoke-virtual {p0}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/l;->q()Z

    move-result p0

    if-nez p0, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    :goto_2b
    return v0
.end method
