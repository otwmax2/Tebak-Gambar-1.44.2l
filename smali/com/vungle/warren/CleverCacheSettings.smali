###### Class com.vungle.warren.CleverCacheSettings (com.vungle.warren.CleverCacheSettings)
.class public Lcom/vungle/warren/CleverCacheSettings;
.super Ljava/lang/Object;
.source "CleverCacheSettings.java"


# instance fields
.field private final a:Z
    .annotation runtime Lb7/c;
        value = "enabled"
    .end annotation
.end field

.field private final b:J
    .annotation runtime Lb7/c;
        value = "clear_shared_cache_timestamp"
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZJ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/vungle/warren/CleverCacheSettings;->a:Z

    .line 3
    iput-wide p2, p0, Lcom/vungle/warren/CleverCacheSettings;->b:J

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/vungle/warren/CleverCacheSettings;
    .registers 4

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
    .catch Lcom/google/gson/u; {:try_start_4 .. :try_end_15} :catch_1a

    .line 2
    invoke-static {p0}, Lcom/vungle/warren/CleverCacheSettings;->fromJson(Lcom/google/gson/o;)Lcom/vungle/warren/CleverCacheSettings;

    move-result-object p0

    return-object p0

    :catch_1a
    return-object v0
.end method

.method public static fromJson(Lcom/google/gson/o;)Lcom/vungle/warren/CleverCacheSettings;
    .registers 6

    const-string v0, "clear_shared_cache_timestamp"

    const-string v1, "clever_cache"

    .line 1
    invoke-static {p0, v1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object p0

    .line 3
    :try_start_13
    invoke-virtual {p0, v0}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->n()J

    move-result-wide v0
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_21} :catch_23

    move-wide v2, v0

    goto :goto_24

    :catch_23
    nop

    :cond_24
    :goto_24
    const-string v0, "enabled"

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/l;->s()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object p0

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 v4, 0x0

    .line 8
    :cond_43
    new-instance p0, Lcom/vungle/warren/CleverCacheSettings;

    invoke-direct {p0, v4, v2, v3}, Lcom/vungle/warren/CleverCacheSettings;-><init>(ZJ)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 2
    :cond_12
    check-cast p1, Lcom/vungle/warren/CleverCacheSettings;

    .line 3
    iget-boolean v2, p0, Lcom/vungle/warren/CleverCacheSettings;->a:Z

    iget-boolean v3, p1, Lcom/vungle/warren/CleverCacheSettings;->a:Z

    if-eq v2, v3, :cond_1b

    return v1

    .line 4
    :cond_1b
    iget-wide v2, p0, Lcom/vungle/warren/CleverCacheSettings;->b:J

    iget-wide v4, p1, Lcom/vungle/warren/CleverCacheSettings;->b:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0

    :cond_26
    :goto_26
    return v1
.end method

.method public getTimestamp()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/CleverCacheSettings;->b:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/CleverCacheSettings;->a:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lcom/vungle/warren/CleverCacheSettings;->b:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/CleverCacheSettings;->a:Z

    return v0
.end method

.method public serializeToString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 2
    new-instance v1, Lcom/google/gson/g;

    invoke-direct {v1}, Lcom/google/gson/g;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/gson/f;->z(Ljava/lang/Object;)Lcom/google/gson/l;

    move-result-object v1

    const-string v2, "clever_cache"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/l;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
